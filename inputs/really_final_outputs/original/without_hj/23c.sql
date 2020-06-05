                                                                                           QUERY PLAN                                                                                            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                              +
   {                                                                                                                                                                                            +
     "Plan": {                                                                                                                                                                                  +
       "Node Type": "Aggregate",                                                                                                                                                                +
       "Strategy": "Plain",                                                                                                                                                                     +
       "Partial Mode": "Simple",                                                                                                                                                                +
       "Parallel Aware": false,                                                                                                                                                                 +
       "Startup Cost": 9641.07,                                                                                                                                                                 +
       "Total Cost": 9641.07,                                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                                          +
       "Plan Width": 64,                                                                                                                                                                        +
       "Actual Startup Time": 45614.495,                                                                                                                                                        +
       "Actual Total Time": 45614.495,                                                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                                                        +
       "Actual Loops": 1,                                                                                                                                                                       +
       "Shared Hit Blocks": 11490,                                                                                                                                                              +
       "Shared Read Blocks": 165837,                                                                                                                                                            +
       "Shared Dirtied Blocks": 0,                                                                                                                                                              +
       "Shared Written Blocks": 0,                                                                                                                                                              +
       "Local Hit Blocks": 0,                                                                                                                                                                   +
       "Local Read Blocks": 0,                                                                                                                                                                  +
       "Local Dirtied Blocks": 0,                                                                                                                                                               +
       "Local Written Blocks": 0,                                                                                                                                                               +
       "Temp Read Blocks": 0,                                                                                                                                                                   +
       "Temp Written Blocks": 0,                                                                                                                                                                +
       "Plans": [                                                                                                                                                                               +
         {                                                                                                                                                                                      +
           "Node Type": "Nested Loop",                                                                                                                                                          +
           "Parent Relationship": "Outer",                                                                                                                                                      +
           "Parallel Aware": false,                                                                                                                                                             +
           "Join Type": "Inner",                                                                                                                                                                +
           "Startup Cost": 0.07,                                                                                                                                                                +
           "Total Cost": 9641.07,                                                                                                                                                               +
           "Plan Rows": 5,                                                                                                                                                                      +
           "Plan Width": 27,                                                                                                                                                                    +
           "Actual Startup Time": 22860.449,                                                                                                                                                    +
           "Actual Total Time": 45613.853,                                                                                                                                                      +
           "Actual Rows": 628,                                                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                                                   +
           "Inner Unique": true,                                                                                                                                                                +
           "Shared Hit Blocks": 11490,                                                                                                                                                          +
           "Shared Read Blocks": 165837,                                                                                                                                                        +
           "Shared Dirtied Blocks": 0,                                                                                                                                                          +
           "Shared Written Blocks": 0,                                                                                                                                                          +
           "Local Hit Blocks": 0,                                                                                                                                                               +
           "Local Read Blocks": 0,                                                                                                                                                              +
           "Local Dirtied Blocks": 0,                                                                                                                                                           +
           "Local Written Blocks": 0,                                                                                                                                                           +
           "Temp Read Blocks": 0,                                                                                                                                                               +
           "Temp Written Blocks": 0,                                                                                                                                                            +
           "Plans": [                                                                                                                                                                           +
             {                                                                                                                                                                                  +
               "Node Type": "Nested Loop",                                                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                                         +
               "Join Type": "Inner",                                                                                                                                                            +
               "Startup Cost": 0.05,                                                                                                                                                            +
               "Total Cost": 9641.00,                                                                                                                                                           +
               "Plan Rows": 5,                                                                                                                                                                  +
               "Plan Width": 31,                                                                                                                                                                +
               "Actual Startup Time": 22829.717,                                                                                                                                                +
               "Actual Total Time": 45376.893,                                                                                                                                                  +
               "Actual Rows": 628,                                                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                                               +
               "Inner Unique": true,                                                                                                                                                            +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                                                                                   +
               "Rows Removed by Join Filter": 615,                                                                                                                                              +
               "Shared Hit Blocks": 9201,                                                                                                                                                       +
               "Shared Read Blocks": 165610,                                                                                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                                                           +
               "Temp Written Blocks": 0,                                                                                                                                                        +
               "Plans": [                                                                                                                                                                       +
                 {                                                                                                                                                                              +
                   "Node Type": "Nested Loop",                                                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                                     +
                   "Join Type": "Inner",                                                                                                                                                        +
                   "Startup Cost": 0.05,                                                                                                                                                        +
                   "Total Cost": 9640.96,                                                                                                                                                       +
                   "Plan Rows": 5,                                                                                                                                                              +
                   "Plan Width": 35,                                                                                                                                                            +
                   "Actual Startup Time": 22829.688,                                                                                                                                            +
                   "Actual Total Time": 45376.014,                                                                                                                                              +
                   "Actual Rows": 628,                                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                                           +
                   "Inner Unique": true,                                                                                                                                                        +
                   "Shared Hit Blocks": 9200,                                                                                                                                                   +
                   "Shared Read Blocks": 165610,                                                                                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                                                       +
                   "Temp Written Blocks": 0,                                                                                                                                                    +
                   "Plans": [                                                                                                                                                                   +
                     {                                                                                                                                                                          +
                       "Node Type": "Nested Loop",                                                                                                                                              +
                       "Parent Relationship": "Outer",                                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                                 +
                       "Join Type": "Inner",                                                                                                                                                    +
                       "Startup Cost": 0.04,                                                                                                                                                    +
                       "Total Cost": 9640.87,                                                                                                                                                   +
                       "Plan Rows": 5,                                                                                                                                                          +
                       "Plan Width": 39,                                                                                                                                                        +
                       "Actual Startup Time": 22785.620,                                                                                                                                        +
                       "Actual Total Time": 45208.133,                                                                                                                                          +
                       "Actual Rows": 628,                                                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                                                       +
                       "Inner Unique": false,                                                                                                                                                   +
                       "Join Filter": "(t.id = mc.movie_id)",                                                                                                                                   +
                       "Rows Removed by Join Filter": 0,                                                                                                                                        +
                       "Shared Hit Blocks": 6696,                                                                                                                                               +
                       "Shared Read Blocks": 165602,                                                                                                                                            +
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
                           "Startup Cost": 0.03,                                                                                                                                                +
                           "Total Cost": 9640.72,                                                                                                                                               +
                           "Plan Rows": 5,                                                                                                                                                      +
                           "Plan Width": 47,                                                                                                                                                    +
                           "Actual Startup Time": 22746.074,                                                                                                                                    +
                           "Actual Total Time": 45113.913,                                                                                                                                      +
                           "Actual Rows": 625,                                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                                   +
                           "Inner Unique": false,                                                                                                                                               +
                           "Shared Hit Blocks": 4202,                                                                                                                                           +
                           "Shared Read Blocks": 165593,                                                                                                                                        +
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
                               "Startup Cost": 0.01,                                                                                                                                            +
                               "Total Cost": 9640.31,                                                                                                                                           +
                               "Plan Rows": 1,                                                                                                                                                  +
                               "Plan Width": 39,                                                                                                                                                +
                               "Actual Startup Time": 22709.505,                                                                                                                                +
                               "Actual Total Time": 45010.672,                                                                                                                                  +
                               "Actual Rows": 6,                                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                                               +
                               "Inner Unique": true,                                                                                                                                            +
                               "Join Filter": "(cc.status_id = cct1.id)",                                                                                                                       +
                               "Rows Removed by Join Filter": 32,                                                                                                                               +
                               "Shared Hit Blocks": 4180,                                                                                                                                       +
                               "Shared Read Blocks": 165583,                                                                                                                                    +
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
                                   "Startup Cost": 0.01,                                                                                                                                        +
                                   "Total Cost": 9640.28,                                                                                                                                       +
                                   "Plan Rows": 1,                                                                                                                                              +
                                   "Plan Width": 43,                                                                                                                                            +
                                   "Actual Startup Time": 19332.430,                                                                                                                            +
                                   "Actual Total Time": 45010.633,                                                                                                                              +
                                   "Actual Rows": 38,                                                                                                                                           +
                                   "Actual Loops": 1,                                                                                                                                           +
                                   "Inner Unique": false,                                                                                                                                       +
                                   "Join Filter": "(t.id = cc.movie_id)",                                                                                                                       +
                                   "Rows Removed by Join Filter": 169938150,                                                                                                                    +
                                   "Shared Hit Blocks": 4179,                                                                                                                                   +
                                   "Shared Read Blocks": 165583,                                                                                                                                +
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
                                       "Node Type": "Seq Scan",                                                                                                                                 +
                                       "Parent Relationship": "Outer",                                                                                                                          +
                                       "Parallel Aware": false,                                                                                                                                 +
                                       "Relation Name": "complete_cast",                                                                                                                        +
                                       "Alias": "cc",                                                                                                                                           +
                                       "Startup Cost": 0.00,                                                                                                                                    +
                                       "Total Cost": 32.27,                                                                                                                                     +
                                       "Plan Rows": 135086,                                                                                                                                     +
                                       "Plan Width": 8,                                                                                                                                         +
                                       "Actual Startup Time": 0.163,                                                                                                                            +
                                       "Actual Total Time": 15.944,                                                                                                                             +
                                       "Actual Rows": 135086,                                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                                       +
                                       "Shared Hit Blocks": 2,                                                                                                                                  +
                                       "Shared Read Blocks": 729,                                                                                                                               +
                                       "Shared Dirtied Blocks": 0,                                                                                                                              +
                                       "Shared Written Blocks": 0,                                                                                                                              +
                                       "Local Hit Blocks": 0,                                                                                                                                   +
                                       "Local Read Blocks": 0,                                                                                                                                  +
                                       "Local Dirtied Blocks": 0,                                                                                                                               +
                                       "Local Written Blocks": 0,                                                                                                                               +
                                       "Temp Read Blocks": 0,                                                                                                                                   +
                                       "Temp Written Blocks": 0                                                                                                                                 +
                                     },                                                                                                                                                         +
                                     {                                                                                                                                                          +
                                       "Node Type": "Materialize",                                                                                                                              +
                                       "Parent Relationship": "Inner",                                                                                                                          +
                                       "Parallel Aware": false,                                                                                                                                 +
                                       "Startup Cost": 0.01,                                                                                                                                    +
                                       "Total Cost": 9577.69,                                                                                                                                   +
                                       "Plan Rows": 1,                                                                                                                                          +
                                       "Plan Width": 35,                                                                                                                                        +
                                       "Actual Startup Time": 0.064,                                                                                                                            +
                                       "Actual Total Time": 0.198,                                                                                                                              +
                                       "Actual Rows": 1258,                                                                                                                                     +
                                       "Actual Loops": 135086,                                                                                                                                  +
                                       "Shared Hit Blocks": 4177,                                                                                                                               +
                                       "Shared Read Blocks": 164854,                                                                                                                            +
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
                                           "Startup Cost": 0.01,                                                                                                                                +
                                           "Total Cost": 9577.69,                                                                                                                               +
                                           "Plan Rows": 1,                                                                                                                                      +
                                           "Plan Width": 35,                                                                                                                                    +
                                           "Actual Startup Time": 8653.717,                                                                                                                     +
                                           "Actual Total Time": 19236.898,                                                                                                                      +
                                           "Actual Rows": 1258,                                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                                   +
                                           "Inner Unique": false,                                                                                                                               +
                                           "Join Filter": "(t.kind_id = kt.id)",                                                                                                                +
                                           "Rows Removed by Join Filter": 5870,                                                                                                                 +
                                           "Shared Hit Blocks": 4177,                                                                                                                           +
                                           "Shared Read Blocks": 164854,                                                                                                                        +
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
                                               "Relation Name": "kind_type",                                                                                                                    +
                                               "Alias": "kt",                                                                                                                                   +
                                               "Startup Cost": 0.00,                                                                                                                            +
                                               "Total Cost": 0.03,                                                                                                                              +
                                               "Plan Rows": 4,                                                                                                                                  +
                                               "Plan Width": 14,                                                                                                                                +
                                               "Actual Startup Time": 0.017,                                                                                                                    +
                                               "Actual Total Time": 0.023,                                                                                                                      +
                                               "Actual Rows": 4,                                                                                                                                +
                                               "Actual Loops": 1,                                                                                                                               +
                                               "Filter": "((kind)::text = ANY ('{movie,\"tv movie\",\"video movie\",\"video game\"}'::text[]))",                                                +
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
                                             },                                                                                                                                                 +
                                             {                                                                                                                                                  +
                                               "Node Type": "Materialize",                                                                                                                      +
                                               "Parent Relationship": "Inner",                                                                                                                  +
                                               "Parallel Aware": false,                                                                                                                         +
                                               "Startup Cost": 0.01,                                                                                                                            +
                                               "Total Cost": 9577.66,                                                                                                                           +
                                               "Plan Rows": 2,                                                                                                                                  +
                                               "Plan Width": 29,                                                                                                                                +
                                               "Actual Startup Time": 406.631,                                                                                                                  +
                                               "Actual Total Time": 4808.525,                                                                                                                   +
                                               "Actual Rows": 1782,                                                                                                                             +
                                               "Actual Loops": 4,                                                                                                                               +
                                               "Shared Hit Blocks": 4176,                                                                                                                       +
                                               "Shared Read Blocks": 164854,                                                                                                                    +
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
                                                   "Plan Width": 29,                                                                                                                            +
                                                   "Actual Startup Time": 1626.511,                                                                                                             +
                                                   "Actual Total Time": 19228.503,                                                                                                              +
                                                   "Actual Rows": 1782,                                                                                                                         +
                                                   "Actual Loops": 1,                                                                                                                           +
                                                   "Inner Unique": true,                                                                                                                        +
                                                   "Shared Hit Blocks": 4176,                                                                                                                   +
                                                   "Shared Read Blocks": 164854,                                                                                                                +
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
                                                       "Plan Width": 4,                                                                                                                         +
                                                       "Actual Startup Time": 1614.764,                                                                                                         +
                                                       "Actual Total Time": 10026.932,                                                                                                          +
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
                                                           "Plan Width": 8,                                                                                                                     +
                                                           "Actual Startup Time": 1614.737,                                                                                                     +
                                                           "Actual Total Time": 10023.019,                                                                                                      +
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
                                                               "Actual Startup Time": 0.012,                                                                                                    +
                                                               "Actual Total Time": 0.012,                                                                                                      +
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
                                                       "Plan Width": 25,                                                                                                                        +
                                                       "Actual Startup Time": 5.157,                                                                                                            +
                                                       "Actual Total Time": 5.157,                                                                                                              +
                                                       "Actual Rows": 1,                                                                                                                        +
                                                       "Actual Loops": 1783,                                                                                                                    +
                                                       "Index Cond": "(id = mi.movie_id)",                                                                                                      +
                                                       "Rows Removed by Index Recheck": 0,                                                                                                      +
                                                       "Filter": "(production_year > 1990)",                                                                                                    +
                                                       "Rows Removed by Filter": 0,                                                                                                             +
                                                       "Shared Hit Blocks": 4173,                                                                                                               +
                                                       "Shared Read Blocks": 2964,                                                                                                              +
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
                                             }                                                                                                                                                  +
                                           ]                                                                                                                                                    +
                                         }                                                                                                                                                      +
                                       ]                                                                                                                                                        +
                                     }                                                                                                                                                          +
                                   ]                                                                                                                                                            +
                                 },                                                                                                                                                             +
                                 {                                                                                                                                                              +
                                   "Node Type": "Materialize",                                                                                                                                  +
                                   "Parent Relationship": "Inner",                                                                                                                              +
                                   "Parallel Aware": false,                                                                                                                                     +
                                   "Startup Cost": 0.00,                                                                                                                                        +
                                   "Total Cost": 0.03,                                                                                                                                          +
                                   "Plan Rows": 1,                                                                                                                                              +
                                   "Plan Width": 4,                                                                                                                                             +
                                   "Actual Startup Time": 0.000,                                                                                                                                +
                                   "Actual Total Time": 0.000,                                                                                                                                  +
                                   "Actual Rows": 1,                                                                                                                                            +
                                   "Actual Loops": 38,                                                                                                                                          +
                                   "Shared Hit Blocks": 1,                                                                                                                                      +
                                   "Shared Read Blocks": 0,                                                                                                                                     +
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
                                       "Node Type": "Seq Scan",                                                                                                                                 +
                                       "Parent Relationship": "Outer",                                                                                                                          +
                                       "Parallel Aware": false,                                                                                                                                 +
                                       "Relation Name": "comp_cast_type",                                                                                                                       +
                                       "Alias": "cct1",                                                                                                                                         +
                                       "Startup Cost": 0.00,                                                                                                                                    +
                                       "Total Cost": 0.03,                                                                                                                                      +
                                       "Plan Rows": 1,                                                                                                                                          +
                                       "Plan Width": 4,                                                                                                                                         +
                                       "Actual Startup Time": 0.006,                                                                                                                            +
                                       "Actual Total Time": 0.006,                                                                                                                              +
                                       "Actual Rows": 1,                                                                                                                                        +
                                       "Actual Loops": 1,                                                                                                                                       +
                                       "Filter": "((kind)::text = 'complete+verified'::text)",                                                                                                  +
                                       "Rows Removed by Filter": 3,                                                                                                                             +
                                       "Shared Hit Blocks": 1,                                                                                                                                  +
                                       "Shared Read Blocks": 0,                                                                                                                                 +
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
                                 }                                                                                                                                                              +
                               ]                                                                                                                                                                +
                             },                                                                                                                                                                 +
                             {                                                                                                                                                                  +
                               "Node Type": "Index Scan",                                                                                                                                       +
                               "Parent Relationship": "Inner",                                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                                         +
                               "Scan Direction": "Forward",                                                                                                                                     +
                               "Index Name": "movie_id_movie_keyword",                                                                                                                          +
                               "Relation Name": "movie_keyword",                                                                                                                                +
                               "Alias": "mk",                                                                                                                                                   +
                               "Startup Cost": 0.01,                                                                                                                                            +
                               "Total Cost": 0.08,                                                                                                                                              +
                               "Plan Rows": 11,                                                                                                                                                 +
                               "Plan Width": 8,                                                                                                                                                 +
                               "Actual Startup Time": 17.065,                                                                                                                                   +
                               "Actual Total Time": 17.150,                                                                                                                                     +
                               "Actual Rows": 104,                                                                                                                                              +
                               "Actual Loops": 6,                                                                                                                                               +
                               "Index Cond": "(movie_id = t.id)",                                                                                                                               +
                               "Rows Removed by Index Recheck": 0,                                                                                                                              +
                               "Shared Hit Blocks": 22,                                                                                                                                         +
                               "Shared Read Blocks": 10,                                                                                                                                        +
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
                         },                                                                                                                                                                     +
                         {                                                                                                                                                                      +
                           "Node Type": "Index Scan",                                                                                                                                           +
                           "Parent Relationship": "Inner",                                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                                             +
                           "Scan Direction": "Forward",                                                                                                                                         +
                           "Index Name": "movie_id_movie_companies",                                                                                                                            +
                           "Relation Name": "movie_companies",                                                                                                                                  +
                           "Alias": "mc",                                                                                                                                                       +
                           "Startup Cost": 0.01,                                                                                                                                                +
                           "Total Cost": 0.03,                                                                                                                                                  +
                           "Plan Rows": 2,                                                                                                                                                      +
                           "Plan Width": 12,                                                                                                                                                    +
                           "Actual Startup Time": 0.144,                                                                                                                                        +
                           "Actual Total Time": 0.149,                                                                                                                                          +
                           "Actual Rows": 1,                                                                                                                                                    +
                           "Actual Loops": 625,                                                                                                                                                 +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                            +
                           "Rows Removed by Index Recheck": 0,                                                                                                                                  +
                           "Shared Hit Blocks": 2494,                                                                                                                                           +
                           "Shared Read Blocks": 9,                                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                                                               +
                           "Temp Written Blocks": 0                                                                                                                                             +
                         }                                                                                                                                                                      +
                       ]                                                                                                                                                                        +
                     },                                                                                                                                                                         +
                     {                                                                                                                                                                          +
                       "Node Type": "Index Scan",                                                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                                 +
                       "Scan Direction": "Forward",                                                                                                                                             +
                       "Index Name": "company_name_pkey",                                                                                                                                       +
                       "Relation Name": "company_name",                                                                                                                                         +
                       "Alias": "cn",                                                                                                                                                           +
                       "Startup Cost": 0.01,                                                                                                                                                    +
                       "Total Cost": 0.02,                                                                                                                                                      +
                       "Plan Rows": 1,                                                                                                                                                          +
                       "Plan Width": 4,                                                                                                                                                         +
                       "Actual Startup Time": 0.266,                                                                                                                                            +
                       "Actual Total Time": 0.266,                                                                                                                                              +
                       "Actual Rows": 1,                                                                                                                                                        +
                       "Actual Loops": 628,                                                                                                                                                     +
                       "Index Cond": "(id = mc.company_id)",                                                                                                                                    +
                       "Rows Removed by Index Recheck": 0,                                                                                                                                      +
                       "Filter": "((country_code)::text = '[us]'::text)",                                                                                                                       +
                       "Rows Removed by Filter": 0,                                                                                                                                             +
                       "Shared Hit Blocks": 2504,                                                                                                                                               +
                       "Shared Read Blocks": 8,                                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                                                   +
                       "Temp Written Blocks": 0                                                                                                                                                 +
                     }                                                                                                                                                                          +
                   ]                                                                                                                                                                            +
                 },                                                                                                                                                                             +
                 {                                                                                                                                                                              +
                   "Node Type": "Materialize",                                                                                                                                                  +
                   "Parent Relationship": "Inner",                                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                                                        +
                   "Total Cost": 0.03,                                                                                                                                                          +
                   "Plan Rows": 4,                                                                                                                                                              +
                   "Plan Width": 4,                                                                                                                                                             +
                   "Actual Startup Time": 0.000,                                                                                                                                                +
                   "Actual Total Time": 0.000,                                                                                                                                                  +
                   "Actual Rows": 2,                                                                                                                                                            +
                   "Actual Loops": 628,                                                                                                                                                         +
                   "Shared Hit Blocks": 1,                                                                                                                                                      +
                   "Shared Read Blocks": 0,                                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                                                       +
                   "Temp Written Blocks": 0,                                                                                                                                                    +
                   "Plans": [                                                                                                                                                                   +
                     {                                                                                                                                                                          +
                       "Node Type": "Seq Scan",                                                                                                                                                 +
                       "Parent Relationship": "Outer",                                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                                 +
                       "Relation Name": "company_type",                                                                                                                                         +
                       "Alias": "ct",                                                                                                                                                           +
                       "Startup Cost": 0.00,                                                                                                                                                    +
                       "Total Cost": 0.03,                                                                                                                                                      +
                       "Plan Rows": 4,                                                                                                                                                          +
                       "Plan Width": 4,                                                                                                                                                         +
                       "Actual Startup Time": 0.012,                                                                                                                                            +
                       "Actual Total Time": 0.015,                                                                                                                                              +
                       "Actual Rows": 2,                                                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                                                       +
                       "Shared Hit Blocks": 1,                                                                                                                                                  +
                       "Shared Read Blocks": 0,                                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                                                   +
                       "Temp Written Blocks": 0                                                                                                                                                 +
                     }                                                                                                                                                                          +
                   ]                                                                                                                                                                            +
                 }                                                                                                                                                                              +
               ]                                                                                                                                                                                +
             },                                                                                                                                                                                 +
             {                                                                                                                                                                                  +
               "Node Type": "Index Scan",                                                                                                                                                       +
               "Parent Relationship": "Inner",                                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                                         +
               "Scan Direction": "Forward",                                                                                                                                                     +
               "Index Name": "keyword_pkey",                                                                                                                                                    +
               "Relation Name": "keyword",                                                                                                                                                      +
               "Alias": "k",                                                                                                                                                                    +
               "Startup Cost": 0.01,                                                                                                                                                            +
               "Total Cost": 0.01,                                                                                                                                                              +
               "Plan Rows": 1,                                                                                                                                                                  +
               "Plan Width": 4,                                                                                                                                                                 +
               "Actual Startup Time": 0.376,                                                                                                                                                    +
               "Actual Total Time": 0.376,                                                                                                                                                      +
               "Actual Rows": 1,                                                                                                                                                                +
               "Actual Loops": 628,                                                                                                                                                             +
               "Index Cond": "(id = mk.keyword_id)",                                                                                                                                            +
               "Rows Removed by Index Recheck": 0,                                                                                                                                              +
               "Shared Hit Blocks": 2289,                                                                                                                                                       +
               "Shared Read Blocks": 227,                                                                                                                                                       +
               "Shared Dirtied Blocks": 0,                                                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                                                           +
               "Temp Written Blocks": 0                                                                                                                                                         +
             }                                                                                                                                                                                  +
           ]                                                                                                                                                                                    +
         }                                                                                                                                                                                      +
       ]                                                                                                                                                                                        +
     },                                                                                                                                                                                         +
     "Planning Time": 9534.622,                                                                                                                                                                 +
     "Triggers": [                                                                                                                                                                              +
     ],                                                                                                                                                                                         +
     "Execution Time": 45691.658                                                                                                                                                                +
   }                                                                                                                                                                                            +
 ]
(1 row)

