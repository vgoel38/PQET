                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                  +
   {                                                                                                                                                                                +
     "Plan": {                                                                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                                                                    +
       "Strategy": "Plain",                                                                                                                                                         +
       "Partial Mode": "Simple",                                                                                                                                                    +
       "Parallel Aware": false,                                                                                                                                                     +
       "Startup Cost": 41.66,                                                                                                                                                       +
       "Total Cost": 41.66,                                                                                                                                                         +
       "Plan Rows": 1,                                                                                                                                                              +
       "Plan Width": 96,                                                                                                                                                            +
       "Actual Startup Time": 2539.803,                                                                                                                                             +
       "Actual Total Time": 2539.803,                                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                                            +
       "Actual Loops": 1,                                                                                                                                                           +
       "Shared Hit Blocks": 43710,                                                                                                                                                  +
       "Shared Read Blocks": 566,                                                                                                                                                   +
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
           "Startup Cost": 0.16,                                                                                                                                                    +
           "Total Cost": 41.66,                                                                                                                                                     +
           "Plan Rows": 1,                                                                                                                                                          +
           "Plan Width": 48,                                                                                                                                                        +
           "Actual Startup Time": 1584.700,                                                                                                                                         +
           "Actual Total Time": 2539.694,                                                                                                                                           +
           "Actual Rows": 15,                                                                                                                                                       +
           "Actual Loops": 1,                                                                                                                                                       +
           "Inner Unique": false,                                                                                                                                                   +
           "Join Filter": "(n.id = an.person_id)",                                                                                                                                  +
           "Rows Removed by Join Filter": 0,                                                                                                                                        +
           "Shared Hit Blocks": 43710,                                                                                                                                              +
           "Shared Read Blocks": 566,                                                                                                                                               +
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
               "Startup Cost": 0.15,                                                                                                                                                +
               "Total Cost": 41.52,                                                                                                                                                 +
               "Plan Rows": 1,                                                                                                                                                      +
               "Plan Width": 60,                                                                                                                                                    +
               "Actual Startup Time": 1550.561,                                                                                                                                     +
               "Actual Total Time": 2500.604,                                                                                                                                       +
               "Actual Rows": 5,                                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                                   +
               "Inner Unique": true,                                                                                                                                                +
               "Join Filter": "(cc.status_id = cct2.id)",                                                                                                                           +
               "Rows Removed by Join Filter": 0,                                                                                                                                    +
               "Shared Hit Blocks": 43689,                                                                                                                                          +
               "Shared Read Blocks": 562,                                                                                                                                           +
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
                   "Startup Cost": 0.15,                                                                                                                                            +
                   "Total Cost": 41.49,                                                                                                                                             +
                   "Plan Rows": 1,                                                                                                                                                  +
                   "Plan Width": 64,                                                                                                                                                +
                   "Actual Startup Time": 1550.511,                                                                                                                                 +
                   "Actual Total Time": 2500.542,                                                                                                                                   +
                   "Actual Rows": 5,                                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                               +
                   "Inner Unique": true,                                                                                                                                            +
                   "Join Filter": "(ci.person_id = n.id)",                                                                                                                          +
                   "Rows Removed by Join Filter": 0,                                                                                                                                +
                   "Shared Hit Blocks": 43688,                                                                                                                                      +
                   "Shared Read Blocks": 562,                                                                                                                                       +
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
                       "Startup Cost": 0.14,                                                                                                                                        +
                       "Total Cost": 41.05,                                                                                                                                         +
                       "Plan Rows": 1,                                                                                                                                              +
                       "Plan Width": 45,                                                                                                                                            +
                       "Actual Startup Time": 1535.889,                                                                                                                             +
                       "Actual Total Time": 2485.788,                                                                                                                               +
                       "Actual Rows": 5,                                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                           +
                       "Inner Unique": true,                                                                                                                                        +
                       "Join Filter": "(ci.role_id = rt.id)",                                                                                                                       +
                       "Rows Removed by Join Filter": 0,                                                                                                                            +
                       "Shared Hit Blocks": 43671,                                                                                                                                  +
                       "Shared Read Blocks": 559,                                                                                                                                   +
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
                           "Startup Cost": 0.14,                                                                                                                                    +
                           "Total Cost": 41.02,                                                                                                                                     +
                           "Plan Rows": 1,                                                                                                                                          +
                           "Plan Width": 49,                                                                                                                                        +
                           "Actual Startup Time": 1535.847,                                                                                                                         +
                           "Actual Total Time": 2485.726,                                                                                                                           +
                           "Actual Rows": 5,                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Inner Unique": true,                                                                                                                                    +
                           "Shared Hit Blocks": 43670,                                                                                                                              +
                           "Shared Read Blocks": 559,                                                                                                                               +
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
                               "Startup Cost": 0.12,                                                                                                                                +
                               "Total Cost": 40.93,                                                                                                                                 +
                               "Plan Rows": 1,                                                                                                                                      +
                               "Plan Width": 53,                                                                                                                                    +
                               "Actual Startup Time": 1526.876,                                                                                                                     +
                               "Actual Total Time": 2172.646,                                                                                                                       +
                               "Actual Rows": 22,                                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                                   +
                               "Inner Unique": false,                                                                                                                               +
                               "Join Filter": "(t.id = mc.movie_id)",                                                                                                               +
                               "Rows Removed by Join Filter": 0,                                                                                                                    +
                               "Shared Hit Blocks": 43616,                                                                                                                          +
                               "Shared Read Blocks": 525,                                                                                                                           +
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
                                   "Startup Cost": 0.11,                                                                                                                            +
                                   "Total Cost": 40.77,                                                                                                                             +
                                   "Plan Rows": 1,                                                                                                                                  +
                                   "Plan Width": 69,                                                                                                                                +
                                   "Actual Startup Time": 1489.051,                                                                                                                 +
                                   "Actual Total Time": 2127.619,                                                                                                                   +
                                   "Actual Rows": 1,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                               +
                                   "Inner Unique": true,                                                                                                                            +
                                   "Join Filter": "(it3.id = pi.info_type_id)",                                                                                                     +
                                   "Rows Removed by Join Filter": 162,                                                                                                              +
                                   "Shared Hit Blocks": 43615,                                                                                                                      +
                                   "Shared Read Blocks": 521,                                                                                                                       +
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
                                       "Startup Cost": 0.11,                                                                                                                        +
                                       "Total Cost": 40.72,                                                                                                                         +
                                       "Plan Rows": 5,                                                                                                                              +
                                       "Plan Width": 73,                                                                                                                            +
                                       "Actual Startup Time": 1486.182,                                                                                                             +
                                       "Actual Total Time": 2127.368,                                                                                                               +
                                       "Actual Rows": 163,                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                           +
                                       "Inner Unique": false,                                                                                                                       +
                                       "Shared Hit Blocks": 43614,                                                                                                                  +
                                       "Shared Read Blocks": 521,                                                                                                                   +
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
                                           "Startup Cost": 0.10,                                                                                                                    +
                                           "Total Cost": 39.57,                                                                                                                     +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 65,                                                                                                                        +
                                           "Actual Startup Time": 1449.489,                                                                                                         +
                                           "Actual Total Time": 2087.948,                                                                                                           +
                                           "Actual Rows": 1,                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Inner Unique": false,                                                                                                                   +
                                           "Join Filter": "(cct1.id = cc.subject_id)",                                                                                              +
                                           "Rows Removed by Join Filter": 0,                                                                                                        +
                                           "Shared Hit Blocks": 43613,                                                                                                              +
                                           "Shared Read Blocks": 509,                                                                                                               +
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
                                               "Relation Name": "comp_cast_type",                                                                                                   +
                                               "Alias": "cct1",                                                                                                                     +
                                               "Startup Cost": 0.00,                                                                                                                +
                                               "Total Cost": 0.03,                                                                                                                  +
                                               "Plan Rows": 1,                                                                                                                      +
                                               "Plan Width": 4,                                                                                                                     +
                                               "Actual Startup Time": 0.017,                                                                                                        +
                                               "Actual Total Time": 0.019,                                                                                                          +
                                               "Actual Rows": 1,                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                   +
                                               "Filter": "((kind)::text = 'cast'::text)",                                                                                           +
                                               "Rows Removed by Filter": 3,                                                                                                         +
                                               "Shared Hit Blocks": 1,                                                                                                              +
                                               "Shared Read Blocks": 0,                                                                                                             +
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
                                               "Startup Cost": 0.10,                                                                                                                +
                                               "Total Cost": 39.54,                                                                                                                 +
                                               "Plan Rows": 1,                                                                                                                      +
                                               "Plan Width": 69,                                                                                                                    +
                                               "Actual Startup Time": 1449.465,                                                                                                     +
                                               "Actual Total Time": 2087.920,                                                                                                       +
                                               "Actual Rows": 1,                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                   +
                                               "Shared Hit Blocks": 43612,                                                                                                          +
                                               "Shared Read Blocks": 509,                                                                                                           +
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
                                                   "Startup Cost": 0.10,                                                                                                            +
                                                   "Total Cost": 39.54,                                                                                                             +
                                                   "Plan Rows": 1,                                                                                                                  +
                                                   "Plan Width": 69,                                                                                                                +
                                                   "Actual Startup Time": 1449.453,                                                                                                 +
                                                   "Actual Total Time": 2087.907,                                                                                                   +
                                                   "Actual Rows": 1,                                                                                                                +
                                                   "Actual Loops": 1,                                                                                                               +
                                                   "Inner Unique": false,                                                                                                           +
                                                   "Join Filter": "(t.id = cc.movie_id)",                                                                                           +
                                                   "Rows Removed by Join Filter": 0,                                                                                                +
                                                   "Shared Hit Blocks": 43612,                                                                                                      +
                                                   "Shared Read Blocks": 509,                                                                                                       +
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
                                                       "Node Type": "Nested Loop",                                                                                                  +
                                                       "Parent Relationship": "Outer",                                                                                              +
                                                       "Parallel Aware": false,                                                                                                     +
                                                       "Join Type": "Inner",                                                                                                        +
                                                       "Startup Cost": 0.08,                                                                                                        +
                                                       "Total Cost": 39.47,                                                                                                         +
                                                       "Plan Rows": 1,                                                                                                              +
                                                       "Plan Width": 57,                                                                                                            +
                                                       "Actual Startup Time": 1412.530,                                                                                             +
                                                       "Actual Total Time": 2050.983,                                                                                               +
                                                       "Actual Rows": 1,                                                                                                            +
                                                       "Actual Loops": 1,                                                                                                           +
                                                       "Inner Unique": false,                                                                                                       +
                                                       "Join Filter": "(it.id = mi.info_type_id)",                                                                                  +
                                                       "Rows Removed by Join Filter": 0,                                                                                            +
                                                       "Shared Hit Blocks": 43610,                                                                                                  +
                                                       "Shared Read Blocks": 507,                                                                                                   +
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
                                                           "Node Type": "Seq Scan",                                                                                                 +
                                                           "Parent Relationship": "Outer",                                                                                          +
                                                           "Parallel Aware": false,                                                                                                 +
                                                           "Relation Name": "info_type",                                                                                            +
                                                           "Alias": "it",                                                                                                           +
                                                           "Startup Cost": 0.00,                                                                                                    +
                                                           "Total Cost": 0.05,                                                                                                      +
                                                           "Plan Rows": 1,                                                                                                          +
                                                           "Plan Width": 4,                                                                                                         +
                                                           "Actual Startup Time": 0.032,                                                                                            +
                                                           "Actual Total Time": 0.048,                                                                                              +
                                                           "Actual Rows": 1,                                                                                                        +
                                                           "Actual Loops": 1,                                                                                                       +
                                                           "Filter": "((info)::text = 'release dates'::text)",                                                                      +
                                                           "Rows Removed by Filter": 112,                                                                                           +
                                                           "Shared Hit Blocks": 1,                                                                                                  +
                                                           "Shared Read Blocks": 0,                                                                                                 +
                                                           "Shared Dirtied Blocks": 0,                                                                                              +
                                                           "Shared Written Blocks": 0,                                                                                              +
                                                           "Local Hit Blocks": 0,                                                                                                   +
                                                           "Local Read Blocks": 0,                                                                                                  +
                                                           "Local Dirtied Blocks": 0,                                                                                               +
                                                           "Local Written Blocks": 0,                                                                                               +
                                                           "Temp Read Blocks": 0,                                                                                                   +
                                                           "Temp Written Blocks": 0                                                                                                 +
                                                         },                                                                                                                         +
                                                         {                                                                                                                          +
                                                           "Node Type": "Materialize",                                                                                              +
                                                           "Parent Relationship": "Inner",                                                                                          +
                                                           "Parallel Aware": false,                                                                                                 +
                                                           "Startup Cost": 0.08,                                                                                                    +
                                                           "Total Cost": 39.42,                                                                                                     +
                                                           "Plan Rows": 1,                                                                                                          +
                                                           "Plan Width": 61,                                                                                                        +
                                                           "Actual Startup Time": 1412.492,                                                                                         +
                                                           "Actual Total Time": 2050.927,                                                                                           +
                                                           "Actual Rows": 1,                                                                                                        +
                                                           "Actual Loops": 1,                                                                                                       +
                                                           "Shared Hit Blocks": 43609,                                                                                              +
                                                           "Shared Read Blocks": 507,                                                                                               +
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
                                                               "Startup Cost": 0.08,                                                                                                +
                                                               "Total Cost": 39.42,                                                                                                 +
                                                               "Plan Rows": 1,                                                                                                      +
                                                               "Plan Width": 61,                                                                                                    +
                                                               "Actual Startup Time": 1412.479,                                                                                     +
                                                               "Actual Total Time": 2050.913,                                                                                       +
                                                               "Actual Rows": 1,                                                                                                    +
                                                               "Actual Loops": 1,                                                                                                   +
                                                               "Inner Unique": false,                                                                                               +
                                                               "Join Filter": "(t.id = mi.movie_id)",                                                                               +
                                                               "Rows Removed by Join Filter": 0,                                                                                    +
                                                               "Shared Hit Blocks": 43609,                                                                                          +
                                                               "Shared Read Blocks": 507,                                                                                           +
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
                                                                   "Node Type": "Nested Loop",                                                                                      +
                                                                   "Parent Relationship": "Outer",                                                                                  +
                                                                   "Parallel Aware": false,                                                                                         +
                                                                   "Join Type": "Inner",                                                                                            +
                                                                   "Startup Cost": 0.07,                                                                                            +
                                                                   "Total Cost": 38.65,                                                                                             +
                                                                   "Plan Rows": 1,                                                                                                  +
                                                                   "Plan Width": 53,                                                                                                +
                                                                   "Actual Startup Time": 1346.661,                                                                                 +
                                                                   "Actual Total Time": 1869.714,                                                                                   +
                                                                   "Actual Rows": 1,                                                                                                +
                                                                   "Actual Loops": 1,                                                                                               +
                                                                   "Inner Unique": true,                                                                                            +
                                                                   "Shared Hit Blocks": 43608,                                                                                      +
                                                                   "Shared Read Blocks": 470,                                                                                       +
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
                                                                       "Node Type": "Nested Loop",                                                                                  +
                                                                       "Parent Relationship": "Outer",                                                                              +
                                                                       "Parallel Aware": false,                                                                                     +
                                                                       "Join Type": "Inner",                                                                                        +
                                                                       "Startup Cost": 0.06,                                                                                        +
                                                                       "Total Cost": 37.53,                                                                                         +
                                                                       "Plan Rows": 1,                                                                                              +
                                                                       "Plan Width": 41,                                                                                            +
                                                                       "Actual Startup Time": 1125.324,                                                                             +
                                                                       "Actual Total Time": 1475.734,                                                                               +
                                                                       "Actual Rows": 38,                                                                                           +
                                                                       "Actual Loops": 1,                                                                                           +
                                                                       "Inner Unique": true,                                                                                        +
                                                                       "Shared Hit Blocks": 43541,                                                                                  +
                                                                       "Shared Read Blocks": 385,                                                                                   +
                                                                       "Shared Dirtied Blocks": 0,                                                                                  +
                                                                       "Shared Written Blocks": 0,                                                                                  +
                                                                       "Local Hit Blocks": 0,                                                                                       +
                                                                       "Local Read Blocks": 0,                                                                                      +
                                                                       "Local Dirtied Blocks": 0,                                                                                   +
                                                                       "Local Written Blocks": 0,                                                                                   +
                                                                       "Temp Read Blocks": 0,                                                                                       +
                                                                       "Temp Written Blocks": 0,                                                                                    +
                                                                       "Plans": [                                                                                                   +
                                                                         {                                                                                                          +
                                                                           "Node Type": "Nested Loop",                                                                              +
                                                                           "Parent Relationship": "Outer",                                                                          +
                                                                           "Parallel Aware": false,                                                                                 +
                                                                           "Join Type": "Inner",                                                                                    +
                                                                           "Startup Cost": 0.04,                                                                                    +
                                                                           "Total Cost": 37.46,                                                                                     +
                                                                           "Plan Rows": 1,                                                                                          +
                                                                           "Plan Width": 45,                                                                                        +
                                                                           "Actual Startup Time": 120.140,                                                                          +
                                                                           "Actual Total Time": 1224.043,                                                                           +
                                                                           "Actual Rows": 4888,                                                                                     +
                                                                           "Actual Loops": 1,                                                                                       +
                                                                           "Inner Unique": false,                                                                                   +
                                                                           "Join Filter": "(t.id = ci.movie_id)",                                                                   +
                                                                           "Rows Removed by Join Filter": 0,                                                                        +
                                                                           "Shared Hit Blocks": 24125,                                                                              +
                                                                           "Shared Read Blocks": 249,                                                                               +
                                                                           "Shared Dirtied Blocks": 0,                                                                              +
                                                                           "Shared Written Blocks": 0,                                                                              +
                                                                           "Local Hit Blocks": 0,                                                                                   +
                                                                           "Local Read Blocks": 0,                                                                                  +
                                                                           "Local Dirtied Blocks": 0,                                                                               +
                                                                           "Local Written Blocks": 0,                                                                               +
                                                                           "Temp Read Blocks": 0,                                                                                   +
                                                                           "Temp Written Blocks": 0,                                                                                +
                                                                           "Plans": [                                                                                               +
                                                                             {                                                                                                      +
                                                                               "Node Type": "Nested Loop",                                                                          +
                                                                               "Parent Relationship": "Outer",                                                                      +
                                                                               "Parallel Aware": false,                                                                             +
                                                                               "Join Type": "Inner",                                                                                +
                                                                               "Startup Cost": 0.03,                                                                                +
                                                                               "Total Cost": 36.94,                                                                                 +
                                                                               "Plan Rows": 2,                                                                                      +
                                                                               "Plan Width": 29,                                                                                    +
                                                                               "Actual Startup Time": 87.641,                                                                       +
                                                                               "Actual Total Time": 113.082,                                                                        +
                                                                               "Actual Rows": 136,                                                                                  +
                                                                               "Actual Loops": 1,                                                                                   +
                                                                               "Inner Unique": false,                                                                               +
                                                                               "Shared Hit Blocks": 5,                                                                              +
                                                                               "Shared Read Blocks": 9,                                                                             +
                                                                               "Shared Dirtied Blocks": 0,                                                                          +
                                                                               "Shared Written Blocks": 0,                                                                          +
                                                                               "Local Hit Blocks": 0,                                                                               +
                                                                               "Local Read Blocks": 0,                                                                              +
                                                                               "Local Dirtied Blocks": 0,                                                                           +
                                                                               "Local Written Blocks": 0,                                                                           +
                                                                               "Temp Read Blocks": 0,                                                                               +
                                                                               "Temp Written Blocks": 0,                                                                            +
                                                                               "Plans": [                                                                                           +
                                                                                 {                                                                                                  +
                                                                                   "Node Type": "Index Scan",                                                                       +
                                                                                   "Parent Relationship": "Outer",                                                                  +
                                                                                   "Parallel Aware": false,                                                                         +
                                                                                   "Scan Direction": "Forward",                                                                     +
                                                                                   "Index Name": "title_idx_title",                                                                 +
                                                                                   "Relation Name": "title",                                                                        +
                                                                                   "Alias": "t",                                                                                    +
                                                                                   "Startup Cost": 0.01,                                                                            +
                                                                                   "Total Cost": 6.13,                                                                              +
                                                                                   "Plan Rows": 1,                                                                                  +
                                                                                   "Plan Width": 21,                                                                                +
                                                                                   "Actual Startup Time": 43.640,                                                                   +
                                                                                   "Actual Total Time": 68.889,                                                                     +
                                                                                   "Actual Rows": 2,                                                                                +
                                                                                   "Actual Loops": 1,                                                                               +
                                                                                   "Index Cond": "(title = 'Shrek 2'::text)",                                                       +
                                                                                   "Rows Removed by Index Recheck": 0,                                                              +
                                                                                   "Filter": "((production_year >= 2000) AND (production_year <= 2005))",                           +
                                                                                   "Rows Removed by Filter": 1,                                                                     +
                                                                                   "Shared Hit Blocks": 0,                                                                          +
                                                                                   "Shared Read Blocks": 6,                                                                         +
                                                                                   "Shared Dirtied Blocks": 0,                                                                      +
                                                                                   "Shared Written Blocks": 0,                                                                      +
                                                                                   "Local Hit Blocks": 0,                                                                           +
                                                                                   "Local Read Blocks": 0,                                                                          +
                                                                                   "Local Dirtied Blocks": 0,                                                                       +
                                                                                   "Local Written Blocks": 0,                                                                       +
                                                                                   "Temp Read Blocks": 0,                                                                           +
                                                                                   "Temp Written Blocks": 0                                                                         +
                                                                                 },                                                                                                 +
                                                                                 {                                                                                                  +
                                                                                   "Node Type": "Index Scan",                                                                       +
                                                                                   "Parent Relationship": "Inner",                                                                  +
                                                                                   "Parallel Aware": false,                                                                         +
                                                                                   "Scan Direction": "Forward",                                                                     +
                                                                                   "Index Name": "movie_id_movie_keyword",                                                          +
                                                                                   "Relation Name": "movie_keyword",                                                                +
                                                                                   "Alias": "mk",                                                                                   +
                                                                                   "Startup Cost": 0.01,                                                                            +
                                                                                   "Total Cost": 6.16,                                                                              +
                                                                                   "Plan Rows": 11,                                                                                 +
                                                                                   "Plan Width": 8,                                                                                 +
                                                                                   "Actual Startup Time": 22.009,                                                                   +
                                                                                   "Actual Total Time": 22.048,                                                                     +
                                                                                   "Actual Rows": 68,                                                                               +
                                                                                   "Actual Loops": 2,                                                                               +
                                                                                   "Index Cond": "(movie_id = t.id)",                                                               +
                                                                                   "Rows Removed by Index Recheck": 0,                                                              +
                                                                                   "Shared Hit Blocks": 5,                                                                          +
                                                                                   "Shared Read Blocks": 3,                                                                         +
                                                                                   "Shared Dirtied Blocks": 0,                                                                      +
                                                                                   "Shared Written Blocks": 0,                                                                      +
                                                                                   "Local Hit Blocks": 0,                                                                           +
                                                                                   "Local Read Blocks": 0,                                                                          +
                                                                                   "Local Dirtied Blocks": 0,                                                                       +
                                                                                   "Local Written Blocks": 0,                                                                       +
                                                                                   "Temp Read Blocks": 0,                                                                           +
                                                                                   "Temp Written Blocks": 0                                                                         +
                                                                                 }                                                                                                  +
                                                                               ]                                                                                                    +
                                                                             },                                                                                                     +
                                                                             {                                                                                                      +
                                                                               "Node Type": "Index Scan",                                                                           +
                                                                               "Parent Relationship": "Inner",                                                                      +
                                                                               "Parallel Aware": false,                                                                             +
                                                                               "Scan Direction": "Forward",                                                                         +
                                                                               "Index Name": "movie_id_cast_info",                                                                  +
                                                                               "Relation Name": "cast_info",                                                                        +
                                                                               "Alias": "ci",                                                                                       +
                                                                               "Startup Cost": 0.02,                                                                                +
                                                                               "Total Cost": 0.26,                                                                                  +
                                                                               "Plan Rows": 1,                                                                                      +
                                                                               "Plan Width": 16,                                                                                    +
                                                                               "Actual Startup Time": 0.247,                                                                        +
                                                                               "Actual Total Time": 8.147,                                                                          +
                                                                               "Actual Rows": 36,                                                                                   +
                                                                               "Actual Loops": 136,                                                                                 +
                                                                               "Index Cond": "(movie_id = mk.movie_id)",                                                            +
                                                                               "Rows Removed by Index Recheck": 0,                                                                  +
                                                                               "Filter": "(note = ANY ('{(voice),\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                                                               "Rows Removed by Filter": 155,                                                                       +
                                                                               "Shared Hit Blocks": 24120,                                                                          +
                                                                               "Shared Read Blocks": 240,                                                                           +
                                                                               "Shared Dirtied Blocks": 0,                                                                          +
                                                                               "Shared Written Blocks": 0,                                                                          +
                                                                               "Local Hit Blocks": 0,                                                                               +
                                                                               "Local Read Blocks": 0,                                                                              +
                                                                               "Local Dirtied Blocks": 0,                                                                           +
                                                                               "Local Written Blocks": 0,                                                                           +
                                                                               "Temp Read Blocks": 0,                                                                               +
                                                                               "Temp Written Blocks": 0                                                                             +
                                                                             }                                                                                                      +
                                                                           ]                                                                                                        +
                                                                         },                                                                                                         +
                                                                         {                                                                                                          +
                                                                           "Node Type": "Index Scan",                                                                               +
                                                                           "Parent Relationship": "Inner",                                                                          +
                                                                           "Parallel Aware": false,                                                                                 +
                                                                           "Scan Direction": "Forward",                                                                             +
                                                                           "Index Name": "keyword_pkey",                                                                            +
                                                                           "Relation Name": "keyword",                                                                              +
                                                                           "Alias": "k",                                                                                            +
                                                                           "Startup Cost": 0.01,                                                                                    +
                                                                           "Total Cost": 0.01,                                                                                      +
                                                                           "Plan Rows": 1,                                                                                          +
                                                                           "Plan Width": 4,                                                                                         +
                                                                           "Actual Startup Time": 0.051,                                                                            +
                                                                           "Actual Total Time": 0.051,                                                                              +
                                                                           "Actual Rows": 0,                                                                                        +
                                                                           "Actual Loops": 4888,                                                                                    +
                                                                           "Index Cond": "(id = mk.keyword_id)",                                                                    +
                                                                           "Rows Removed by Index Recheck": 0,                                                                      +
                                                                           "Filter": "(keyword = 'computer-animation'::text)",                                                      +
                                                                           "Rows Removed by Filter": 1,                                                                             +
                                                                           "Shared Hit Blocks": 19416,                                                                              +
                                                                           "Shared Read Blocks": 136,                                                                               +
                                                                           "Shared Dirtied Blocks": 0,                                                                              +
                                                                           "Shared Written Blocks": 0,                                                                              +
                                                                           "Local Hit Blocks": 0,                                                                                   +
                                                                           "Local Read Blocks": 0,                                                                                  +
                                                                           "Local Dirtied Blocks": 0,                                                                               +
                                                                           "Local Written Blocks": 0,                                                                               +
                                                                           "Temp Read Blocks": 0,                                                                                   +
                                                                           "Temp Written Blocks": 0                                                                                 +
                                                                         }                                                                                                          +
                                                                       ]                                                                                                            +
                                                                     },                                                                                                             +
                                                                     {                                                                                                              +
                                                                       "Node Type": "Index Scan",                                                                                   +
                                                                       "Parent Relationship": "Inner",                                                                              +
                                                                       "Parallel Aware": false,                                                                                     +
                                                                       "Scan Direction": "Forward",                                                                                 +
                                                                       "Index Name": "char_name_pkey",                                                                              +
                                                                       "Relation Name": "char_name",                                                                                +
                                                                       "Alias": "chn",                                                                                              +
                                                                       "Startup Cost": 0.01,                                                                                        +
                                                                       "Total Cost": 0.19,                                                                                          +
                                                                       "Plan Rows": 1,                                                                                              +
                                                                       "Plan Width": 20,                                                                                            +
                                                                       "Actual Startup Time": 10.364,                                                                               +
                                                                       "Actual Total Time": 10.364,                                                                                 +
                                                                       "Actual Rows": 0,                                                                                            +
                                                                       "Actual Loops": 38,                                                                                          +
                                                                       "Index Cond": "(id = ci.person_role_id)",                                                                    +
                                                                       "Rows Removed by Index Recheck": 0,                                                                          +
                                                                       "Filter": "(name = 'Queen'::text)",                                                                          +
                                                                       "Rows Removed by Filter": 1,                                                                                 +
                                                                       "Shared Hit Blocks": 67,                                                                                     +
                                                                       "Shared Read Blocks": 85,                                                                                    +
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
                                                                 },                                                                                                                 +
                                                                 {                                                                                                                  +
                                                                   "Node Type": "Index Scan",                                                                                       +
                                                                   "Parent Relationship": "Inner",                                                                                  +
                                                                   "Parallel Aware": false,                                                                                         +
                                                                   "Scan Direction": "Forward",                                                                                     +
                                                                   "Index Name": "movie_id_movie_info",                                                                             +
                                                                   "Relation Name": "movie_info",                                                                                   +
                                                                   "Alias": "mi",                                                                                                   +
                                                                   "Startup Cost": 0.01,                                                                                            +
                                                                   "Total Cost": 0.15,                                                                                              +
                                                                   "Plan Rows": 1,                                                                                                  +
                                                                   "Plan Width": 8,                                                                                                 +
                                                                   "Actual Startup Time": 65.802,                                                                                   +
                                                                   "Actual Total Time": 181.181,                                                                                    +
                                                                   "Actual Rows": 1,                                                                                                +
                                                                   "Actual Loops": 1,                                                                                               +
                                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                        +
                                                                   "Rows Removed by Index Recheck": 0,                                                                              +
                                                                   "Filter": "(info ~~ 'USA:%200%'::text)",                                                                         +
                                                                   "Rows Removed by Filter": 456,                                                                                   +
                                                                   "Shared Hit Blocks": 1,                                                                                          +
                                                                   "Shared Read Blocks": 37,                                                                                        +
                                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                                   "Shared Written Blocks": 0,                                                                                      +
                                                                   "Local Hit Blocks": 0,                                                                                           +
                                                                   "Local Read Blocks": 0,                                                                                          +
                                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                                   "Local Written Blocks": 0,                                                                                       +
                                                                   "Temp Read Blocks": 0,                                                                                           +
                                                                   "Temp Written Blocks": 0                                                                                         +
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
                                                       "Index Name": "movie_id_complete_cast",                                                                                      +
                                                       "Relation Name": "complete_cast",                                                                                            +
                                                       "Alias": "cc",                                                                                                               +
                                                       "Startup Cost": 0.01,                                                                                                        +
                                                       "Total Cost": 0.01,                                                                                                          +
                                                       "Plan Rows": 1,                                                                                                              +
                                                       "Plan Width": 12,                                                                                                            +
                                                       "Actual Startup Time": 36.905,                                                                                               +
                                                       "Actual Total Time": 36.907,                                                                                                 +
                                                       "Actual Rows": 1,                                                                                                            +
                                                       "Actual Loops": 1,                                                                                                           +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                    +
                                                       "Rows Removed by Index Recheck": 0,                                                                                          +
                                                       "Shared Hit Blocks": 2,                                                                                                      +
                                                       "Shared Read Blocks": 2,                                                                                                     +
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
                                           "Index Name": "person_id_person_info",                                                                                                   +
                                           "Relation Name": "person_info",                                                                                                          +
                                           "Alias": "pi",                                                                                                                           +
                                           "Startup Cost": 0.01,                                                                                                                    +
                                           "Total Cost": 0.23,                                                                                                                      +
                                           "Plan Rows": 5,                                                                                                                          +
                                           "Plan Width": 8,                                                                                                                         +
                                           "Actual Startup Time": 36.680,                                                                                                           +
                                           "Actual Total Time": 39.314,                                                                                                             +
                                           "Actual Rows": 163,                                                                                                                      +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Index Cond": "(person_id = ci.person_id)",                                                                                              +
                                           "Rows Removed by Index Recheck": 0,                                                                                                      +
                                           "Shared Hit Blocks": 1,                                                                                                                  +
                                           "Shared Read Blocks": 12,                                                                                                                +
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
                                       "Actual Startup Time": 0.000,                                                                                                                +
                                       "Actual Total Time": 0.001,                                                                                                                  +
                                       "Actual Rows": 1,                                                                                                                            +
                                       "Actual Loops": 163,                                                                                                                         +
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
                                           "Alias": "it3",                                                                                                                          +
                                           "Startup Cost": 0.00,                                                                                                                    +
                                           "Total Cost": 0.05,                                                                                                                      +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 4,                                                                                                                         +
                                           "Actual Startup Time": 0.035,                                                                                                            +
                                           "Actual Total Time": 0.067,                                                                                                              +
                                           "Actual Rows": 1,                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Filter": "((info)::text = 'height'::text)",                                                                                             +
                                           "Rows Removed by Filter": 112,                                                                                                           +
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
                                   "Index Name": "movie_id_movie_companies",                                                                                                        +
                                   "Relation Name": "movie_companies",                                                                                                              +
                                   "Alias": "mc",                                                                                                                                   +
                                   "Startup Cost": 0.01,                                                                                                                            +
                                   "Total Cost": 0.03,                                                                                                                              +
                                   "Plan Rows": 2,                                                                                                                                  +
                                   "Plan Width": 8,                                                                                                                                 +
                                   "Actual Startup Time": 37.810,                                                                                                                   +
                                   "Actual Total Time": 44.967,                                                                                                                     +
                                   "Actual Rows": 22,                                                                                                                               +
                                   "Actual Loops": 1,                                                                                                                               +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                        +
                                   "Rows Removed by Index Recheck": 0,                                                                                                              +
                                   "Shared Hit Blocks": 1,                                                                                                                          +
                                   "Shared Read Blocks": 4,                                                                                                                         +
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
                               "Index Name": "company_name_pkey",                                                                                                                   +
                               "Relation Name": "company_name",                                                                                                                     +
                               "Alias": "cn",                                                                                                                                       +
                               "Startup Cost": 0.01,                                                                                                                                +
                               "Total Cost": 0.02,                                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                                      +
                               "Plan Width": 4,                                                                                                                                     +
                               "Actual Startup Time": 14.227,                                                                                                                       +
                               "Actual Total Time": 14.227,                                                                                                                         +
                               "Actual Rows": 0,                                                                                                                                    +
                               "Actual Loops": 22,                                                                                                                                  +
                               "Index Cond": "(id = mc.company_id)",                                                                                                                +
                               "Rows Removed by Index Recheck": 0,                                                                                                                  +
                               "Filter": "((country_code)::text = '[us]'::text)",                                                                                                   +
                               "Rows Removed by Filter": 1,                                                                                                                         +
                               "Shared Hit Blocks": 54,                                                                                                                             +
                               "Shared Read Blocks": 34,                                                                                                                            +
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
                           "Node Type": "Materialize",                                                                                                                              +
                           "Parent Relationship": "Inner",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Startup Cost": 0.00,                                                                                                                                    +
                           "Total Cost": 0.03,                                                                                                                                      +
                           "Plan Rows": 1,                                                                                                                                          +
                           "Plan Width": 4,                                                                                                                                         +
                           "Actual Startup Time": 0.008,                                                                                                                            +
                           "Actual Total Time": 0.008,                                                                                                                              +
                           "Actual Rows": 1,                                                                                                                                        +
                           "Actual Loops": 5,                                                                                                                                       +
                           "Shared Hit Blocks": 1,                                                                                                                                  +
                           "Shared Read Blocks": 0,                                                                                                                                 +
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
                               "Node Type": "Seq Scan",                                                                                                                             +
                               "Parent Relationship": "Outer",                                                                                                                      +
                               "Parallel Aware": false,                                                                                                                             +
                               "Relation Name": "role_type",                                                                                                                        +
                               "Alias": "rt",                                                                                                                                       +
                               "Startup Cost": 0.00,                                                                                                                                +
                               "Total Cost": 0.03,                                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                                      +
                               "Plan Width": 4,                                                                                                                                     +
                               "Actual Startup Time": 0.020,                                                                                                                        +
                               "Actual Total Time": 0.020,                                                                                                                          +
                               "Actual Rows": 1,                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                   +
                               "Filter": "((role)::text = 'actress'::text)",                                                                                                        +
                               "Rows Removed by Filter": 1,                                                                                                                         +
                               "Shared Hit Blocks": 1,                                                                                                                              +
                               "Shared Read Blocks": 0,                                                                                                                             +
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
                     {                                                                                                                                                              +
                       "Node Type": "Index Scan",                                                                                                                                   +
                       "Parent Relationship": "Inner",                                                                                                                              +
                       "Parallel Aware": false,                                                                                                                                     +
                       "Scan Direction": "Forward",                                                                                                                                 +
                       "Index Name": "name_pkey",                                                                                                                                   +
                       "Relation Name": "name",                                                                                                                                     +
                       "Alias": "n",                                                                                                                                                +
                       "Startup Cost": 0.01,                                                                                                                                        +
                       "Total Cost": 0.09,                                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                                              +
                       "Plan Width": 19,                                                                                                                                            +
                       "Actual Startup Time": 2.941,                                                                                                                                +
                       "Actual Total Time": 2.941,                                                                                                                                  +
                       "Actual Rows": 1,                                                                                                                                            +
                       "Actual Loops": 5,                                                                                                                                           +
                       "Index Cond": "(id = pi.person_id)",                                                                                                                         +
                       "Rows Removed by Index Recheck": 0,                                                                                                                          +
                       "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                                                       +
                       "Rows Removed by Filter": 0,                                                                                                                                 +
                       "Shared Hit Blocks": 17,                                                                                                                                     +
                       "Shared Read Blocks": 3,                                                                                                                                     +
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
                   "Node Type": "Materialize",                                                                                                                                      +
                   "Parent Relationship": "Inner",                                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                                            +
                   "Total Cost": 0.03,                                                                                                                                              +
                   "Plan Rows": 1,                                                                                                                                                  +
                   "Plan Width": 4,                                                                                                                                                 +
                   "Actual Startup Time": 0.009,                                                                                                                                    +
                   "Actual Total Time": 0.009,                                                                                                                                      +
                   "Actual Rows": 1,                                                                                                                                                +
                   "Actual Loops": 5,                                                                                                                                               +
                   "Shared Hit Blocks": 1,                                                                                                                                          +
                   "Shared Read Blocks": 0,                                                                                                                                         +
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
                       "Relation Name": "comp_cast_type",                                                                                                                           +
                       "Alias": "cct2",                                                                                                                                             +
                       "Startup Cost": 0.00,                                                                                                                                        +
                       "Total Cost": 0.03,                                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                             +
                       "Actual Startup Time": 0.019,                                                                                                                                +
                       "Actual Total Time": 0.019,                                                                                                                                  +
                       "Actual Rows": 1,                                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                           +
                       "Filter": "((kind)::text = 'complete+verified'::text)",                                                                                                      +
                       "Rows Removed by Filter": 3,                                                                                                                                 +
                       "Shared Hit Blocks": 1,                                                                                                                                      +
                       "Shared Read Blocks": 0,                                                                                                                                     +
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
             },                                                                                                                                                                     +
             {                                                                                                                                                                      +
               "Node Type": "Index Scan",                                                                                                                                           +
               "Parent Relationship": "Inner",                                                                                                                                      +
               "Parallel Aware": false,                                                                                                                                             +
               "Scan Direction": "Forward",                                                                                                                                         +
               "Index Name": "person_id_aka_name",                                                                                                                                  +
               "Relation Name": "aka_name",                                                                                                                                         +
               "Alias": "an",                                                                                                                                                       +
               "Startup Cost": 0.01,                                                                                                                                                +
               "Total Cost": 0.03,                                                                                                                                                  +
               "Plan Rows": 2,                                                                                                                                                      +
               "Plan Width": 4,                                                                                                                                                     +
               "Actual Startup Time": 6.837,                                                                                                                                        +
               "Actual Total Time": 7.810,                                                                                                                                          +
               "Actual Rows": 3,                                                                                                                                                    +
               "Actual Loops": 5,                                                                                                                                                   +
               "Index Cond": "(person_id = pi.person_id)",                                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                                                  +
               "Shared Hit Blocks": 21,                                                                                                                                             +
               "Shared Read Blocks": 4,                                                                                                                                             +
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
         }                                                                                                                                                                          +
       ]                                                                                                                                                                            +
     },                                                                                                                                                                             +
     "Planning Time": 20252.574,                                                                                                                                                    +
     "Triggers": [                                                                                                                                                                  +
     ],                                                                                                                                                                             +
     "Execution Time": 2581.298                                                                                                                                                     +
   }                                                                                                                                                                                +
 ]
(1 row)

