                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                     +
   {                                                                                                                                                                                   +
     "Plan": {                                                                                                                                                                         +
       "Node Type": "Aggregate",                                                                                                                                                       +
       "Strategy": "Plain",                                                                                                                                                            +
       "Partial Mode": "Simple",                                                                                                                                                       +
       "Parallel Aware": false,                                                                                                                                                        +
       "Startup Cost": 42.10,                                                                                                                                                          +
       "Total Cost": 42.10,                                                                                                                                                            +
       "Plan Rows": 1,                                                                                                                                                                 +
       "Plan Width": 96,                                                                                                                                                               +
       "Actual Startup Time": 5844.599,                                                                                                                                                +
       "Actual Total Time": 5844.599,                                                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                                               +
       "Actual Loops": 1,                                                                                                                                                              +
       "Shared Hit Blocks": 3296886,                                                                                                                                                   +
       "Shared Read Blocks": 594,                                                                                                                                                      +
       "Shared Dirtied Blocks": 0,                                                                                                                                                     +
       "Shared Written Blocks": 0,                                                                                                                                                     +
       "Local Hit Blocks": 0,                                                                                                                                                          +
       "Local Read Blocks": 0,                                                                                                                                                         +
       "Local Dirtied Blocks": 0,                                                                                                                                                      +
       "Local Written Blocks": 0,                                                                                                                                                      +
       "Temp Read Blocks": 0,                                                                                                                                                          +
       "Temp Written Blocks": 0,                                                                                                                                                       +
       "Plans": [                                                                                                                                                                      +
         {                                                                                                                                                                             +
           "Node Type": "Nested Loop",                                                                                                                                                 +
           "Parent Relationship": "Outer",                                                                                                                                             +
           "Parallel Aware": false,                                                                                                                                                    +
           "Join Type": "Inner",                                                                                                                                                       +
           "Startup Cost": 0.16,                                                                                                                                                       +
           "Total Cost": 42.10,                                                                                                                                                        +
           "Plan Rows": 1,                                                                                                                                                             +
           "Plan Width": 48,                                                                                                                                                           +
           "Actual Startup Time": 2984.563,                                                                                                                                            +
           "Actual Total Time": 5843.778,                                                                                                                                              +
           "Actual Rows": 1620,                                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                                          +
           "Inner Unique": true,                                                                                                                                                       +
           "Join Filter": "(pi.info_type_id = it3.id)",                                                                                                                                +
           "Rows Removed by Join Filter": 3270,                                                                                                                                        +
           "Shared Hit Blocks": 3296886,                                                                                                                                               +
           "Shared Read Blocks": 594,                                                                                                                                                  +
           "Shared Dirtied Blocks": 0,                                                                                                                                                 +
           "Shared Written Blocks": 0,                                                                                                                                                 +
           "Local Hit Blocks": 0,                                                                                                                                                      +
           "Local Read Blocks": 0,                                                                                                                                                     +
           "Local Dirtied Blocks": 0,                                                                                                                                                  +
           "Local Written Blocks": 0,                                                                                                                                                  +
           "Temp Read Blocks": 0,                                                                                                                                                      +
           "Temp Written Blocks": 0,                                                                                                                                                   +
           "Plans": [                                                                                                                                                                  +
             {                                                                                                                                                                         +
               "Node Type": "Nested Loop",                                                                                                                                             +
               "Parent Relationship": "Outer",                                                                                                                                         +
               "Parallel Aware": false,                                                                                                                                                +
               "Join Type": "Inner",                                                                                                                                                   +
               "Startup Cost": 0.16,                                                                                                                                                   +
               "Total Cost": 42.05,                                                                                                                                                    +
               "Plan Rows": 1,                                                                                                                                                         +
               "Plan Width": 52,                                                                                                                                                       +
               "Actual Startup Time": 2685.790,                                                                                                                                        +
               "Actual Total Time": 5841.219,                                                                                                                                          +
               "Actual Rows": 4890,                                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                                      +
               "Inner Unique": true,                                                                                                                                                   +
               "Join Filter": "(cc.status_id = cct2.id)",                                                                                                                              +
               "Rows Removed by Join Filter": 0,                                                                                                                                       +
               "Shared Hit Blocks": 3296885,                                                                                                                                           +
               "Shared Read Blocks": 594,                                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                                             +
               "Shared Written Blocks": 0,                                                                                                                                             +
               "Local Hit Blocks": 0,                                                                                                                                                  +
               "Local Read Blocks": 0,                                                                                                                                                 +
               "Local Dirtied Blocks": 0,                                                                                                                                              +
               "Local Written Blocks": 0,                                                                                                                                              +
               "Temp Read Blocks": 0,                                                                                                                                                  +
               "Temp Written Blocks": 0,                                                                                                                                               +
               "Plans": [                                                                                                                                                              +
                 {                                                                                                                                                                     +
                   "Node Type": "Nested Loop",                                                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                                                     +
                   "Parallel Aware": false,                                                                                                                                            +
                   "Join Type": "Inner",                                                                                                                                               +
                   "Startup Cost": 0.16,                                                                                                                                               +
                   "Total Cost": 42.01,                                                                                                                                                +
                   "Plan Rows": 1,                                                                                                                                                     +
                   "Plan Width": 56,                                                                                                                                                   +
                   "Actual Startup Time": 2685.747,                                                                                                                                    +
                   "Actual Total Time": 5838.553,                                                                                                                                      +
                   "Actual Rows": 4890,                                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                                  +
                   "Inner Unique": true,                                                                                                                                               +
                   "Shared Hit Blocks": 3296884,                                                                                                                                       +
                   "Shared Read Blocks": 594,                                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                                         +
                   "Shared Written Blocks": 0,                                                                                                                                         +
                   "Local Hit Blocks": 0,                                                                                                                                              +
                   "Local Read Blocks": 0,                                                                                                                                             +
                   "Local Dirtied Blocks": 0,                                                                                                                                          +
                   "Local Written Blocks": 0,                                                                                                                                          +
                   "Temp Read Blocks": 0,                                                                                                                                              +
                   "Temp Written Blocks": 0,                                                                                                                                           +
                   "Plans": [                                                                                                                                                          +
                     {                                                                                                                                                                 +
                       "Node Type": "Nested Loop",                                                                                                                                     +
                       "Parent Relationship": "Outer",                                                                                                                                 +
                       "Parallel Aware": false,                                                                                                                                        +
                       "Join Type": "Inner",                                                                                                                                           +
                       "Startup Cost": 0.15,                                                                                                                                           +
                       "Total Cost": 41.93,                                                                                                                                            +
                       "Plan Rows": 1,                                                                                                                                                 +
                       "Plan Width": 60,                                                                                                                                               +
                       "Actual Startup Time": 2676.788,                                                                                                                                +
                       "Actual Total Time": 5472.686,                                                                                                                                  +
                       "Actual Rows": 21516,                                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                                              +
                       "Inner Unique": false,                                                                                                                                          +
                       "Join Filter": "(t.id = mc.movie_id)",                                                                                                                          +
                       "Rows Removed by Join Filter": 0,                                                                                                                               +
                       "Shared Hit Blocks": 3210854,                                                                                                                                   +
                       "Shared Read Blocks": 560,                                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                                     +
                       "Shared Written Blocks": 0,                                                                                                                                     +
                       "Local Hit Blocks": 0,                                                                                                                                          +
                       "Local Read Blocks": 0,                                                                                                                                         +
                       "Local Dirtied Blocks": 0,                                                                                                                                      +
                       "Local Written Blocks": 0,                                                                                                                                      +
                       "Temp Read Blocks": 0,                                                                                                                                          +
                       "Temp Written Blocks": 0,                                                                                                                                       +
                       "Plans": [                                                                                                                                                      +
                         {                                                                                                                                                             +
                           "Node Type": "Nested Loop",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                             +
                           "Parallel Aware": false,                                                                                                                                    +
                           "Join Type": "Inner",                                                                                                                                       +
                           "Startup Cost": 0.14,                                                                                                                                       +
                           "Total Cost": 41.77,                                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                                             +
                           "Plan Width": 76,                                                                                                                                           +
                           "Actual Startup Time": 2631.379,                                                                                                                            +
                           "Actual Total Time": 5401.523,                                                                                                                              +
                           "Actual Rows": 978,                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                          +
                           "Inner Unique": true,                                                                                                                                       +
                           "Shared Hit Blocks": 3205968,                                                                                                                               +
                           "Shared Read Blocks": 556,                                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                                 +
                           "Shared Written Blocks": 0,                                                                                                                                 +
                           "Local Hit Blocks": 0,                                                                                                                                      +
                           "Local Read Blocks": 0,                                                                                                                                     +
                           "Local Dirtied Blocks": 0,                                                                                                                                  +
                           "Local Written Blocks": 0,                                                                                                                                  +
                           "Temp Read Blocks": 0,                                                                                                                                      +
                           "Temp Written Blocks": 0,                                                                                                                                   +
                           "Plans": [                                                                                                                                                  +
                             {                                                                                                                                                         +
                               "Node Type": "Nested Loop",                                                                                                                             +
                               "Parent Relationship": "Outer",                                                                                                                         +
                               "Parallel Aware": false,                                                                                                                                +
                               "Join Type": "Inner",                                                                                                                                   +
                               "Startup Cost": 0.12,                                                                                                                                   +
                               "Total Cost": 41.69,                                                                                                                                    +
                               "Plan Rows": 1,                                                                                                                                         +
                               "Plan Width": 80,                                                                                                                                       +
                               "Actual Startup Time": 713.498,                                                                                                                         +
                               "Actual Total Time": 4982.421,                                                                                                                          +
                               "Actual Rows": 105624,                                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                                      +
                               "Inner Unique": true,                                                                                                                                   +
                               "Shared Hit Blocks": 2783598,                                                                                                                           +
                               "Shared Read Blocks": 430,                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                             +
                               "Shared Written Blocks": 0,                                                                                                                             +
                               "Local Hit Blocks": 0,                                                                                                                                  +
                               "Local Read Blocks": 0,                                                                                                                                 +
                               "Local Dirtied Blocks": 0,                                                                                                                              +
                               "Local Written Blocks": 0,                                                                                                                              +
                               "Temp Read Blocks": 0,                                                                                                                                  +
                               "Temp Written Blocks": 0,                                                                                                                               +
                               "Plans": [                                                                                                                                              +
                                 {                                                                                                                                                     +
                                   "Node Type": "Nested Loop",                                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                                     +
                                   "Parallel Aware": false,                                                                                                                            +
                                   "Join Type": "Inner",                                                                                                                               +
                                   "Startup Cost": 0.11,                                                                                                                               +
                                   "Total Cost": 40.58,                                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                                     +
                                   "Plan Width": 68,                                                                                                                                   +
                                   "Actual Startup Time": 674.537,                                                                                                                     +
                                   "Actual Total Time": 4615.075,                                                                                                                      +
                                   "Actual Rows": 105624,                                                                                                                              +
                                   "Actual Loops": 1,                                                                                                                                  +
                                   "Inner Unique": false,                                                                                                                              +
                                   "Join Filter": "(cct1.id = cc.subject_id)",                                                                                                         +
                                   "Rows Removed by Join Filter": 0,                                                                                                                   +
                                   "Shared Hit Blocks": 2361105,                                                                                                                       +
                                   "Shared Read Blocks": 427,                                                                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                                                                         +
                                   "Shared Written Blocks": 0,                                                                                                                         +
                                   "Local Hit Blocks": 0,                                                                                                                              +
                                   "Local Read Blocks": 0,                                                                                                                             +
                                   "Local Dirtied Blocks": 0,                                                                                                                          +
                                   "Local Written Blocks": 0,                                                                                                                          +
                                   "Temp Read Blocks": 0,                                                                                                                              +
                                   "Temp Written Blocks": 0,                                                                                                                           +
                                   "Plans": [                                                                                                                                          +
                                     {                                                                                                                                                 +
                                       "Node Type": "Seq Scan",                                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                                                 +
                                       "Parallel Aware": false,                                                                                                                        +
                                       "Relation Name": "comp_cast_type",                                                                                                              +
                                       "Alias": "cct1",                                                                                                                                +
                                       "Startup Cost": 0.00,                                                                                                                           +
                                       "Total Cost": 0.03,                                                                                                                             +
                                       "Plan Rows": 1,                                                                                                                                 +
                                       "Plan Width": 4,                                                                                                                                +
                                       "Actual Startup Time": 0.016,                                                                                                                   +
                                       "Actual Total Time": 0.018,                                                                                                                     +
                                       "Actual Rows": 1,                                                                                                                               +
                                       "Actual Loops": 1,                                                                                                                              +
                                       "Filter": "((kind)::text = 'cast'::text)",                                                                                                      +
                                       "Rows Removed by Filter": 3,                                                                                                                    +
                                       "Shared Hit Blocks": 1,                                                                                                                         +
                                       "Shared Read Blocks": 0,                                                                                                                        +
                                       "Shared Dirtied Blocks": 0,                                                                                                                     +
                                       "Shared Written Blocks": 0,                                                                                                                     +
                                       "Local Hit Blocks": 0,                                                                                                                          +
                                       "Local Read Blocks": 0,                                                                                                                         +
                                       "Local Dirtied Blocks": 0,                                                                                                                      +
                                       "Local Written Blocks": 0,                                                                                                                      +
                                       "Temp Read Blocks": 0,                                                                                                                          +
                                       "Temp Written Blocks": 0                                                                                                                        +
                                     },                                                                                                                                                +
                                     {                                                                                                                                                 +
                                       "Node Type": "Materialize",                                                                                                                     +
                                       "Parent Relationship": "Inner",                                                                                                                 +
                                       "Parallel Aware": false,                                                                                                                        +
                                       "Startup Cost": 0.11,                                                                                                                           +
                                       "Total Cost": 40.54,                                                                                                                            +
                                       "Plan Rows": 1,                                                                                                                                 +
                                       "Plan Width": 72,                                                                                                                               +
                                       "Actual Startup Time": 674.514,                                                                                                                 +
                                       "Actual Total Time": 4581.183,                                                                                                                  +
                                       "Actual Rows": 105624,                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                              +
                                       "Shared Hit Blocks": 2361104,                                                                                                                   +
                                       "Shared Read Blocks": 427,                                                                                                                      +
                                       "Shared Dirtied Blocks": 0,                                                                                                                     +
                                       "Shared Written Blocks": 0,                                                                                                                     +
                                       "Local Hit Blocks": 0,                                                                                                                          +
                                       "Local Read Blocks": 0,                                                                                                                         +
                                       "Local Dirtied Blocks": 0,                                                                                                                      +
                                       "Local Written Blocks": 0,                                                                                                                      +
                                       "Temp Read Blocks": 0,                                                                                                                          +
                                       "Temp Written Blocks": 0,                                                                                                                       +
                                       "Plans": [                                                                                                                                      +
                                         {                                                                                                                                             +
                                           "Node Type": "Nested Loop",                                                                                                                 +
                                           "Parent Relationship": "Outer",                                                                                                             +
                                           "Parallel Aware": false,                                                                                                                    +
                                           "Join Type": "Inner",                                                                                                                       +
                                           "Startup Cost": 0.11,                                                                                                                       +
                                           "Total Cost": 40.54,                                                                                                                        +
                                           "Plan Rows": 1,                                                                                                                             +
                                           "Plan Width": 72,                                                                                                                           +
                                           "Actual Startup Time": 674.502,                                                                                                             +
                                           "Actual Total Time": 4525.666,                                                                                                              +
                                           "Actual Rows": 105624,                                                                                                                      +
                                           "Actual Loops": 1,                                                                                                                          +
                                           "Inner Unique": false,                                                                                                                      +
                                           "Join Filter": "(t.id = cc.movie_id)",                                                                                                      +
                                           "Rows Removed by Join Filter": 0,                                                                                                           +
                                           "Shared Hit Blocks": 2361104,                                                                                                               +
                                           "Shared Read Blocks": 427,                                                                                                                  +
                                           "Shared Dirtied Blocks": 0,                                                                                                                 +
                                           "Shared Written Blocks": 0,                                                                                                                 +
                                           "Local Hit Blocks": 0,                                                                                                                      +
                                           "Local Read Blocks": 0,                                                                                                                     +
                                           "Local Dirtied Blocks": 0,                                                                                                                  +
                                           "Local Written Blocks": 0,                                                                                                                  +
                                           "Temp Read Blocks": 0,                                                                                                                      +
                                           "Temp Written Blocks": 0,                                                                                                                   +
                                           "Plans": [                                                                                                                                  +
                                             {                                                                                                                                         +
                                               "Node Type": "Nested Loop",                                                                                                             +
                                               "Parent Relationship": "Outer",                                                                                                         +
                                               "Parallel Aware": false,                                                                                                                +
                                               "Join Type": "Inner",                                                                                                                   +
                                               "Startup Cost": 0.10,                                                                                                                   +
                                               "Total Cost": 40.47,                                                                                                                    +
                                               "Plan Rows": 1,                                                                                                                         +
                                               "Plan Width": 60,                                                                                                                       +
                                               "Actual Startup Time": 633.864,                                                                                                         +
                                               "Actual Total Time": 4155.310,                                                                                                          +
                                               "Actual Rows": 105624,                                                                                                                  +
                                               "Actual Loops": 1,                                                                                                                      +
                                               "Inner Unique": true,                                                                                                                   +
                                               "Join Filter": "(ci.person_id = n.id)",                                                                                                 +
                                               "Rows Removed by Join Filter": 0,                                                                                                       +
                                               "Shared Hit Blocks": 1938610,                                                                                                           +
                                               "Shared Read Blocks": 425,                                                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                                                             +
                                               "Shared Written Blocks": 0,                                                                                                             +
                                               "Local Hit Blocks": 0,                                                                                                                  +
                                               "Local Read Blocks": 0,                                                                                                                 +
                                               "Local Dirtied Blocks": 0,                                                                                                              +
                                               "Local Written Blocks": 0,                                                                                                              +
                                               "Temp Read Blocks": 0,                                                                                                                  +
                                               "Temp Written Blocks": 0,                                                                                                               +
                                               "Plans": [                                                                                                                              +
                                                 {                                                                                                                                     +
                                                   "Node Type": "Nested Loop",                                                                                                         +
                                                   "Parent Relationship": "Outer",                                                                                                     +
                                                   "Parallel Aware": false,                                                                                                            +
                                                   "Join Type": "Inner",                                                                                                               +
                                                   "Startup Cost": 0.08,                                                                                                               +
                                                   "Total Cost": 40.04,                                                                                                                +
                                                   "Plan Rows": 5,                                                                                                                     +
                                                   "Plan Width": 57,                                                                                                                   +
                                                   "Actual Startup Time": 619.558,                                                                                                     +
                                                   "Actual Total Time": 2773.767,                                                                                                      +
                                                   "Actual Rows": 454968,                                                                                                              +
                                                   "Actual Loops": 1,                                                                                                                  +
                                                   "Inner Unique": false,                                                                                                              +
                                                   "Join Filter": "(ci.person_id = pi.person_id)",                                                                                     +
                                                   "Rows Removed by Join Filter": 0,                                                                                                   +
                                                   "Shared Hit Blocks": 115903,                                                                                                        +
                                                   "Shared Read Blocks": 404,                                                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                                                         +
                                                   "Shared Written Blocks": 0,                                                                                                         +
                                                   "Local Hit Blocks": 0,                                                                                                              +
                                                   "Local Read Blocks": 0,                                                                                                             +
                                                   "Local Dirtied Blocks": 0,                                                                                                          +
                                                   "Local Written Blocks": 0,                                                                                                          +
                                                   "Temp Read Blocks": 0,                                                                                                              +
                                                   "Temp Written Blocks": 0,                                                                                                           +
                                                   "Plans": [                                                                                                                          +
                                                     {                                                                                                                                 +
                                                       "Node Type": "Nested Loop",                                                                                                     +
                                                       "Parent Relationship": "Outer",                                                                                                 +
                                                       "Parallel Aware": false,                                                                                                        +
                                                       "Join Type": "Inner",                                                                                                           +
                                                       "Startup Cost": 0.07,                                                                                                           +
                                                       "Total Cost": 38.96,                                                                                                            +
                                                       "Plan Rows": 1,                                                                                                                 +
                                                       "Plan Width": 49,                                                                                                               +
                                                       "Actual Startup Time": 584.737,                                                                                                 +
                                                       "Actual Total Time": 2208.918,                                                                                                  +
                                                       "Actual Rows": 3876,                                                                                                            +
                                                       "Actual Loops": 1,                                                                                                              +
                                                       "Inner Unique": false,                                                                                                          +
                                                       "Join Filter": "(rt.id = ci.role_id)",                                                                                          +
                                                       "Rows Removed by Join Filter": 12340,                                                                                           +
                                                       "Shared Hit Blocks": 88052,                                                                                                     +
                                                       "Shared Read Blocks": 359,                                                                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                                                                     +
                                                       "Shared Written Blocks": 0,                                                                                                     +
                                                       "Local Hit Blocks": 0,                                                                                                          +
                                                       "Local Read Blocks": 0,                                                                                                         +
                                                       "Local Dirtied Blocks": 0,                                                                                                      +
                                                       "Local Written Blocks": 0,                                                                                                      +
                                                       "Temp Read Blocks": 0,                                                                                                          +
                                                       "Temp Written Blocks": 0,                                                                                                       +
                                                       "Plans": [                                                                                                                      +
                                                         {                                                                                                                             +
                                                           "Node Type": "Seq Scan",                                                                                                    +
                                                           "Parent Relationship": "Outer",                                                                                             +
                                                           "Parallel Aware": false,                                                                                                    +
                                                           "Relation Name": "role_type",                                                                                               +
                                                           "Alias": "rt",                                                                                                              +
                                                           "Startup Cost": 0.00,                                                                                                       +
                                                           "Total Cost": 0.03,                                                                                                         +
                                                           "Plan Rows": 1,                                                                                                             +
                                                           "Plan Width": 4,                                                                                                            +
                                                           "Actual Startup Time": 0.008,                                                                                               +
                                                           "Actual Total Time": 0.011,                                                                                                 +
                                                           "Actual Rows": 1,                                                                                                           +
                                                           "Actual Loops": 1,                                                                                                          +
                                                           "Filter": "((role)::text = 'actress'::text)",                                                                               +
                                                           "Rows Removed by Filter": 11,                                                                                               +
                                                           "Shared Hit Blocks": 1,                                                                                                     +
                                                           "Shared Read Blocks": 0,                                                                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                                                                 +
                                                           "Shared Written Blocks": 0,                                                                                                 +
                                                           "Local Hit Blocks": 0,                                                                                                      +
                                                           "Local Read Blocks": 0,                                                                                                     +
                                                           "Local Dirtied Blocks": 0,                                                                                                  +
                                                           "Local Written Blocks": 0,                                                                                                  +
                                                           "Temp Read Blocks": 0,                                                                                                      +
                                                           "Temp Written Blocks": 0                                                                                                    +
                                                         },                                                                                                                            +
                                                         {                                                                                                                             +
                                                           "Node Type": "Materialize",                                                                                                 +
                                                           "Parent Relationship": "Inner",                                                                                             +
                                                           "Parallel Aware": false,                                                                                                    +
                                                           "Startup Cost": 0.07,                                                                                                       +
                                                           "Total Cost": 38.93,                                                                                                        +
                                                           "Plan Rows": 1,                                                                                                             +
                                                           "Plan Width": 53,                                                                                                           +
                                                           "Actual Startup Time": 239.408,                                                                                             +
                                                           "Actual Total Time": 2206.203,                                                                                              +
                                                           "Actual Rows": 16216,                                                                                                       +
                                                           "Actual Loops": 1,                                                                                                          +
                                                           "Shared Hit Blocks": 88051,                                                                                                 +
                                                           "Shared Read Blocks": 359,                                                                                                  +
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
                                                               "Startup Cost": 0.07,                                                                                                   +
                                                               "Total Cost": 38.93,                                                                                                    +
                                                               "Plan Rows": 1,                                                                                                         +
                                                               "Plan Width": 53,                                                                                                       +
                                                               "Actual Startup Time": 239.388,                                                                                         +
                                                               "Actual Total Time": 2199.064,                                                                                          +
                                                               "Actual Rows": 16216,                                                                                                   +
                                                               "Actual Loops": 1,                                                                                                      +
                                                               "Inner Unique": false,                                                                                                  +
                                                               "Shared Hit Blocks": 88051,                                                                                             +
                                                               "Shared Read Blocks": 359,                                                                                              +
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
                                                                   "Startup Cost": 0.06,                                                                                               +
                                                                   "Total Cost": 38.61,                                                                                                +
                                                                   "Plan Rows": 1,                                                                                                     +
                                                                   "Plan Width": 49,                                                                                                   +
                                                                   "Actual Startup Time": 186.898,                                                                                     +
                                                                   "Actual Total Time": 1569.389,                                                                                      +
                                                                   "Actual Rows": 8992,                                                                                                +
                                                                   "Actual Loops": 1,                                                                                                  +
                                                                   "Inner Unique": false,                                                                                              +
                                                                   "Join Filter": "(t.id = ci.movie_id)",                                                                              +
                                                                   "Rows Removed by Join Filter": 0,                                                                                   +
                                                                   "Shared Hit Blocks": 51883,                                                                                         +
                                                                   "Shared Read Blocks": 287,                                                                                          +
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
                                                                       "Node Type": "Nested Loop",                                                                                     +
                                                                       "Parent Relationship": "Outer",                                                                                 +
                                                                       "Parallel Aware": false,                                                                                        +
                                                                       "Join Type": "Inner",                                                                                           +
                                                                       "Startup Cost": 0.04,                                                                                           +
                                                                       "Total Cost": 37.29,                                                                                            +
                                                                       "Plan Rows": 1,                                                                                                 +
                                                                       "Plan Width": 33,                                                                                               +
                                                                       "Actual Startup Time": 154.223,                                                                                 +
                                                                       "Actual Total Time": 343.030,                                                                                   +
                                                                       "Actual Rows": 244,                                                                                             +
                                                                       "Actual Loops": 1,                                                                                              +
                                                                       "Inner Unique": false,                                                                                          +
                                                                       "Join Filter": "(it.id = mi.info_type_id)",                                                                     +
                                                                       "Rows Removed by Join Filter": 0,                                                                               +
                                                                       "Shared Hit Blocks": 4327,                                                                                      +
                                                                       "Shared Read Blocks": 47,                                                                                       +
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
                                                                           "Node Type": "Seq Scan",                                                                                    +
                                                                           "Parent Relationship": "Outer",                                                                             +
                                                                           "Parallel Aware": false,                                                                                    +
                                                                           "Relation Name": "info_type",                                                                               +
                                                                           "Alias": "it",                                                                                              +
                                                                           "Startup Cost": 0.00,                                                                                       +
                                                                           "Total Cost": 0.05,                                                                                         +
                                                                           "Plan Rows": 1,                                                                                             +
                                                                           "Plan Width": 4,                                                                                            +
                                                                           "Actual Startup Time": 0.016,                                                                               +
                                                                           "Actual Total Time": 0.031,                                                                                 +
                                                                           "Actual Rows": 1,                                                                                           +
                                                                           "Actual Loops": 1,                                                                                          +
                                                                           "Filter": "((info)::text = 'release dates'::text)",                                                         +
                                                                           "Rows Removed by Filter": 112,                                                                              +
                                                                           "Shared Hit Blocks": 1,                                                                                     +
                                                                           "Shared Read Blocks": 0,                                                                                    +
                                                                           "Shared Dirtied Blocks": 0,                                                                                 +
                                                                           "Shared Written Blocks": 0,                                                                                 +
                                                                           "Local Hit Blocks": 0,                                                                                      +
                                                                           "Local Read Blocks": 0,                                                                                     +
                                                                           "Local Dirtied Blocks": 0,                                                                                  +
                                                                           "Local Written Blocks": 0,                                                                                  +
                                                                           "Temp Read Blocks": 0,                                                                                      +
                                                                           "Temp Written Blocks": 0                                                                                    +
                                                                         },                                                                                                            +
                                                                         {                                                                                                             +
                                                                           "Node Type": "Materialize",                                                                                 +
                                                                           "Parent Relationship": "Inner",                                                                             +
                                                                           "Parallel Aware": false,                                                                                    +
                                                                           "Startup Cost": 0.04,                                                                                       +
                                                                           "Total Cost": 37.24,                                                                                        +
                                                                           "Plan Rows": 1,                                                                                             +
                                                                           "Plan Width": 37,                                                                                           +
                                                                           "Actual Startup Time": 154.203,                                                                             +
                                                                           "Actual Total Time": 342.901,                                                                               +
                                                                           "Actual Rows": 244,                                                                                         +
                                                                           "Actual Loops": 1,                                                                                          +
                                                                           "Shared Hit Blocks": 4326,                                                                                  +
                                                                           "Shared Read Blocks": 47,                                                                                   +
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
                                                                               "Startup Cost": 0.04,                                                                                   +
                                                                               "Total Cost": 37.24,                                                                                    +
                                                                               "Plan Rows": 1,                                                                                         +
                                                                               "Plan Width": 37,                                                                                       +
                                                                               "Actual Startup Time": 154.194,                                                                         +
                                                                               "Actual Total Time": 342.774,                                                                           +
                                                                               "Actual Rows": 244,                                                                                     +
                                                                               "Actual Loops": 1,                                                                                      +
                                                                               "Inner Unique": false,                                                                                  +
                                                                               "Join Filter": "(t.id = mi.movie_id)",                                                                  +
                                                                               "Rows Removed by Join Filter": 0,                                                                       +
                                                                               "Shared Hit Blocks": 4326,                                                                              +
                                                                               "Shared Read Blocks": 47,                                                                               +
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
                                                                                   "Startup Cost": 0.03,                                                                               +
                                                                                   "Total Cost": 36.94,                                                                                +
                                                                                   "Plan Rows": 2,                                                                                     +
                                                                                   "Plan Width": 29,                                                                                   +
                                                                                   "Actual Startup Time": 87.639,                                                                      +
                                                                                   "Actual Total Time": 109.208,                                                                       +
                                                                                   "Actual Rows": 136,                                                                                 +
                                                                                   "Actual Loops": 1,                                                                                  +
                                                                                   "Inner Unique": false,                                                                              +
                                                                                   "Shared Hit Blocks": 7,                                                                             +
                                                                                   "Shared Read Blocks": 10,                                                                           +
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
                                                                                       "Node Type": "Index Scan",                                                                      +
                                                                                       "Parent Relationship": "Outer",                                                                 +
                                                                                       "Parallel Aware": false,                                                                        +
                                                                                       "Scan Direction": "Forward",                                                                    +
                                                                                       "Index Name": "title_idx_title",                                                                +
                                                                                       "Relation Name": "title",                                                                       +
                                                                                       "Alias": "t",                                                                                   +
                                                                                       "Startup Cost": 0.01,                                                                           +
                                                                                       "Total Cost": 6.13,                                                                             +
                                                                                       "Plan Rows": 1,                                                                                 +
                                                                                       "Plan Width": 21,                                                                               +
                                                                                       "Actual Startup Time": 38.096,                                                                  +
                                                                                       "Actual Total Time": 64.926,                                                                    +
                                                                                       "Actual Rows": 3,                                                                               +
                                                                                       "Actual Loops": 1,                                                                              +
                                                                                       "Index Cond": "(title = 'Shrek 2'::text)",                                                      +
                                                                                       "Rows Removed by Index Recheck": 0,                                                             +
                                                                                       "Filter": "((production_year >= 2000) AND (production_year <= 2010))",                          +
                                                                                       "Rows Removed by Filter": 0,                                                                    +
                                                                                       "Shared Hit Blocks": 0,                                                                         +
                                                                                       "Shared Read Blocks": 6,                                                                        +
                                                                                       "Shared Dirtied Blocks": 0,                                                                     +
                                                                                       "Shared Written Blocks": 0,                                                                     +
                                                                                       "Local Hit Blocks": 0,                                                                          +
                                                                                       "Local Read Blocks": 0,                                                                         +
                                                                                       "Local Dirtied Blocks": 0,                                                                      +
                                                                                       "Local Written Blocks": 0,                                                                      +
                                                                                       "Temp Read Blocks": 0,                                                                          +
                                                                                       "Temp Written Blocks": 0                                                                        +
                                                                                     },                                                                                                +
                                                                                     {                                                                                                 +
                                                                                       "Node Type": "Index Scan",                                                                      +
                                                                                       "Parent Relationship": "Inner",                                                                 +
                                                                                       "Parallel Aware": false,                                                                        +
                                                                                       "Scan Direction": "Forward",                                                                    +
                                                                                       "Index Name": "movie_id_movie_keyword",                                                         +
                                                                                       "Relation Name": "movie_keyword",                                                               +
                                                                                       "Alias": "mk",                                                                                  +
                                                                                       "Startup Cost": 0.01,                                                                           +
                                                                                       "Total Cost": 6.16,                                                                             +
                                                                                       "Plan Rows": 11,                                                                                +
                                                                                       "Plan Width": 8,                                                                                +
                                                                                       "Actual Startup Time": 14.712,                                                                  +
                                                                                       "Actual Total Time": 14.736,                                                                    +
                                                                                       "Actual Rows": 45,                                                                              +
                                                                                       "Actual Loops": 3,                                                                              +
                                                                                       "Index Cond": "(movie_id = t.id)",                                                              +
                                                                                       "Rows Removed by Index Recheck": 0,                                                             +
                                                                                       "Shared Hit Blocks": 7,                                                                         +
                                                                                       "Shared Read Blocks": 4,                                                                        +
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
                                                                                   "Actual Startup Time": 0.505,                                                                       +
                                                                                   "Actual Total Time": 1.716,                                                                         +
                                                                                   "Actual Rows": 2,                                                                                   +
                                                                                   "Actual Loops": 136,                                                                                +
                                                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                           +
                                                                                   "Rows Removed by Index Recheck": 0,                                                                 +
                                                                                   "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))",+
                                                                                   "Rows Removed by Filter": 363,                                                                      +
                                                                                   "Shared Hit Blocks": 4319,                                                                          +
                                                                                   "Shared Read Blocks": 37,                                                                           +
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
                                                                             }                                                                                                         +
                                                                           ]                                                                                                           +
                                                                         }                                                                                                             +
                                                                       ]                                                                                                               +
                                                                     },                                                                                                                +
                                                                     {                                                                                                                 +
                                                                       "Node Type": "Index Scan",                                                                                      +
                                                                       "Parent Relationship": "Inner",                                                                                 +
                                                                       "Parallel Aware": false,                                                                                        +
                                                                       "Scan Direction": "Forward",                                                                                    +
                                                                       "Index Name": "movie_id_cast_info",                                                                             +
                                                                       "Relation Name": "cast_info",                                                                                   +
                                                                       "Alias": "ci",                                                                                                  +
                                                                       "Startup Cost": 0.02,                                                                                           +
                                                                       "Total Cost": 0.26,                                                                                             +
                                                                       "Plan Rows": 1,                                                                                                 +
                                                                       "Plan Width": 16,                                                                                               +
                                                                       "Actual Startup Time": 0.139,                                                                                   +
                                                                       "Actual Total Time": 5.014,                                                                                     +
                                                                       "Actual Rows": 37,                                                                                              +
                                                                       "Actual Loops": 244,                                                                                            +
                                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                       +
                                                                       "Rows Removed by Index Recheck": 0,                                                                             +
                                                                       "Filter": "(note = ANY ('{(voice),\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",           +
                                                                       "Rows Removed by Filter": 171,                                                                                  +
                                                                       "Shared Hit Blocks": 47556,                                                                                     +
                                                                       "Shared Read Blocks": 240,                                                                                      +
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
                                                                 },                                                                                                                    +
                                                                 {                                                                                                                     +
                                                                   "Node Type": "Index Scan",                                                                                          +
                                                                   "Parent Relationship": "Inner",                                                                                     +
                                                                   "Parallel Aware": false,                                                                                            +
                                                                   "Scan Direction": "Forward",                                                                                        +
                                                                   "Index Name": "person_id_aka_name",                                                                                 +
                                                                   "Relation Name": "aka_name",                                                                                        +
                                                                   "Alias": "an",                                                                                                      +
                                                                   "Startup Cost": 0.01,                                                                                               +
                                                                   "Total Cost": 0.06,                                                                                                 +
                                                                   "Plan Rows": 2,                                                                                                     +
                                                                   "Plan Width": 4,                                                                                                    +
                                                                   "Actual Startup Time": 0.061,                                                                                       +
                                                                   "Actual Total Time": 0.069,                                                                                         +
                                                                   "Actual Rows": 2,                                                                                                   +
                                                                   "Actual Loops": 8992,                                                                                               +
                                                                   "Index Cond": "(person_id = ci.person_id)",                                                                         +
                                                                   "Rows Removed by Index Recheck": 0,                                                                                 +
                                                                   "Shared Hit Blocks": 36168,                                                                                         +
                                                                   "Shared Read Blocks": 72,                                                                                           +
                                                                   "Shared Dirtied Blocks": 0,                                                                                         +
                                                                   "Shared Written Blocks": 0,                                                                                         +
                                                                   "Local Hit Blocks": 0,                                                                                              +
                                                                   "Local Read Blocks": 0,                                                                                             +
                                                                   "Local Dirtied Blocks": 0,                                                                                          +
                                                                   "Local Written Blocks": 0,                                                                                          +
                                                                   "Temp Read Blocks": 0,                                                                                              +
                                                                   "Temp Written Blocks": 0                                                                                            +
                                                                 }                                                                                                                     +
                                                               ]                                                                                                                       +
                                                             }                                                                                                                         +
                                                           ]                                                                                                                           +
                                                         }                                                                                                                             +
                                                       ]                                                                                                                               +
                                                     },                                                                                                                                +
                                                     {                                                                                                                                 +
                                                       "Node Type": "Index Scan",                                                                                                      +
                                                       "Parent Relationship": "Inner",                                                                                                 +
                                                       "Parallel Aware": false,                                                                                                        +
                                                       "Scan Direction": "Forward",                                                                                                    +
                                                       "Index Name": "person_id_person_info",                                                                                          +
                                                       "Relation Name": "person_info",                                                                                                 +
                                                       "Alias": "pi",                                                                                                                  +
                                                       "Startup Cost": 0.01,                                                                                                           +
                                                       "Total Cost": 0.21,                                                                                                             +
                                                       "Plan Rows": 5,                                                                                                                 +
                                                       "Plan Width": 8,                                                                                                                +
                                                       "Actual Startup Time": 0.075,                                                                                                   +
                                                       "Actual Total Time": 0.107,                                                                                                     +
                                                       "Actual Rows": 117,                                                                                                             +
                                                       "Actual Loops": 3876,                                                                                                           +
                                                       "Index Cond": "(person_id = an.person_id)",                                                                                     +
                                                       "Rows Removed by Index Recheck": 0,                                                                                             +
                                                       "Shared Hit Blocks": 27851,                                                                                                     +
                                                       "Shared Read Blocks": 45,                                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                                     +
                                                       "Shared Written Blocks": 0,                                                                                                     +
                                                       "Local Hit Blocks": 0,                                                                                                          +
                                                       "Local Read Blocks": 0,                                                                                                         +
                                                       "Local Dirtied Blocks": 0,                                                                                                      +
                                                       "Local Written Blocks": 0,                                                                                                      +
                                                       "Temp Read Blocks": 0,                                                                                                          +
                                                       "Temp Written Blocks": 0                                                                                                        +
                                                     }                                                                                                                                 +
                                                   ]                                                                                                                                   +
                                                 },                                                                                                                                    +
                                                 {                                                                                                                                     +
                                                   "Node Type": "Index Scan",                                                                                                          +
                                                   "Parent Relationship": "Inner",                                                                                                     +
                                                   "Parallel Aware": false,                                                                                                            +
                                                   "Scan Direction": "Forward",                                                                                                        +
                                                   "Index Name": "name_pkey",                                                                                                          +
                                                   "Relation Name": "name",                                                                                                            +
                                                   "Alias": "n",                                                                                                                       +
                                                   "Startup Cost": 0.01,                                                                                                               +
                                                   "Total Cost": 0.09,                                                                                                                 +
                                                   "Plan Rows": 1,                                                                                                                     +
                                                   "Plan Width": 19,                                                                                                                   +
                                                   "Actual Startup Time": 0.003,                                                                                                       +
                                                   "Actual Total Time": 0.003,                                                                                                         +
                                                   "Actual Rows": 0,                                                                                                                   +
                                                   "Actual Loops": 454968,                                                                                                             +
                                                   "Index Cond": "(id = pi.person_id)",                                                                                                +
                                                   "Rows Removed by Index Recheck": 0,                                                                                                 +
                                                   "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                              +
                                                   "Rows Removed by Filter": 1,                                                                                                        +
                                                   "Shared Hit Blocks": 1822707,                                                                                                       +
                                                   "Shared Read Blocks": 21,                                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                                         +
                                                   "Shared Written Blocks": 0,                                                                                                         +
                                                   "Local Hit Blocks": 0,                                                                                                              +
                                                   "Local Read Blocks": 0,                                                                                                             +
                                                   "Local Dirtied Blocks": 0,                                                                                                          +
                                                   "Local Written Blocks": 0,                                                                                                          +
                                                   "Temp Read Blocks": 0,                                                                                                              +
                                                   "Temp Written Blocks": 0                                                                                                            +
                                                 }                                                                                                                                     +
                                               ]                                                                                                                                       +
                                             },                                                                                                                                        +
                                             {                                                                                                                                         +
                                               "Node Type": "Index Scan",                                                                                                              +
                                               "Parent Relationship": "Inner",                                                                                                         +
                                               "Parallel Aware": false,                                                                                                                +
                                               "Scan Direction": "Forward",                                                                                                            +
                                               "Index Name": "movie_id_complete_cast",                                                                                                 +
                                               "Relation Name": "complete_cast",                                                                                                       +
                                               "Alias": "cc",                                                                                                                          +
                                               "Startup Cost": 0.01,                                                                                                                   +
                                               "Total Cost": 0.01,                                                                                                                     +
                                               "Plan Rows": 1,                                                                                                                         +
                                               "Plan Width": 12,                                                                                                                       +
                                               "Actual Startup Time": 0.003,                                                                                                           +
                                               "Actual Total Time": 0.003,                                                                                                             +
                                               "Actual Rows": 1,                                                                                                                       +
                                               "Actual Loops": 105624,                                                                                                                 +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                                               +
                                               "Rows Removed by Index Recheck": 0,                                                                                                     +
                                               "Shared Hit Blocks": 422494,                                                                                                            +
                                               "Shared Read Blocks": 2,                                                                                                                +
                                               "Shared Dirtied Blocks": 0,                                                                                                             +
                                               "Shared Written Blocks": 0,                                                                                                             +
                                               "Local Hit Blocks": 0,                                                                                                                  +
                                               "Local Read Blocks": 0,                                                                                                                 +
                                               "Local Dirtied Blocks": 0,                                                                                                              +
                                               "Local Written Blocks": 0,                                                                                                              +
                                               "Temp Read Blocks": 0,                                                                                                                  +
                                               "Temp Written Blocks": 0                                                                                                                +
                                             }                                                                                                                                         +
                                           ]                                                                                                                                           +
                                         }                                                                                                                                             +
                                       ]                                                                                                                                               +
                                     }                                                                                                                                                 +
                                   ]                                                                                                                                                   +
                                 },                                                                                                                                                    +
                                 {                                                                                                                                                     +
                                   "Node Type": "Index Scan",                                                                                                                          +
                                   "Parent Relationship": "Inner",                                                                                                                     +
                                   "Parallel Aware": false,                                                                                                                            +
                                   "Scan Direction": "Forward",                                                                                                                        +
                                   "Index Name": "char_name_pkey",                                                                                                                     +
                                   "Relation Name": "char_name",                                                                                                                       +
                                   "Alias": "chn",                                                                                                                                     +
                                   "Startup Cost": 0.01,                                                                                                                               +
                                   "Total Cost": 0.19,                                                                                                                                 +
                                   "Plan Rows": 1,                                                                                                                                     +
                                   "Plan Width": 20,                                                                                                                                   +
                                   "Actual Startup Time": 0.003,                                                                                                                       +
                                   "Actual Total Time": 0.003,                                                                                                                         +
                                   "Actual Rows": 1,                                                                                                                                   +
                                   "Actual Loops": 105624,                                                                                                                             +
                                   "Index Cond": "(id = ci.person_role_id)",                                                                                                           +
                                   "Rows Removed by Index Recheck": 0,                                                                                                                 +
                                   "Filter": "(name = 'Queen'::text)",                                                                                                                 +
                                   "Rows Removed by Filter": 0,                                                                                                                        +
                                   "Shared Hit Blocks": 422493,                                                                                                                        +
                                   "Shared Read Blocks": 3,                                                                                                                            +
                                   "Shared Dirtied Blocks": 0,                                                                                                                         +
                                   "Shared Written Blocks": 0,                                                                                                                         +
                                   "Local Hit Blocks": 0,                                                                                                                              +
                                   "Local Read Blocks": 0,                                                                                                                             +
                                   "Local Dirtied Blocks": 0,                                                                                                                          +
                                   "Local Written Blocks": 0,                                                                                                                          +
                                   "Temp Read Blocks": 0,                                                                                                                              +
                                   "Temp Written Blocks": 0                                                                                                                            +
                                 }                                                                                                                                                     +
                               ]                                                                                                                                                       +
                             },                                                                                                                                                        +
                             {                                                                                                                                                         +
                               "Node Type": "Index Scan",                                                                                                                              +
                               "Parent Relationship": "Inner",                                                                                                                         +
                               "Parallel Aware": false,                                                                                                                                +
                               "Scan Direction": "Forward",                                                                                                                            +
                               "Index Name": "keyword_pkey",                                                                                                                           +
                               "Relation Name": "keyword",                                                                                                                             +
                               "Alias": "k",                                                                                                                                           +
                               "Startup Cost": 0.01,                                                                                                                                   +
                               "Total Cost": 0.01,                                                                                                                                     +
                               "Plan Rows": 1,                                                                                                                                         +
                               "Plan Width": 4,                                                                                                                                        +
                               "Actual Startup Time": 0.004,                                                                                                                           +
                               "Actual Total Time": 0.004,                                                                                                                             +
                               "Actual Rows": 0,                                                                                                                                       +
                               "Actual Loops": 105624,                                                                                                                                 +
                               "Index Cond": "(id = mk.keyword_id)",                                                                                                                   +
                               "Rows Removed by Index Recheck": 0,                                                                                                                     +
                               "Filter": "(keyword = 'computer-animation'::text)",                                                                                                     +
                               "Rows Removed by Filter": 1,                                                                                                                            +
                               "Shared Hit Blocks": 422370,                                                                                                                            +
                               "Shared Read Blocks": 126,                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                             +
                               "Shared Written Blocks": 0,                                                                                                                             +
                               "Local Hit Blocks": 0,                                                                                                                                  +
                               "Local Read Blocks": 0,                                                                                                                                 +
                               "Local Dirtied Blocks": 0,                                                                                                                              +
                               "Local Written Blocks": 0,                                                                                                                              +
                               "Temp Read Blocks": 0,                                                                                                                                  +
                               "Temp Written Blocks": 0                                                                                                                                +
                             }                                                                                                                                                         +
                           ]                                                                                                                                                           +
                         },                                                                                                                                                            +
                         {                                                                                                                                                             +
                           "Node Type": "Index Scan",                                                                                                                                  +
                           "Parent Relationship": "Inner",                                                                                                                             +
                           "Parallel Aware": false,                                                                                                                                    +
                           "Scan Direction": "Forward",                                                                                                                                +
                           "Index Name": "movie_id_movie_companies",                                                                                                                   +
                           "Relation Name": "movie_companies",                                                                                                                         +
                           "Alias": "mc",                                                                                                                                              +
                           "Startup Cost": 0.01,                                                                                                                                       +
                           "Total Cost": 0.03,                                                                                                                                         +
                           "Plan Rows": 2,                                                                                                                                             +
                           "Plan Width": 8,                                                                                                                                            +
                           "Actual Startup Time": 0.050,                                                                                                                               +
                           "Actual Total Time": 0.065,                                                                                                                                 +
                           "Actual Rows": 22,                                                                                                                                          +
                           "Actual Loops": 978,                                                                                                                                        +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                   +
                           "Rows Removed by Index Recheck": 0,                                                                                                                         +
                           "Shared Hit Blocks": 4886,                                                                                                                                  +
                           "Shared Read Blocks": 4,                                                                                                                                    +
                           "Shared Dirtied Blocks": 0,                                                                                                                                 +
                           "Shared Written Blocks": 0,                                                                                                                                 +
                           "Local Hit Blocks": 0,                                                                                                                                      +
                           "Local Read Blocks": 0,                                                                                                                                     +
                           "Local Dirtied Blocks": 0,                                                                                                                                  +
                           "Local Written Blocks": 0,                                                                                                                                  +
                           "Temp Read Blocks": 0,                                                                                                                                      +
                           "Temp Written Blocks": 0                                                                                                                                    +
                         }                                                                                                                                                             +
                       ]                                                                                                                                                               +
                     },                                                                                                                                                                +
                     {                                                                                                                                                                 +
                       "Node Type": "Index Scan",                                                                                                                                      +
                       "Parent Relationship": "Inner",                                                                                                                                 +
                       "Parallel Aware": false,                                                                                                                                        +
                       "Scan Direction": "Forward",                                                                                                                                    +
                       "Index Name": "company_name_pkey",                                                                                                                              +
                       "Relation Name": "company_name",                                                                                                                                +
                       "Alias": "cn",                                                                                                                                                  +
                       "Startup Cost": 0.01,                                                                                                                                           +
                       "Total Cost": 0.02,                                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                                 +
                       "Plan Width": 4,                                                                                                                                                +
                       "Actual Startup Time": 0.017,                                                                                                                                   +
                       "Actual Total Time": 0.017,                                                                                                                                     +
                       "Actual Rows": 0,                                                                                                                                               +
                       "Actual Loops": 21516,                                                                                                                                          +
                       "Index Cond": "(id = mc.company_id)",                                                                                                                           +
                       "Rows Removed by Index Recheck": 0,                                                                                                                             +
                       "Filter": "((country_code)::text = '[us]'::text)",                                                                                                              +
                       "Rows Removed by Filter": 1,                                                                                                                                    +
                       "Shared Hit Blocks": 86030,                                                                                                                                     +
                       "Shared Read Blocks": 34,                                                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                                                     +
                       "Shared Written Blocks": 0,                                                                                                                                     +
                       "Local Hit Blocks": 0,                                                                                                                                          +
                       "Local Read Blocks": 0,                                                                                                                                         +
                       "Local Dirtied Blocks": 0,                                                                                                                                      +
                       "Local Written Blocks": 0,                                                                                                                                      +
                       "Temp Read Blocks": 0,                                                                                                                                          +
                       "Temp Written Blocks": 0                                                                                                                                        +
                     }                                                                                                                                                                 +
                   ]                                                                                                                                                                   +
                 },                                                                                                                                                                    +
                 {                                                                                                                                                                     +
                   "Node Type": "Materialize",                                                                                                                                         +
                   "Parent Relationship": "Inner",                                                                                                                                     +
                   "Parallel Aware": false,                                                                                                                                            +
                   "Startup Cost": 0.00,                                                                                                                                               +
                   "Total Cost": 0.03,                                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                                     +
                   "Plan Width": 4,                                                                                                                                                    +
                   "Actual Startup Time": 0.000,                                                                                                                                       +
                   "Actual Total Time": 0.000,                                                                                                                                         +
                   "Actual Rows": 1,                                                                                                                                                   +
                   "Actual Loops": 4890,                                                                                                                                               +
                   "Shared Hit Blocks": 1,                                                                                                                                             +
                   "Shared Read Blocks": 0,                                                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                                                         +
                   "Shared Written Blocks": 0,                                                                                                                                         +
                   "Local Hit Blocks": 0,                                                                                                                                              +
                   "Local Read Blocks": 0,                                                                                                                                             +
                   "Local Dirtied Blocks": 0,                                                                                                                                          +
                   "Local Written Blocks": 0,                                                                                                                                          +
                   "Temp Read Blocks": 0,                                                                                                                                              +
                   "Temp Written Blocks": 0,                                                                                                                                           +
                   "Plans": [                                                                                                                                                          +
                     {                                                                                                                                                                 +
                       "Node Type": "Seq Scan",                                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                                                 +
                       "Parallel Aware": false,                                                                                                                                        +
                       "Relation Name": "comp_cast_type",                                                                                                                              +
                       "Alias": "cct2",                                                                                                                                                +
                       "Startup Cost": 0.00,                                                                                                                                           +
                       "Total Cost": 0.03,                                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                                 +
                       "Plan Width": 4,                                                                                                                                                +
                       "Actual Startup Time": 0.019,                                                                                                                                   +
                       "Actual Total Time": 0.019,                                                                                                                                     +
                       "Actual Rows": 1,                                                                                                                                               +
                       "Actual Loops": 1,                                                                                                                                              +
                       "Filter": "((kind)::text = 'complete+verified'::text)",                                                                                                         +
                       "Rows Removed by Filter": 3,                                                                                                                                    +
                       "Shared Hit Blocks": 1,                                                                                                                                         +
                       "Shared Read Blocks": 0,                                                                                                                                        +
                       "Shared Dirtied Blocks": 0,                                                                                                                                     +
                       "Shared Written Blocks": 0,                                                                                                                                     +
                       "Local Hit Blocks": 0,                                                                                                                                          +
                       "Local Read Blocks": 0,                                                                                                                                         +
                       "Local Dirtied Blocks": 0,                                                                                                                                      +
                       "Local Written Blocks": 0,                                                                                                                                      +
                       "Temp Read Blocks": 0,                                                                                                                                          +
                       "Temp Written Blocks": 0                                                                                                                                        +
                     }                                                                                                                                                                 +
                   ]                                                                                                                                                                   +
                 }                                                                                                                                                                     +
               ]                                                                                                                                                                       +
             },                                                                                                                                                                        +
             {                                                                                                                                                                         +
               "Node Type": "Materialize",                                                                                                                                             +
               "Parent Relationship": "Inner",                                                                                                                                         +
               "Parallel Aware": false,                                                                                                                                                +
               "Startup Cost": 0.00,                                                                                                                                                   +
               "Total Cost": 0.05,                                                                                                                                                     +
               "Plan Rows": 1,                                                                                                                                                         +
               "Plan Width": 4,                                                                                                                                                        +
               "Actual Startup Time": 0.000,                                                                                                                                           +
               "Actual Total Time": 0.000,                                                                                                                                             +
               "Actual Rows": 1,                                                                                                                                                       +
               "Actual Loops": 4890,                                                                                                                                                   +
               "Shared Hit Blocks": 1,                                                                                                                                                 +
               "Shared Read Blocks": 0,                                                                                                                                                +
               "Shared Dirtied Blocks": 0,                                                                                                                                             +
               "Shared Written Blocks": 0,                                                                                                                                             +
               "Local Hit Blocks": 0,                                                                                                                                                  +
               "Local Read Blocks": 0,                                                                                                                                                 +
               "Local Dirtied Blocks": 0,                                                                                                                                              +
               "Local Written Blocks": 0,                                                                                                                                              +
               "Temp Read Blocks": 0,                                                                                                                                                  +
               "Temp Written Blocks": 0,                                                                                                                                               +
               "Plans": [                                                                                                                                                              +
                 {                                                                                                                                                                     +
                   "Node Type": "Seq Scan",                                                                                                                                            +
                   "Parent Relationship": "Outer",                                                                                                                                     +
                   "Parallel Aware": false,                                                                                                                                            +
                   "Relation Name": "info_type",                                                                                                                                       +
                   "Alias": "it3",                                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                                               +
                   "Total Cost": 0.05,                                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                                     +
                   "Plan Width": 4,                                                                                                                                                    +
                   "Actual Startup Time": 0.021,                                                                                                                                       +
                   "Actual Total Time": 0.054,                                                                                                                                         +
                   "Actual Rows": 1,                                                                                                                                                   +
                   "Actual Loops": 1,                                                                                                                                                  +
                   "Filter": "((info)::text = 'trivia'::text)",                                                                                                                        +
                   "Rows Removed by Filter": 112,                                                                                                                                      +
                   "Shared Hit Blocks": 1,                                                                                                                                             +
                   "Shared Read Blocks": 0,                                                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                                                         +
                   "Shared Written Blocks": 0,                                                                                                                                         +
                   "Local Hit Blocks": 0,                                                                                                                                              +
                   "Local Read Blocks": 0,                                                                                                                                             +
                   "Local Dirtied Blocks": 0,                                                                                                                                          +
                   "Local Written Blocks": 0,                                                                                                                                          +
                   "Temp Read Blocks": 0,                                                                                                                                              +
                   "Temp Written Blocks": 0                                                                                                                                            +
                 }                                                                                                                                                                     +
               ]                                                                                                                                                                       +
             }                                                                                                                                                                         +
           ]                                                                                                                                                                           +
         }                                                                                                                                                                             +
       ]                                                                                                                                                                               +
     },                                                                                                                                                                                +
     "Planning Time": 20830.990,                                                                                                                                                       +
     "Triggers": [                                                                                                                                                                     +
     ],                                                                                                                                                                                +
     "Execution Time": 5890.754                                                                                                                                                        +
   }                                                                                                                                                                                   +
 ]
(1 row)

