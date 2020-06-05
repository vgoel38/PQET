                                                             QUERY PLAN                                                             
------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                 +
   {                                                                                                                               +
     "Plan": {                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                   +
       "Strategy": "Plain",                                                                                                        +
       "Partial Mode": "Simple",                                                                                                   +
       "Parallel Aware": false,                                                                                                    +
       "Startup Cost": 517.18,                                                                                                     +
       "Total Cost": 517.18,                                                                                                       +
       "Plan Rows": 1,                                                                                                             +
       "Plan Width": 64,                                                                                                           +
       "Actual Startup Time": 21986.018,                                                                                           +
       "Actual Total Time": 21986.019,                                                                                             +
       "Actual Rows": 1,                                                                                                           +
       "Actual Loops": 1,                                                                                                          +
       "Shared Hit Blocks": 38645,                                                                                                 +
       "Shared Read Blocks": 3410,                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                 +
       "Shared Written Blocks": 0,                                                                                                 +
       "Local Hit Blocks": 0,                                                                                                      +
       "Local Read Blocks": 0,                                                                                                     +
       "Local Dirtied Blocks": 0,                                                                                                  +
       "Local Written Blocks": 0,                                                                                                  +
       "Temp Read Blocks": 0,                                                                                                      +
       "Temp Written Blocks": 0,                                                                                                   +
       "Plans": [                                                                                                                  +
         {                                                                                                                         +
           "Node Type": "Nested Loop",                                                                                             +
           "Parent Relationship": "Outer",                                                                                         +
           "Parallel Aware": false,                                                                                                +
           "Join Type": "Inner",                                                                                                   +
           "Startup Cost": 0.09,                                                                                                   +
           "Total Cost": 517.18,                                                                                                   +
           "Plan Rows": 1,                                                                                                         +
           "Plan Width": 27,                                                                                                       +
           "Actual Startup Time": 21985.900,                                                                                       +
           "Actual Total Time": 21985.955,                                                                                         +
           "Actual Rows": 16,                                                                                                      +
           "Actual Loops": 1,                                                                                                      +
           "Inner Unique": true,                                                                                                   +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                            +
           "Rows Removed by Join Filter": 0,                                                                                       +
           "Shared Hit Blocks": 38645,                                                                                             +
           "Shared Read Blocks": 3410,                                                                                             +
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
               "Node Type": "Nested Loop",                                                                                         +
               "Parent Relationship": "Outer",                                                                                     +
               "Parallel Aware": false,                                                                                            +
               "Join Type": "Inner",                                                                                               +
               "Startup Cost": 0.09,                                                                                               +
               "Total Cost": 517.13,                                                                                               +
               "Plan Rows": 1,                                                                                                     +
               "Plan Width": 31,                                                                                                   +
               "Actual Startup Time": 21985.855,                                                                                   +
               "Actual Total Time": 21985.879,                                                                                     +
               "Actual Rows": 16,                                                                                                  +
               "Actual Loops": 1,                                                                                                  +
               "Inner Unique": false,                                                                                              +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                      +
               "Rows Removed by Join Filter": 48,                                                                                  +
               "Shared Hit Blocks": 38644,                                                                                         +
               "Shared Read Blocks": 3410,                                                                                         +
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
                   "Node Type": "Seq Scan",                                                                                        +
                   "Parent Relationship": "Outer",                                                                                 +
                   "Parallel Aware": false,                                                                                        +
                   "Relation Name": "company_type",                                                                                +
                   "Alias": "ct",                                                                                                  +
                   "Startup Cost": 0.00,                                                                                           +
                   "Total Cost": 0.03,                                                                                             +
                   "Plan Rows": 4,                                                                                                 +
                   "Plan Width": 4,                                                                                                +
                   "Actual Startup Time": 0.009,                                                                                   +
                   "Actual Total Time": 0.013,                                                                                     +
                   "Actual Rows": 4,                                                                                               +
                   "Actual Loops": 1,                                                                                              +
                   "Shared Hit Blocks": 1,                                                                                         +
                   "Shared Read Blocks": 0,                                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                                     +
                   "Shared Written Blocks": 0,                                                                                     +
                   "Local Hit Blocks": 0,                                                                                          +
                   "Local Read Blocks": 0,                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                      +
                   "Local Written Blocks": 0,                                                                                      +
                   "Temp Read Blocks": 0,                                                                                          +
                   "Temp Written Blocks": 0                                                                                        +
                 },                                                                                                                +
                 {                                                                                                                 +
                   "Node Type": "Materialize",                                                                                     +
                   "Parent Relationship": "Inner",                                                                                 +
                   "Parallel Aware": false,                                                                                        +
                   "Startup Cost": 0.09,                                                                                           +
                   "Total Cost": 517.10,                                                                                           +
                   "Plan Rows": 1,                                                                                                 +
                   "Plan Width": 35,                                                                                               +
                   "Actual Startup Time": 1226.504,                                                                                +
                   "Actual Total Time": 5496.455,                                                                                  +
                   "Actual Rows": 16,                                                                                              +
                   "Actual Loops": 4,                                                                                              +
                   "Shared Hit Blocks": 38643,                                                                                     +
                   "Shared Read Blocks": 3410,                                                                                     +
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
                       "Node Type": "Nested Loop",                                                                                 +
                       "Parent Relationship": "Outer",                                                                             +
                       "Parallel Aware": false,                                                                                    +
                       "Join Type": "Inner",                                                                                       +
                       "Startup Cost": 0.09,                                                                                       +
                       "Total Cost": 517.10,                                                                                       +
                       "Plan Rows": 1,                                                                                             +
                       "Plan Width": 35,                                                                                           +
                       "Actual Startup Time": 4906.000,                                                                            +
                       "Actual Total Time": 21985.764,                                                                             +
                       "Actual Rows": 16,                                                                                          +
                       "Actual Loops": 1,                                                                                          +
                       "Inner Unique": true,                                                                                       +
                       "Shared Hit Blocks": 38643,                                                                                 +
                       "Shared Read Blocks": 3410,                                                                                 +
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
                           "Node Type": "Nested Loop",                                                                             +
                           "Parent Relationship": "Outer",                                                                         +
                           "Parallel Aware": false,                                                                                +
                           "Join Type": "Inner",                                                                                   +
                           "Startup Cost": 0.08,                                                                                   +
                           "Total Cost": 517.01,                                                                                   +
                           "Plan Rows": 1,                                                                                         +
                           "Plan Width": 39,                                                                                       +
                           "Actual Startup Time": 4860.880,                                                                        +
                           "Actual Total Time": 21940.433,                                                                         +
                           "Actual Rows": 16,                                                                                      +
                           "Actual Loops": 1,                                                                                      +
                           "Inner Unique": false,                                                                                  +
                           "Join Filter": "(t.id = mi.movie_id)",                                                                  +
                           "Rows Removed by Join Filter": 0,                                                                       +
                           "Shared Hit Blocks": 38582,                                                                             +
                           "Shared Read Blocks": 3407,                                                                             +
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
                               "Node Type": "Nested Loop",                                                                         +
                               "Parent Relationship": "Outer",                                                                     +
                               "Parallel Aware": false,                                                                            +
                               "Join Type": "Inner",                                                                               +
                               "Startup Cost": 0.07,                                                                               +
                               "Total Cost": 516.70,                                                                               +
                               "Plan Rows": 2,                                                                                     +
                               "Plan Width": 51,                                                                                   +
                               "Actual Startup Time": 969.374,                                                                     +
                               "Actual Total Time": 15431.754,                                                                     +
                               "Actual Rows": 1218,                                                                                +
                               "Actual Loops": 1,                                                                                  +
                               "Inner Unique": false,                                                                              +
                               "Join Filter": "(t.id = mc.movie_id)",                                                              +
                               "Rows Removed by Join Filter": 0,                                                                   +
                               "Shared Hit Blocks": 4448,                                                                          +
                               "Shared Read Blocks": 2284,                                                                         +
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
                                   "Node Type": "Nested Loop",                                                                     +
                                   "Parent Relationship": "Outer",                                                                 +
                                   "Parallel Aware": false,                                                                        +
                                   "Join Type": "Inner",                                                                           +
                                   "Startup Cost": 0.05,                                                                           +
                                   "Total Cost": 516.54,                                                                           +
                                   "Plan Rows": 1,                                                                                 +
                                   "Plan Width": 39,                                                                               +
                                   "Actual Startup Time": 938.924,                                                                 +
                                   "Actual Total Time": 13358.295,                                                                 +
                                   "Actual Rows": 60,                                                                              +
                                   "Actual Loops": 1,                                                                              +
                                   "Inner Unique": true,                                                                           +
                                   "Join Filter": "(t.kind_id = kt.id)",                                                           +
                                   "Rows Removed by Join Filter": 1,                                                               +
                                   "Shared Hit Blocks": 4298,                                                                      +
                                   "Shared Read Blocks": 2128,                                                                     +
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
                                       "Node Type": "Nested Loop",                                                                 +
                                       "Parent Relationship": "Outer",                                                             +
                                       "Parallel Aware": false,                                                                    +
                                       "Join Type": "Inner",                                                                       +
                                       "Startup Cost": 0.05,                                                                       +
                                       "Total Cost": 516.51,                                                                       +
                                       "Plan Rows": 5,                                                                             +
                                       "Plan Width": 33,                                                                           +
                                       "Actual Startup Time": 938.877,                                                             +
                                       "Actual Total Time": 13357.962,                                                             +
                                       "Actual Rows": 61,                                                                          +
                                       "Actual Loops": 1,                                                                          +
                                       "Inner Unique": true,                                                                       +
                                       "Shared Hit Blocks": 4297,                                                                  +
                                       "Shared Read Blocks": 2128,                                                                 +
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
                                           "Node Type": "Nested Loop",                                                             +
                                           "Parent Relationship": "Outer",                                                         +
                                           "Parallel Aware": false,                                                                +
                                           "Join Type": "Inner",                                                                   +
                                           "Startup Cost": 0.04,                                                                   +
                                           "Total Cost": 516.08,                                                                   +
                                           "Plan Rows": 10,                                                                        +
                                           "Plan Width": 8,                                                                        +
                                           "Actual Startup Time": 259.748,                                                         +
                                           "Actual Total Time": 7524.599,                                                          +
                                           "Actual Rows": 318,                                                                     +
                                           "Actual Loops": 1,                                                                      +
                                           "Inner Unique": true,                                                                   +
                                           "Join Filter": "(cc.status_id = cct1.id)",                                              +
                                           "Rows Removed by Join Filter": 312,                                                     +
                                           "Shared Hit Blocks": 3460,                                                              +
                                           "Shared Read Blocks": 1693,                                                             +
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
                                               "Node Type": "Nested Loop",                                                         +
                                               "Parent Relationship": "Outer",                                                     +
                                               "Parallel Aware": false,                                                            +
                                               "Join Type": "Inner",                                                               +
                                               "Startup Cost": 0.04,                                                               +
                                               "Total Cost": 516.04,                                                               +
                                               "Plan Rows": 41,                                                                    +
                                               "Plan Width": 12,                                                                   +
                                               "Actual Startup Time": 147.881,                                                     +
                                               "Actual Total Time": 7522.041,                                                      +
                                               "Actual Rows": 630,                                                                 +
                                               "Actual Loops": 1,                                                                  +
                                               "Inner Unique": false,                                                              +
                                               "Shared Hit Blocks": 3459,                                                          +
                                               "Shared Read Blocks": 1693,                                                         +
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
                                                   "Node Type": "Nested Loop",                                                     +
                                                   "Parent Relationship": "Outer",                                                 +
                                                   "Parallel Aware": false,                                                        +
                                                   "Join Type": "Inner",                                                           +
                                                   "Startup Cost": 0.03,                                                           +
                                                   "Total Cost": 514.14,                                                           +
                                                   "Plan Rows": 135,                                                               +
                                                   "Plan Width": 4,                                                                +
                                                   "Actual Startup Time": 69.152,                                                  +
                                                   "Actual Total Time": 5386.641,                                                  +
                                                   "Actual Rows": 1133,                                                            +
                                                   "Actual Loops": 1,                                                              +
                                                   "Inner Unique": false,                                                          +
                                                   "Shared Hit Blocks": 49,                                                        +
                                                   "Shared Read Blocks": 1068,                                                     +
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
                                                       "Total Cost": 24.53,                                                        +
                                                       "Plan Rows": 4,                                                             +
                                                       "Plan Width": 4,                                                            +
                                                       "Actual Startup Time": 24.537,                                              +
                                                       "Actual Total Time": 129.097,                                               +
                                                       "Actual Rows": 4,                                                           +
                                                       "Actual Loops": 1,                                                          +
                                                       "Index Cond": "(keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))",+
                                                       "Rows Removed by Index Recheck": 0,                                         +
                                                       "Shared Hit Blocks": 8,                                                     +
                                                       "Shared Read Blocks": 11,                                                   +
                                                       "Shared Dirtied Blocks": 0,                                                 +
                                                       "Shared Written Blocks": 0,                                                 +
                                                       "Local Hit Blocks": 0,                                                      +
                                                       "Local Read Blocks": 0,                                                     +
                                                       "Local Dirtied Blocks": 0,                                                  +
                                                       "Local Written Blocks": 0,                                                  +
                                                       "Temp Read Blocks": 0,                                                      +
                                                       "Temp Written Blocks": 0                                                    +
                                                     },                                                                            +
                                                     {                                                                             +
                                                       "Node Type": "Index Scan",                                                  +
                                                       "Parent Relationship": "Inner",                                             +
                                                       "Parallel Aware": false,                                                    +
                                                       "Scan Direction": "Forward",                                                +
                                                       "Index Name": "keyword_id_movie_keyword",                                   +
                                                       "Relation Name": "movie_keyword",                                           +
                                                       "Alias": "mk",                                                              +
                                                       "Startup Cost": 0.01,                                                       +
                                                       "Total Cost": 122.40,                                                       +
                                                       "Plan Rows": 39,                                                            +
                                                       "Plan Width": 8,                                                            +
                                                       "Actual Startup Time": 38.553,                                              +
                                                       "Actual Total Time": 1313.730,                                              +
                                                       "Actual Rows": 283,                                                         +
                                                       "Actual Loops": 4,                                                          +
                                                       "Index Cond": "(keyword_id = k.id)",                                        +
                                                       "Rows Removed by Index Recheck": 0,                                         +
                                                       "Shared Hit Blocks": 41,                                                    +
                                                       "Shared Read Blocks": 1057,                                                 +
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
                                                 },                                                                                +
                                                 {                                                                                 +
                                                   "Node Type": "Index Scan",                                                      +
                                                   "Parent Relationship": "Inner",                                                 +
                                                   "Parallel Aware": false,                                                        +
                                                   "Scan Direction": "Forward",                                                    +
                                                   "Index Name": "movie_id_complete_cast",                                         +
                                                   "Relation Name": "complete_cast",                                               +
                                                   "Alias": "cc",                                                                  +
                                                   "Startup Cost": 0.01,                                                           +
                                                   "Total Cost": 0.01,                                                             +
                                                   "Plan Rows": 1,                                                                 +
                                                   "Plan Width": 8,                                                                +
                                                   "Actual Startup Time": 1.390,                                                   +
                                                   "Actual Total Time": 1.878,                                                     +
                                                   "Actual Rows": 1,                                                               +
                                                   "Actual Loops": 1133,                                                           +
                                                   "Index Cond": "(movie_id = mk.movie_id)",                                       +
                                                   "Rows Removed by Index Recheck": 0,                                             +
                                                   "Shared Hit Blocks": 3410,                                                      +
                                                   "Shared Read Blocks": 625,                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                     +
                                                   "Shared Written Blocks": 0,                                                     +
                                                   "Local Hit Blocks": 0,                                                          +
                                                   "Local Read Blocks": 0,                                                         +
                                                   "Local Dirtied Blocks": 0,                                                      +
                                                   "Local Written Blocks": 0,                                                      +
                                                   "Temp Read Blocks": 0,                                                          +
                                                   "Temp Written Blocks": 0                                                        +
                                                 }                                                                                 +
                                               ]                                                                                   +
                                             },                                                                                    +
                                             {                                                                                     +
                                               "Node Type": "Materialize",                                                         +
                                               "Parent Relationship": "Inner",                                                     +
                                               "Parallel Aware": false,                                                            +
                                               "Startup Cost": 0.00,                                                               +
                                               "Total Cost": 0.03,                                                                 +
                                               "Plan Rows": 1,                                                                     +
                                               "Plan Width": 4,                                                                    +
                                               "Actual Startup Time": 0.001,                                                       +
                                               "Actual Total Time": 0.001,                                                         +
                                               "Actual Rows": 1,                                                                   +
                                               "Actual Loops": 630,                                                                +
                                               "Shared Hit Blocks": 1,                                                             +
                                               "Shared Read Blocks": 0,                                                            +
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
                                                   "Node Type": "Seq Scan",                                                        +
                                                   "Parent Relationship": "Outer",                                                 +
                                                   "Parallel Aware": false,                                                        +
                                                   "Relation Name": "comp_cast_type",                                              +
                                                   "Alias": "cct1",                                                                +
                                                   "Startup Cost": 0.00,                                                           +
                                                   "Total Cost": 0.03,                                                             +
                                                   "Plan Rows": 1,                                                                 +
                                                   "Plan Width": 4,                                                                +
                                                   "Actual Startup Time": 0.020,                                                   +
                                                   "Actual Total Time": 0.021,                                                     +
                                                   "Actual Rows": 1,                                                               +
                                                   "Actual Loops": 1,                                                              +
                                                   "Filter": "((kind)::text = 'complete+verified'::text)",                         +
                                                   "Rows Removed by Filter": 3,                                                    +
                                                   "Shared Hit Blocks": 1,                                                         +
                                                   "Shared Read Blocks": 0,                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                     +
                                                   "Shared Written Blocks": 0,                                                     +
                                                   "Local Hit Blocks": 0,                                                          +
                                                   "Local Read Blocks": 0,                                                         +
                                                   "Local Dirtied Blocks": 0,                                                      +
                                                   "Local Written Blocks": 0,                                                      +
                                                   "Temp Read Blocks": 0,                                                          +
                                                   "Temp Written Blocks": 0                                                        +
                                                 }                                                                                 +
                                               ]                                                                                   +
                                             }                                                                                     +
                                           ]                                                                                       +
                                         },                                                                                        +
                                         {                                                                                         +
                                           "Node Type": "Index Scan",                                                              +
                                           "Parent Relationship": "Inner",                                                         +
                                           "Parallel Aware": false,                                                                +
                                           "Scan Direction": "Forward",                                                            +
                                           "Index Name": "title_idx_id",                                                           +
                                           "Relation Name": "title",                                                               +
                                           "Alias": "t",                                                                           +
                                           "Startup Cost": 0.01,                                                                   +
                                           "Total Cost": 0.04,                                                                     +
                                           "Plan Rows": 1,                                                                         +
                                           "Plan Width": 25,                                                                       +
                                           "Actual Startup Time": 18.340,                                                          +
                                           "Actual Total Time": 18.340,                                                            +
                                           "Actual Rows": 0,                                                                       +
                                           "Actual Loops": 318,                                                                    +
                                           "Index Cond": "(id = mk.movie_id)",                                                     +
                                           "Rows Removed by Index Recheck": 0,                                                     +
                                           "Filter": "(production_year > 2000)",                                                   +
                                           "Rows Removed by Filter": 1,                                                            +
                                           "Shared Hit Blocks": 837,                                                               +
                                           "Shared Read Blocks": 435,                                                              +
                                           "Shared Dirtied Blocks": 0,                                                             +
                                           "Shared Written Blocks": 0,                                                             +
                                           "Local Hit Blocks": 0,                                                                  +
                                           "Local Read Blocks": 0,                                                                 +
                                           "Local Dirtied Blocks": 0,                                                              +
                                           "Local Written Blocks": 0,                                                              +
                                           "Temp Read Blocks": 0,                                                                  +
                                           "Temp Written Blocks": 0                                                                +
                                         }                                                                                         +
                                       ]                                                                                           +
                                     },                                                                                            +
                                     {                                                                                             +
                                       "Node Type": "Materialize",                                                                 +
                                       "Parent Relationship": "Inner",                                                             +
                                       "Parallel Aware": false,                                                                    +
                                       "Startup Cost": 0.00,                                                                       +
                                       "Total Cost": 0.03,                                                                         +
                                       "Plan Rows": 1,                                                                             +
                                       "Plan Width": 14,                                                                           +
                                       "Actual Startup Time": 0.002,                                                               +
                                       "Actual Total Time": 0.002,                                                                 +
                                       "Actual Rows": 1,                                                                           +
                                       "Actual Loops": 61,                                                                         +
                                       "Shared Hit Blocks": 1,                                                                     +
                                       "Shared Read Blocks": 0,                                                                    +
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
                                           "Node Type": "Seq Scan",                                                                +
                                           "Parent Relationship": "Outer",                                                         +
                                           "Parallel Aware": false,                                                                +
                                           "Relation Name": "kind_type",                                                           +
                                           "Alias": "kt",                                                                          +
                                           "Startup Cost": 0.00,                                                                   +
                                           "Total Cost": 0.03,                                                                     +
                                           "Plan Rows": 1,                                                                         +
                                           "Plan Width": 14,                                                                       +
                                           "Actual Startup Time": 0.020,                                                           +
                                           "Actual Total Time": 0.030,                                                             +
                                           "Actual Rows": 1,                                                                       +
                                           "Actual Loops": 1,                                                                      +
                                           "Filter": "((kind)::text = 'movie'::text)",                                             +
                                           "Rows Removed by Filter": 6,                                                            +
                                           "Shared Hit Blocks": 1,                                                                 +
                                           "Shared Read Blocks": 0,                                                                +
                                           "Shared Dirtied Blocks": 0,                                                             +
                                           "Shared Written Blocks": 0,                                                             +
                                           "Local Hit Blocks": 0,                                                                  +
                                           "Local Read Blocks": 0,                                                                 +
                                           "Local Dirtied Blocks": 0,                                                              +
                                           "Local Written Blocks": 0,                                                              +
                                           "Temp Read Blocks": 0,                                                                  +
                                           "Temp Written Blocks": 0                                                                +
                                         }                                                                                         +
                                       ]                                                                                           +
                                     }                                                                                             +
                                   ]                                                                                               +
                                 },                                                                                                +
                                 {                                                                                                 +
                                   "Node Type": "Index Scan",                                                                      +
                                   "Parent Relationship": "Inner",                                                                 +
                                   "Parallel Aware": false,                                                                        +
                                   "Scan Direction": "Forward",                                                                    +
                                   "Index Name": "movie_id_movie_companies",                                                       +
                                   "Relation Name": "movie_companies",                                                             +
                                   "Alias": "mc",                                                                                  +
                                   "Startup Cost": 0.01,                                                                           +
                                   "Total Cost": 0.03,                                                                             +
                                   "Plan Rows": 2,                                                                                 +
                                   "Plan Width": 12,                                                                               +
                                   "Actual Startup Time": 21.144,                                                                  +
                                   "Actual Total Time": 34.526,                                                                    +
                                   "Actual Rows": 20,                                                                              +
                                   "Actual Loops": 60,                                                                             +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                       +
                                   "Rows Removed by Index Recheck": 0,                                                             +
                                   "Shared Hit Blocks": 150,                                                                       +
                                   "Shared Read Blocks": 156,                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                     +
                                   "Shared Written Blocks": 0,                                                                     +
                                   "Local Hit Blocks": 0,                                                                          +
                                   "Local Read Blocks": 0,                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                      +
                                   "Local Written Blocks": 0,                                                                      +
                                   "Temp Read Blocks": 0,                                                                          +
                                   "Temp Written Blocks": 0                                                                        +
                                 }                                                                                                 +
                               ]                                                                                                   +
                             },                                                                                                    +
                             {                                                                                                     +
                               "Node Type": "Index Scan",                                                                          +
                               "Parent Relationship": "Inner",                                                                     +
                               "Parallel Aware": false,                                                                            +
                               "Scan Direction": "Forward",                                                                        +
                               "Index Name": "movie_id_movie_info",                                                                +
                               "Relation Name": "movie_info",                                                                      +
                               "Alias": "mi",                                                                                      +
                               "Startup Cost": 0.01,                                                                               +
                               "Total Cost": 0.15,                                                                                 +
                               "Plan Rows": 1,                                                                                     +
                               "Plan Width": 8,                                                                                    +
                               "Actual Startup Time": 5.289,                                                                       +
                               "Actual Total Time": 5.342,                                                                         +
                               "Actual Rows": 0,                                                                                   +
                               "Actual Loops": 1218,                                                                               +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                           +
                               "Rows Removed by Index Recheck": 0,                                                                 +
                               "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",                        +
                               "Rows Removed by Filter": 274,                                                                      +
                               "Shared Hit Blocks": 34134,                                                                         +
                               "Shared Read Blocks": 1123,                                                                         +
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
                         },                                                                                                        +
                         {                                                                                                         +
                           "Node Type": "Index Scan",                                                                              +
                           "Parent Relationship": "Inner",                                                                         +
                           "Parallel Aware": false,                                                                                +
                           "Scan Direction": "Forward",                                                                            +
                           "Index Name": "company_name_pkey",                                                                      +
                           "Relation Name": "company_name",                                                                        +
                           "Alias": "cn",                                                                                          +
                           "Startup Cost": 0.01,                                                                                   +
                           "Total Cost": 0.02,                                                                                     +
                           "Plan Rows": 1,                                                                                         +
                           "Plan Width": 4,                                                                                        +
                           "Actual Startup Time": 2.830,                                                                           +
                           "Actual Total Time": 2.830,                                                                             +
                           "Actual Rows": 1,                                                                                       +
                           "Actual Loops": 16,                                                                                     +
                           "Index Cond": "(id = mc.company_id)",                                                                   +
                           "Rows Removed by Index Recheck": 0,                                                                     +
                           "Filter": "((country_code)::text = '[us]'::text)",                                                      +
                           "Rows Removed by Filter": 0,                                                                            +
                           "Shared Hit Blocks": 61,                                                                                +
                           "Shared Read Blocks": 3,                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                             +
                           "Shared Written Blocks": 0,                                                                             +
                           "Local Hit Blocks": 0,                                                                                  +
                           "Local Read Blocks": 0,                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                              +
                           "Local Written Blocks": 0,                                                                              +
                           "Temp Read Blocks": 0,                                                                                  +
                           "Temp Written Blocks": 0                                                                                +
                         }                                                                                                         +
                       ]                                                                                                           +
                     }                                                                                                             +
                   ]                                                                                                               +
                 }                                                                                                                 +
               ]                                                                                                                   +
             },                                                                                                                    +
             {                                                                                                                     +
               "Node Type": "Materialize",                                                                                         +
               "Parent Relationship": "Inner",                                                                                     +
               "Parallel Aware": false,                                                                                            +
               "Startup Cost": 0.00,                                                                                               +
               "Total Cost": 0.05,                                                                                                 +
               "Plan Rows": 1,                                                                                                     +
               "Plan Width": 4,                                                                                                    +
               "Actual Startup Time": 0.003,                                                                                       +
               "Actual Total Time": 0.003,                                                                                         +
               "Actual Rows": 1,                                                                                                   +
               "Actual Loops": 16,                                                                                                 +
               "Shared Hit Blocks": 1,                                                                                             +
               "Shared Read Blocks": 0,                                                                                            +
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
                   "Node Type": "Seq Scan",                                                                                        +
                   "Parent Relationship": "Outer",                                                                                 +
                   "Parallel Aware": false,                                                                                        +
                   "Relation Name": "info_type",                                                                                   +
                   "Alias": "it1",                                                                                                 +
                   "Startup Cost": 0.00,                                                                                           +
                   "Total Cost": 0.05,                                                                                             +
                   "Plan Rows": 1,                                                                                                 +
                   "Plan Width": 4,                                                                                                +
                   "Actual Startup Time": 0.026,                                                                                   +
                   "Actual Total Time": 0.026,                                                                                     +
                   "Actual Rows": 1,                                                                                               +
                   "Actual Loops": 1,                                                                                              +
                   "Filter": "((info)::text = 'release dates'::text)",                                                             +
                   "Rows Removed by Filter": 15,                                                                                   +
                   "Shared Hit Blocks": 1,                                                                                         +
                   "Shared Read Blocks": 0,                                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                                     +
                   "Shared Written Blocks": 0,                                                                                     +
                   "Local Hit Blocks": 0,                                                                                          +
                   "Local Read Blocks": 0,                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                      +
                   "Local Written Blocks": 0,                                                                                      +
                   "Temp Read Blocks": 0,                                                                                          +
                   "Temp Written Blocks": 0                                                                                        +
                 }                                                                                                                 +
               ]                                                                                                                   +
             }                                                                                                                     +
           ]                                                                                                                       +
         }                                                                                                                         +
       ]                                                                                                                           +
     },                                                                                                                            +
     "Planning Time": 9219.091,                                                                                                    +
     "Triggers": [                                                                                                                 +
     ],                                                                                                                            +
     "Execution Time": 22053.610                                                                                                   +
   }                                                                                                                               +
 ]
(1 row)

