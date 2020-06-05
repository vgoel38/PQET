                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                              +
   {                                                                                                                                                                            +
     "Plan": {                                                                                                                                                                  +
       "Node Type": "Aggregate",                                                                                                                                                +
       "Strategy": "Plain",                                                                                                                                                     +
       "Partial Mode": "Simple",                                                                                                                                                +
       "Parallel Aware": false,                                                                                                                                                 +
       "Startup Cost": 9578.45,                                                                                                                                                 +
       "Total Cost": 9578.45,                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                          +
       "Plan Width": 64,                                                                                                                                                        +
       "Actual Startup Time": 48003.161,                                                                                                                                        +
       "Actual Total Time": 48003.161,                                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                                        +
       "Actual Loops": 1,                                                                                                                                                       +
       "Shared Hit Blocks": 35689,                                                                                                                                              +
       "Shared Read Blocks": 170987,                                                                                                                                            +
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
           "Node Type": "Nested Loop",                                                                                                                                          +
           "Parent Relationship": "Outer",                                                                                                                                      +
           "Parallel Aware": false,                                                                                                                                             +
           "Join Type": "Inner",                                                                                                                                                +
           "Startup Cost": 0.08,                                                                                                                                                +
           "Total Cost": 9578.45,                                                                                                                                               +
           "Plan Rows": 10,                                                                                                                                                     +
           "Plan Width": 59,                                                                                                                                                    +
           "Actual Startup Time": 2589.233,                                                                                                                                     +
           "Actual Total Time": 47999.472,                                                                                                                                      +
           "Actual Rows": 2271,                                                                                                                                                 +
           "Actual Loops": 1,                                                                                                                                                   +
           "Inner Unique": true,                                                                                                                                                +
           "Shared Hit Blocks": 35689,                                                                                                                                          +
           "Shared Read Blocks": 170987,                                                                                                                                        +
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
               "Node Type": "Nested Loop",                                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                         +
               "Join Type": "Inner",                                                                                                                                            +
               "Startup Cost": 0.07,                                                                                                                                            +
               "Total Cost": 9578.31,                                                                                                                                           +
               "Plan Rows": 10,                                                                                                                                                 +
               "Plan Width": 63,                                                                                                                                                +
               "Actual Startup Time": 2569.354,                                                                                                                                 +
               "Actual Total Time": 46114.213,                                                                                                                                  +
               "Actual Rows": 2271,                                                                                                                                             +
               "Actual Loops": 1,                                                                                                                                               +
               "Inner Unique": false,                                                                                                                                           +
               "Join Filter": "(t.id = mk.movie_id)",                                                                                                                           +
               "Rows Removed by Join Filter": 0,                                                                                                                                +
               "Shared Hit Blocks": 27047,                                                                                                                                      +
               "Shared Read Blocks": 170543,                                                                                                                                    +
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
                   "Node Type": "Nested Loop",                                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                     +
                   "Join Type": "Inner",                                                                                                                                        +
                   "Startup Cost": 0.05,                                                                                                                                        +
                   "Total Cost": 9578.01,                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                              +
                   "Plan Width": 75,                                                                                                                                            +
                   "Actual Startup Time": 2539.944,                                                                                                                             +
                   "Actual Total Time": 44379.688,                                                                                                                              +
                   "Actual Rows": 284,                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                           +
                   "Inner Unique": false,                                                                                                                                       +
                   "Join Filter": "(t.id = at.movie_id)",                                                                                                                       +
                   "Rows Removed by Join Filter": 0,                                                                                                                            +
                   "Shared Hit Blocks": 26119,                                                                                                                                  +
                   "Shared Read Blocks": 170377,                                                                                                                                +
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
                       "Startup Cost": 0.04,                                                                                                                                    +
                       "Total Cost": 9577.94,                                                                                                                                   +
                       "Plan Rows": 3,                                                                                                                                          +
                       "Plan Width": 71,                                                                                                                                        +
                       "Actual Startup Time": 2420.545,                                                                                                                         +
                       "Actual Total Time": 42894.762,                                                                                                                          +
                       "Actual Rows": 2647,                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                       +
                       "Inner Unique": true,                                                                                                                                    +
                       "Shared Hit Blocks": 18548,                                                                                                                              +
                       "Shared Read Blocks": 169720,                                                                                                                            +
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
                           "Startup Cost": 0.03,                                                                                                                                +
                           "Total Cost": 9577.82,                                                                                                                               +
                           "Plan Rows": 7,                                                                                                                                      +
                           "Plan Width": 75,                                                                                                                                    +
                           "Actual Startup Time": 2418.458,                                                                                                                     +
                           "Actual Total Time": 31028.091,                                                                                                                      +
                           "Actual Rows": 2884,                                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                                   +
                           "Inner Unique": true,                                                                                                                                +
                           "Join Filter": "(mc.company_type_id = ct.id)",                                                                                                       +
                           "Rows Removed by Join Filter": 1599,                                                                                                                 +
                           "Shared Hit Blocks": 8569,                                                                                                                           +
                           "Shared Read Blocks": 168147,                                                                                                                        +
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
                               "Startup Cost": 0.03,                                                                                                                            +
                               "Total Cost": 9577.78,                                                                                                                           +
                               "Plan Rows": 8,                                                                                                                                  +
                               "Plan Width": 79,                                                                                                                                +
                               "Actual Startup Time": 2418.422,                                                                                                                 +
                               "Actual Total Time": 31018.091,                                                                                                                  +
                               "Actual Rows": 2884,                                                                                                                             +
                               "Actual Loops": 1,                                                                                                                               +
                               "Inner Unique": false,                                                                                                                           +
                               "Shared Hit Blocks": 8568,                                                                                                                       +
                               "Shared Read Blocks": 168147,                                                                                                                    +
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
                                   "Startup Cost": 0.01,                                                                                                                        +
                                   "Total Cost": 9577.66,                                                                                                                       +
                                   "Plan Rows": 2,                                                                                                                              +
                                   "Plan Width": 67,                                                                                                                            +
                                   "Actual Startup Time": 2368.116,                                                                                                             +
                                   "Actual Total Time": 24107.862,                                                                                                              +
                                   "Actual Rows": 1782,                                                                                                                         +
                                   "Actual Loops": 1,                                                                                                                           +
                                   "Inner Unique": true,                                                                                                                        +
                                   "Shared Hit Blocks": 4175,                                                                                                                   +
                                   "Shared Read Blocks": 164855,                                                                                                                +
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
                                       "Startup Cost": 0.00,                                                                                                                    +
                                       "Total Cost": 9559.48,                                                                                                                   +
                                       "Plan Rows": 3,                                                                                                                          +
                                       "Plan Width": 46,                                                                                                                        +
                                       "Actual Startup Time": 2356.460,                                                                                                         +
                                       "Actual Total Time": 10942.083,                                                                                                          +
                                       "Actual Rows": 1783,                                                                                                                     +
                                       "Actual Loops": 1,                                                                                                                       +
                                       "Inner Unique": true,                                                                                                                    +
                                       "Join Filter": "(it1.id = mi.info_type_id)",                                                                                             +
                                       "Rows Removed by Join Filter": 0,                                                                                                        +
                                       "Shared Hit Blocks": 3,                                                                                                                  +
                                       "Shared Read Blocks": 161890,                                                                                                            +
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
                                           "Node Type": "Seq Scan",                                                                                                             +
                                           "Parent Relationship": "Outer",                                                                                                      +
                                           "Parallel Aware": false,                                                                                                             +
                                           "Relation Name": "movie_info",                                                                                                       +
                                           "Alias": "mi",                                                                                                                       +
                                           "Startup Cost": 0.00,                                                                                                                +
                                           "Total Cost": 9559.36,                                                                                                               +
                                           "Plan Rows": 328,                                                                                                                    +
                                           "Plan Width": 50,                                                                                                                    +
                                           "Actual Startup Time": 2356.421,                                                                                                     +
                                           "Actual Total Time": 10937.151,                                                                                                      +
                                           "Actual Rows": 1783,                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                   +
                                           "Filter": "((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))",+
                                           "Rows Removed by Filter": 14833937,                                                                                                  +
                                           "Shared Hit Blocks": 2,                                                                                                              +
                                           "Shared Read Blocks": 161890,                                                                                                        +
                                           "Shared Dirtied Blocks": 0,                                                                                                          +
                                           "Shared Written Blocks": 0,                                                                                                          +
                                           "Local Hit Blocks": 0,                                                                                                               +
                                           "Local Read Blocks": 0,                                                                                                              +
                                           "Local Dirtied Blocks": 0,                                                                                                           +
                                           "Local Written Blocks": 0,                                                                                                           +
                                           "Temp Read Blocks": 0,                                                                                                               +
                                           "Temp Written Blocks": 0                                                                                                             +
                                         },                                                                                                                                     +
                                         {                                                                                                                                      +
                                           "Node Type": "Materialize",                                                                                                          +
                                           "Parent Relationship": "Inner",                                                                                                      +
                                           "Parallel Aware": false,                                                                                                             +
                                           "Startup Cost": 0.00,                                                                                                                +
                                           "Total Cost": 0.05,                                                                                                                  +
                                           "Plan Rows": 1,                                                                                                                      +
                                           "Plan Width": 4,                                                                                                                     +
                                           "Actual Startup Time": 0.000,                                                                                                        +
                                           "Actual Total Time": 0.000,                                                                                                          +
                                           "Actual Rows": 1,                                                                                                                    +
                                           "Actual Loops": 1783,                                                                                                                +
                                           "Shared Hit Blocks": 1,                                                                                                              +
                                           "Shared Read Blocks": 0,                                                                                                             +
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
                                               "Node Type": "Seq Scan",                                                                                                         +
                                               "Parent Relationship": "Outer",                                                                                                  +
                                               "Parallel Aware": false,                                                                                                         +
                                               "Relation Name": "info_type",                                                                                                    +
                                               "Alias": "it1",                                                                                                                  +
                                               "Startup Cost": 0.00,                                                                                                            +
                                               "Total Cost": 0.05,                                                                                                              +
                                               "Plan Rows": 1,                                                                                                                  +
                                               "Plan Width": 4,                                                                                                                 +
                                               "Actual Startup Time": 0.018,                                                                                                    +
                                               "Actual Total Time": 0.018,                                                                                                      +
                                               "Actual Rows": 1,                                                                                                                +
                                               "Actual Loops": 1,                                                                                                               +
                                               "Filter": "((info)::text = 'release dates'::text)",                                                                              +
                                               "Rows Removed by Filter": 15,                                                                                                    +
                                               "Shared Hit Blocks": 1,                                                                                                          +
                                               "Shared Read Blocks": 0,                                                                                                         +
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
                                         }                                                                                                                                      +
                                       ]                                                                                                                                        +
                                     },                                                                                                                                         +
                                     {                                                                                                                                          +
                                       "Node Type": "Index Scan",                                                                                                               +
                                       "Parent Relationship": "Inner",                                                                                                          +
                                       "Parallel Aware": false,                                                                                                                 +
                                       "Scan Direction": "Forward",                                                                                                             +
                                       "Index Name": "title_idx_id",                                                                                                            +
                                       "Relation Name": "title",                                                                                                                +
                                       "Alias": "t",                                                                                                                            +
                                       "Startup Cost": 0.01,                                                                                                                    +
                                       "Total Cost": 6.06,                                                                                                                      +
                                       "Plan Rows": 1,                                                                                                                          +
                                       "Plan Width": 21,                                                                                                                        +
                                       "Actual Startup Time": 7.380,                                                                                                            +
                                       "Actual Total Time": 7.380,                                                                                                              +
                                       "Actual Rows": 1,                                                                                                                        +
                                       "Actual Loops": 1783,                                                                                                                    +
                                       "Index Cond": "(id = mi.movie_id)",                                                                                                      +
                                       "Rows Removed by Index Recheck": 0,                                                                                                      +
                                       "Filter": "(production_year > 1990)",                                                                                                    +
                                       "Rows Removed by Filter": 0,                                                                                                             +
                                       "Shared Hit Blocks": 4172,                                                                                                               +
                                       "Shared Read Blocks": 2965,                                                                                                              +
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
                                   "Node Type": "Index Scan",                                                                                                                   +
                                   "Parent Relationship": "Inner",                                                                                                              +
                                   "Parallel Aware": false,                                                                                                                     +
                                   "Scan Direction": "Forward",                                                                                                                 +
                                   "Index Name": "movie_id_movie_companies",                                                                                                    +
                                   "Relation Name": "movie_companies",                                                                                                          +
                                   "Alias": "mc",                                                                                                                               +
                                   "Startup Cost": 0.01,                                                                                                                        +
                                   "Total Cost": 0.06,                                                                                                                          +
                                   "Plan Rows": 2,                                                                                                                              +
                                   "Plan Width": 12,                                                                                                                            +
                                   "Actual Startup Time": 3.309,                                                                                                                +
                                   "Actual Total Time": 3.871,                                                                                                                  +
                                   "Actual Rows": 2,                                                                                                                            +
                                   "Actual Loops": 1782,                                                                                                                        +
                                   "Index Cond": "(movie_id = t.id)",                                                                                                           +
                                   "Rows Removed by Index Recheck": 0,                                                                                                          +
                                   "Shared Hit Blocks": 4393,                                                                                                                   +
                                   "Shared Read Blocks": 3292,                                                                                                                  +
                                   "Shared Dirtied Blocks": 0,                                                                                                                  +
                                   "Shared Written Blocks": 0,                                                                                                                  +
                                   "Local Hit Blocks": 0,                                                                                                                       +
                                   "Local Read Blocks": 0,                                                                                                                      +
                                   "Local Dirtied Blocks": 0,                                                                                                                   +
                                   "Local Written Blocks": 0,                                                                                                                   +
                                   "Temp Read Blocks": 0,                                                                                                                       +
                                   "Temp Written Blocks": 0                                                                                                                     +
                                 }                                                                                                                                              +
                               ]                                                                                                                                                +
                             },                                                                                                                                                 +
                             {                                                                                                                                                  +
                               "Node Type": "Materialize",                                                                                                                      +
                               "Parent Relationship": "Inner",                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                         +
                               "Startup Cost": 0.00,                                                                                                                            +
                               "Total Cost": 0.03,                                                                                                                              +
                               "Plan Rows": 4,                                                                                                                                  +
                               "Plan Width": 4,                                                                                                                                 +
                               "Actual Startup Time": 0.001,                                                                                                                    +
                               "Actual Total Time": 0.001,                                                                                                                      +
                               "Actual Rows": 2,                                                                                                                                +
                               "Actual Loops": 2884,                                                                                                                            +
                               "Shared Hit Blocks": 1,                                                                                                                          +
                               "Shared Read Blocks": 0,                                                                                                                         +
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
                                   "Node Type": "Seq Scan",                                                                                                                     +
                                   "Parent Relationship": "Outer",                                                                                                              +
                                   "Parallel Aware": false,                                                                                                                     +
                                   "Relation Name": "company_type",                                                                                                             +
                                   "Alias": "ct",                                                                                                                               +
                                   "Startup Cost": 0.00,                                                                                                                        +
                                   "Total Cost": 0.03,                                                                                                                          +
                                   "Plan Rows": 4,                                                                                                                              +
                                   "Plan Width": 4,                                                                                                                             +
                                   "Actual Startup Time": 0.015,                                                                                                                +
                                   "Actual Total Time": 0.018,                                                                                                                  +
                                   "Actual Rows": 2,                                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                           +
                                   "Shared Hit Blocks": 1,                                                                                                                      +
                                   "Shared Read Blocks": 0,                                                                                                                     +
                                   "Shared Dirtied Blocks": 0,                                                                                                                  +
                                   "Shared Written Blocks": 0,                                                                                                                  +
                                   "Local Hit Blocks": 0,                                                                                                                       +
                                   "Local Read Blocks": 0,                                                                                                                      +
                                   "Local Dirtied Blocks": 0,                                                                                                                   +
                                   "Local Written Blocks": 0,                                                                                                                   +
                                   "Temp Read Blocks": 0,                                                                                                                       +
                                   "Temp Written Blocks": 0                                                                                                                     +
                                 }                                                                                                                                              +
                               ]                                                                                                                                                +
                             }                                                                                                                                                  +
                           ]                                                                                                                                                    +
                         },                                                                                                                                                     +
                         {                                                                                                                                                      +
                           "Node Type": "Index Scan",                                                                                                                           +
                           "Parent Relationship": "Inner",                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                             +
                           "Scan Direction": "Forward",                                                                                                                         +
                           "Index Name": "company_name_pkey",                                                                                                                   +
                           "Relation Name": "company_name",                                                                                                                     +
                           "Alias": "cn",                                                                                                                                       +
                           "Startup Cost": 0.01,                                                                                                                                +
                           "Total Cost": 0.02,                                                                                                                                  +
                           "Plan Rows": 1,                                                                                                                                      +
                           "Plan Width": 4,                                                                                                                                     +
                           "Actual Startup Time": 4.111,                                                                                                                        +
                           "Actual Total Time": 4.111,                                                                                                                          +
                           "Actual Rows": 1,                                                                                                                                    +
                           "Actual Loops": 2884,                                                                                                                                +
                           "Index Cond": "(id = mc.company_id)",                                                                                                                +
                           "Rows Removed by Index Recheck": 0,                                                                                                                  +
                           "Filter": "((country_code)::text = '[us]'::text)",                                                                                                   +
                           "Rows Removed by Filter": 0,                                                                                                                         +
                           "Shared Hit Blocks": 9979,                                                                                                                           +
                           "Shared Read Blocks": 1573,                                                                                                                          +
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
                     },                                                                                                                                                         +
                     {                                                                                                                                                          +
                       "Node Type": "Index Scan",                                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                 +
                       "Scan Direction": "Forward",                                                                                                                             +
                       "Index Name": "movie_id_aka_title",                                                                                                                      +
                       "Relation Name": "aka_title",                                                                                                                            +
                       "Alias": "at",                                                                                                                                           +
                       "Startup Cost": 0.01,                                                                                                                                    +
                       "Total Cost": 0.02,                                                                                                                                      +
                       "Plan Rows": 2,                                                                                                                                          +
                       "Plan Width": 4,                                                                                                                                         +
                       "Actual Startup Time": 0.402,                                                                                                                            +
                       "Actual Total Time": 0.558,                                                                                                                              +
                       "Actual Rows": 0,                                                                                                                                        +
                       "Actual Loops": 2647,                                                                                                                                    +
                       "Index Cond": "(movie_id = mc.movie_id)",                                                                                                                +
                       "Rows Removed by Index Recheck": 0,                                                                                                                      +
                       "Shared Hit Blocks": 7571,                                                                                                                               +
                       "Shared Read Blocks": 657,                                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                                   +
                       "Temp Written Blocks": 0                                                                                                                                 +
                     }                                                                                                                                                          +
                   ]                                                                                                                                                            +
                 },                                                                                                                                                             +
                 {                                                                                                                                                              +
                   "Node Type": "Index Scan",                                                                                                                                   +
                   "Parent Relationship": "Inner",                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                     +
                   "Scan Direction": "Forward",                                                                                                                                 +
                   "Index Name": "movie_id_movie_keyword",                                                                                                                      +
                   "Relation Name": "movie_keyword",                                                                                                                            +
                   "Alias": "mk",                                                                                                                                               +
                   "Startup Cost": 0.01,                                                                                                                                        +
                   "Total Cost": 0.06,                                                                                                                                          +
                   "Plan Rows": 11,                                                                                                                                             +
                   "Plan Width": 8,                                                                                                                                             +
                   "Actual Startup Time": 6.085,                                                                                                                                +
                   "Actual Total Time": 6.096,                                                                                                                                  +
                   "Actual Rows": 8,                                                                                                                                            +
                   "Actual Loops": 284,                                                                                                                                         +
                   "Index Cond": "(movie_id = mc.movie_id)",                                                                                                                    +
                   "Rows Removed by Index Recheck": 0,                                                                                                                          +
                   "Shared Hit Blocks": 928,                                                                                                                                    +
                   "Shared Read Blocks": 166,                                                                                                                                   +
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
             },                                                                                                                                                                 +
             {                                                                                                                                                                  +
               "Node Type": "Index Scan",                                                                                                                                       +
               "Parent Relationship": "Inner",                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                         +
               "Scan Direction": "Forward",                                                                                                                                     +
               "Index Name": "keyword_pkey",                                                                                                                                    +
               "Relation Name": "keyword",                                                                                                                                      +
               "Alias": "k",                                                                                                                                                    +
               "Startup Cost": 0.01,                                                                                                                                            +
               "Total Cost": 0.01,                                                                                                                                              +
               "Plan Rows": 1,                                                                                                                                                  +
               "Plan Width": 4,                                                                                                                                                 +
               "Actual Startup Time": 0.828,                                                                                                                                    +
               "Actual Total Time": 0.828,                                                                                                                                      +
               "Actual Rows": 1,                                                                                                                                                +
               "Actual Loops": 2271,                                                                                                                                            +
               "Index Cond": "(id = mk.keyword_id)",                                                                                                                            +
               "Rows Removed by Index Recheck": 0,                                                                                                                              +
               "Shared Hit Blocks": 8642,                                                                                                                                       +
               "Shared Read Blocks": 444,                                                                                                                                       +
               "Shared Dirtied Blocks": 0,                                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                                           +
               "Temp Written Blocks": 0                                                                                                                                         +
             }                                                                                                                                                                  +
           ]                                                                                                                                                                    +
         }                                                                                                                                                                      +
       ]                                                                                                                                                                        +
     },                                                                                                                                                                         +
     "Planning Time": 9189.664,                                                                                                                                                 +
     "Triggers": [                                                                                                                                                              +
     ],                                                                                                                                                                         +
     "Execution Time": 48024.953                                                                                                                                                +
   }                                                                                                                                                                            +
 ]
(1 row)
