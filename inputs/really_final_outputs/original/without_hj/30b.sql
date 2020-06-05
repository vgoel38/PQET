                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 903.69,                                                                                                                                           +
       "Total Cost": 903.69,                                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 128,                                                                                                                                                +
       "Actual Startup Time": 1125409.764,                                                                                                                               +
       "Actual Total Time": 1125409.764,                                                                                                                                 +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 3008592,                                                                                                                                     +
       "Shared Read Blocks": 224124,                                                                                                                                     +
       "Shared Dirtied Blocks": 0,                                                                                                                                       +
       "Shared Written Blocks": 0,                                                                                                                                       +
       "Local Hit Blocks": 0,                                                                                                                                            +
       "Local Read Blocks": 0,                                                                                                                                           +
       "Local Dirtied Blocks": 0,                                                                                                                                        +
       "Local Written Blocks": 0,                                                                                                                                        +
       "Temp Read Blocks": 0,                                                                                                                                            +
       "Temp Written Blocks": 0,                                                                                                                                         +
       "Plans": [                                                                                                                                                        +
         {                                                                                                                                                               +
           "Node Type": "Nested Loop",                                                                                                                                   +
           "Parent Relationship": "Outer",                                                                                                                               +
           "Parallel Aware": false,                                                                                                                                      +
           "Join Type": "Inner",                                                                                                                                         +
           "Startup Cost": 0.11,                                                                                                                                         +
           "Total Cost": 903.69,                                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 80,                                                                                                                                             +
           "Actual Startup Time": 317051.581,                                                                                                                            +
           "Actual Total Time": 1125409.559,                                                                                                                             +
           "Actual Rows": 28,                                                                                                                                            +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": false,                                                                                                                                        +
           "Join Filter": "(it1.id = mi.info_type_id)",                                                                                                                  +
           "Rows Removed by Join Filter": 0,                                                                                                                             +
           "Shared Hit Blocks": 3008592,                                                                                                                                 +
           "Shared Read Blocks": 224124,                                                                                                                                 +
           "Shared Dirtied Blocks": 0,                                                                                                                                   +
           "Shared Written Blocks": 0,                                                                                                                                   +
           "Local Hit Blocks": 0,                                                                                                                                        +
           "Local Read Blocks": 0,                                                                                                                                       +
           "Local Dirtied Blocks": 0,                                                                                                                                    +
           "Local Written Blocks": 0,                                                                                                                                    +
           "Temp Read Blocks": 0,                                                                                                                                        +
           "Temp Written Blocks": 0,                                                                                                                                     +
           "Plans": [                                                                                                                                                    +
             {                                                                                                                                                           +
               "Node Type": "Seq Scan",                                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Relation Name": "info_type",                                                                                                                             +
               "Alias": "it1",                                                                                                                                           +
               "Startup Cost": 0.00,                                                                                                                                     +
               "Total Cost": 0.05,                                                                                                                                       +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 4,                                                                                                                                          +
               "Actual Startup Time": 0.021,                                                                                                                             +
               "Actual Total Time": 0.046,                                                                                                                               +
               "Actual Rows": 1,                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                        +
               "Filter": "((info)::text = 'genres'::text)",                                                                                                              +
               "Rows Removed by Filter": 112,                                                                                                                            +
               "Shared Hit Blocks": 1,                                                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                    +
               "Temp Written Blocks": 0                                                                                                                                  +
             },                                                                                                                                                          +
             {                                                                                                                                                           +
               "Node Type": "Materialize",                                                                                                                               +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 0.11,                                                                                                                                     +
               "Total Cost": 903.64,                                                                                                                                     +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 84,                                                                                                                                         +
               "Actual Startup Time": 317051.554,                                                                                                                        +
               "Actual Total Time": 1125409.467,                                                                                                                         +
               "Actual Rows": 28,                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                        +
               "Shared Hit Blocks": 3008591,                                                                                                                             +
               "Shared Read Blocks": 224124,                                                                                                                             +
               "Shared Dirtied Blocks": 0,                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                                 +
               "Plans": [                                                                                                                                                +
                 {                                                                                                                                                       +
                   "Node Type": "Nested Loop",                                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Join Type": "Inner",                                                                                                                                 +
                   "Startup Cost": 0.11,                                                                                                                                 +
                   "Total Cost": 903.64,                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 84,                                                                                                                                     +
                   "Actual Startup Time": 317051.543,                                                                                                                    +
                   "Actual Total Time": 1125409.394,                                                                                                                     +
                   "Actual Rows": 28,                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Inner Unique": false,                                                                                                                                +
                   "Join Filter": "(t.id = mi.movie_id)",                                                                                                                +
                   "Rows Removed by Join Filter": 0,                                                                                                                     +
                   "Shared Hit Blocks": 3008591,                                                                                                                         +
                   "Shared Read Blocks": 224124,                                                                                                                         +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0,                                                                                                                             +
                   "Plans": [                                                                                                                                            +
                     {                                                                                                                                                   +
                       "Node Type": "Nested Loop",                                                                                                                       +
                       "Parent Relationship": "Outer",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Join Type": "Inner",                                                                                                                             +
                       "Startup Cost": 0.10,                                                                                                                             +
                       "Total Cost": 902.87,                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 58,                                                                                                                                 +
                       "Actual Startup Time": 316870.405,                                                                                                                +
                       "Actual Total Time": 1125069.295,                                                                                                                 +
                       "Actual Rows": 20,                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                +
                       "Inner Unique": true,                                                                                                                             +
                       "Join Filter": "(cc.status_id = cct2.id)",                                                                                                        +
                       "Rows Removed by Join Filter": 49,                                                                                                                +
                       "Shared Hit Blocks": 3007841,                                                                                                                     +
                       "Shared Read Blocks": 224042,                                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                                            +
                       "Temp Written Blocks": 0,                                                                                                                         +
                       "Plans": [                                                                                                                                        +
                         {                                                                                                                                               +
                           "Node Type": "Nested Loop",                                                                                                                   +
                           "Parent Relationship": "Outer",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Join Type": "Inner",                                                                                                                         +
                           "Startup Cost": 0.10,                                                                                                                         +
                           "Total Cost": 902.84,                                                                                                                         +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 62,                                                                                                                             +
                           "Actual Startup Time": 316488.847,                                                                                                            +
                           "Actual Total Time": 1125069.078,                                                                                                             +
                           "Actual Rows": 69,                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                            +
                           "Inner Unique": false,                                                                                                                        +
                           "Join Filter": "(cc.subject_id = cct1.id)",                                                                                                   +
                           "Rows Removed by Join Filter": 69,                                                                                                            +
                           "Shared Hit Blocks": 3007840,                                                                                                                 +
                           "Shared Read Blocks": 224042,                                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                        +
                           "Temp Written Blocks": 0,                                                                                                                     +
                           "Plans": [                                                                                                                                    +
                             {                                                                                                                                           +
                               "Node Type": "Seq Scan",                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Relation Name": "comp_cast_type",                                                                                                        +
                               "Alias": "cct1",                                                                                                                          +
                               "Startup Cost": 0.00,                                                                                                                     +
                               "Total Cost": 0.03,                                                                                                                       +
                               "Plan Rows": 2,                                                                                                                           +
                               "Plan Width": 4,                                                                                                                          +
                               "Actual Startup Time": 0.010,                                                                                                             +
                               "Actual Total Time": 0.016,                                                                                                               +
                               "Actual Rows": 2,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                        +
                               "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                                                                                 +
                               "Rows Removed by Filter": 2,                                                                                                              +
                               "Shared Hit Blocks": 1,                                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                    +
                               "Temp Written Blocks": 0                                                                                                                  +
                             },                                                                                                                                          +
                             {                                                                                                                                           +
                               "Node Type": "Materialize",                                                                                                               +
                               "Parent Relationship": "Inner",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Startup Cost": 0.10,                                                                                                                     +
                               "Total Cost": 902.81,                                                                                                                     +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 66,                                                                                                                         +
                               "Actual Startup Time": 158244.415,                                                                                                        +
                               "Actual Total Time": 562534.466,                                                                                                          +
                               "Actual Rows": 69,                                                                                                                        +
                               "Actual Loops": 2,                                                                                                                        +
                               "Shared Hit Blocks": 3007839,                                                                                                             +
                               "Shared Read Blocks": 224042,                                                                                                             +
                               "Shared Dirtied Blocks": 0,                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                    +
                               "Temp Written Blocks": 0,                                                                                                                 +
                               "Plans": [                                                                                                                                +
                                 {                                                                                                                                       +
                                   "Node Type": "Nested Loop",                                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Join Type": "Inner",                                                                                                                 +
                                   "Startup Cost": 0.10,                                                                                                                 +
                                   "Total Cost": 902.81,                                                                                                                 +
                                   "Plan Rows": 1,                                                                                                                       +
                                   "Plan Width": 66,                                                                                                                     +
                                   "Actual Startup Time": 316488.819,                                                                                                    +
                                   "Actual Total Time": 1125068.718,                                                                                                     +
                                   "Actual Rows": 69,                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Inner Unique": true,                                                                                                                 +
                                   "Join Filter": "(mi_idx.movie_id = t.id)",                                                                                            +
                                   "Rows Removed by Join Filter": 0,                                                                                                     +
                                   "Shared Hit Blocks": 3007839,                                                                                                         +
                                   "Shared Read Blocks": 224042,                                                                                                         +
                                   "Shared Dirtied Blocks": 0,                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                +
                                   "Temp Written Blocks": 0,                                                                                                             +
                                   "Plans": [                                                                                                                            +
                                     {                                                                                                                                   +
                                       "Node Type": "Nested Loop",                                                                                                       +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Join Type": "Inner",                                                                                                             +
                                       "Startup Cost": 0.08,                                                                                                             +
                                       "Total Cost": 902.59,                                                                                                             +
                                       "Plan Rows": 1,                                                                                                                   +
                                       "Plan Width": 45,                                                                                                                 +
                                       "Actual Startup Time": 2025.304,                                                                                                  +
                                       "Actual Total Time": 1084404.126,                                                                                                 +
                                       "Actual Rows": 15057,                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Inner Unique": true,                                                                                                             +
                                       "Shared Hit Blocks": 2953156,                                                                                                     +
                                       "Shared Read Blocks": 218452,                                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                                            +
                                       "Local Read Blocks": 0,                                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                                        +
                                       "Local Written Blocks": 0,                                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                                            +
                                       "Temp Written Blocks": 0,                                                                                                         +
                                       "Plans": [                                                                                                                        +
                                         {                                                                                                                               +
                                           "Node Type": "Nested Loop",                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Join Type": "Inner",                                                                                                         +
                                           "Startup Cost": 0.07,                                                                                                         +
                                           "Total Cost": 902.22,                                                                                                         +
                                           "Plan Rows": 2,                                                                                                               +
                                           "Plan Width": 34,                                                                                                             +
                                           "Actual Startup Time": 900.453,                                                                                               +
                                           "Actual Total Time": 1018334.742,                                                                                             +
                                           "Actual Rows": 24437,                                                                                                         +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Inner Unique": false,                                                                                                        +
                                           "Join Filter": "(mi_idx.movie_id = ci.movie_id)",                                                                             +
                                           "Rows Removed by Join Filter": 0,                                                                                             +
                                           "Shared Hit Blocks": 2865136,                                                                                                 +
                                           "Shared Read Blocks": 208595,                                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                                        +
                                           "Local Read Blocks": 0,                                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                                    +
                                           "Local Written Blocks": 0,                                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                                        +
                                           "Temp Written Blocks": 0,                                                                                                     +
                                           "Plans": [                                                                                                                    +
                                             {                                                                                                                           +
                                               "Node Type": "Nested Loop",                                                                                               +
                                               "Parent Relationship": "Outer",                                                                                           +
                                               "Parallel Aware": false,                                                                                                  +
                                               "Join Type": "Inner",                                                                                                     +
                                               "Startup Cost": 0.05,                                                                                                     +
                                               "Total Cost": 901.69,                                                                                                     +
                                               "Plan Rows": 2,                                                                                                           +
                                               "Plan Width": 26,                                                                                                         +
                                               "Actual Startup Time": 139.112,                                                                                           +
                                               "Actual Total Time": 38844.517,                                                                                           +
                                               "Actual Rows": 35346,                                                                                                     +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Inner Unique": true,                                                                                                     +
                                               "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                                          +
                                               "Rows Removed by Join Filter": 71655,                                                                                     +
                                               "Shared Hit Blocks": 435624,                                                                                              +
                                               "Shared Read Blocks": 29474,                                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                                               +
                                               "Shared Written Blocks": 0,                                                                                               +
                                               "Local Hit Blocks": 0,                                                                                                    +
                                               "Local Read Blocks": 0,                                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                                +
                                               "Local Written Blocks": 0,                                                                                                +
                                               "Temp Read Blocks": 0,                                                                                                    +
                                               "Temp Written Blocks": 0,                                                                                                 +
                                               "Plans": [                                                                                                                +
                                                 {                                                                                                                       +
                                                   "Node Type": "Nested Loop",                                                                                           +
                                                   "Parent Relationship": "Outer",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Join Type": "Inner",                                                                                                 +
                                                   "Startup Cost": 0.05,                                                                                                 +
                                                   "Total Cost": 901.59,                                                                                                 +
                                                   "Plan Rows": 214,                                                                                                     +
                                                   "Plan Width": 30,                                                                                                     +
                                                   "Actual Startup Time": 139.026,                                                                                       +
                                                   "Actual Total Time": 38641.999,                                                                                       +
                                                   "Actual Rows": 107001,                                                                                                +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Inner Unique": false,                                                                                                +
                                                   "Shared Hit Blocks": 435623,                                                                                          +
                                                   "Shared Read Blocks": 29474,                                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                                   "Shared Written Blocks": 0,                                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                                +
                                                   "Local Read Blocks": 0,                                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                                            +
                                                   "Local Written Blocks": 0,                                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                                +
                                                   "Temp Written Blocks": 0,                                                                                             +
                                                   "Plans": [                                                                                                            +
                                                     {                                                                                                                   +
                                                       "Node Type": "Nested Loop",                                                                                       +
                                                       "Parent Relationship": "Outer",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Join Type": "Inner",                                                                                             +
                                                       "Startup Cost": 0.04,                                                                                             +
                                                       "Total Cost": 900.01,                                                                                             +
                                                       "Plan Rows": 71,                                                                                                  +
                                                       "Plan Width": 16,                                                                                                 +
                                                       "Actual Startup Time": 109.958,                                                                                   +
                                                       "Actual Total Time": 16452.166,                                                                                   +
                                                       "Actual Rows": 36010,                                                                                             +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Inner Unique": false,                                                                                            +
                                                       "Shared Hit Blocks": 297788,                                                                                      +
                                                       "Shared Read Blocks": 22153,                                                                                      +
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
                                                           "Node Type": "Nested Loop",                                                                                   +
                                                           "Parent Relationship": "Outer",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Join Type": "Inner",                                                                                         +
                                                           "Startup Cost": 0.03,                                                                                         +
                                                           "Total Cost": 896.69,                                                                                         +
                                                           "Plan Rows": 236,                                                                                             +
                                                           "Plan Width": 4,                                                                                              +
                                                           "Actual Startup Time": 54.791,                                                                                +
                                                           "Actual Total Time": 13858.574,                                                                               +
                                                           "Actual Rows": 76714,                                                                                         +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Inner Unique": false,                                                                                        +
                                                           "Shared Hit Blocks": 32400,                                                                                   +
                                                           "Shared Read Blocks": 21098,                                                                                  +
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
                                                               "Node Type": "Index Scan",                                                                                +
                                                               "Parent Relationship": "Outer",                                                                           +
                                                               "Parallel Aware": false,                                                                                  +
                                                               "Scan Direction": "Forward",                                                                              +
                                                               "Index Name": "keyword_idx_keyword",                                                                      +
                                                               "Relation Name": "keyword",                                                                               +
                                                               "Alias": "k",                                                                                             +
                                                               "Startup Cost": 0.01,                                                                                     +
                                                               "Total Cost": 42.93,                                                                                      +
                                                               "Plan Rows": 7,                                                                                           +
                                                               "Plan Width": 4,                                                                                          +
                                                               "Actual Startup Time": 31.543,                                                                            +
                                                               "Actual Total Time": 231.027,                                                                             +
                                                               "Actual Rows": 7,                                                                                         +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Index Cond": "(keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))",    +
                                                               "Rows Removed by Index Recheck": 0,                                                                       +
                                                               "Shared Hit Blocks": 14,                                                                                  +
                                                               "Shared Read Blocks": 17,                                                                                 +
                                                               "Shared Dirtied Blocks": 0,                                                                               +
                                                               "Shared Written Blocks": 0,                                                                               +
                                                               "Local Hit Blocks": 0,                                                                                    +
                                                               "Local Read Blocks": 0,                                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                                +
                                                               "Local Written Blocks": 0,                                                                                +
                                                               "Temp Read Blocks": 0,                                                                                    +
                                                               "Temp Written Blocks": 0                                                                                  +
                                                             },                                                                                                          +
                                                             {                                                                                                           +
                                                               "Node Type": "Index Scan",                                                                                +
                                                               "Parent Relationship": "Inner",                                                                           +
                                                               "Parallel Aware": false,                                                                                  +
                                                               "Scan Direction": "Forward",                                                                              +
                                                               "Index Name": "keyword_id_movie_keyword",                                                                 +
                                                               "Relation Name": "movie_keyword",                                                                         +
                                                               "Alias": "mk",                                                                                            +
                                                               "Startup Cost": 0.01,                                                                                     +
                                                               "Total Cost": 121.96,                                                                                     +
                                                               "Plan Rows": 39,                                                                                          +
                                                               "Plan Width": 8,                                                                                          +
                                                               "Actual Startup Time": 15.664,                                                                            +
                                                               "Actual Total Time": 1938.793,                                                                            +
                                                               "Actual Rows": 10959,                                                                                     +
                                                               "Actual Loops": 7,                                                                                        +
                                                               "Index Cond": "(keyword_id = k.id)",                                                                      +
                                                               "Rows Removed by Index Recheck": 0,                                                                       +
                                                               "Shared Hit Blocks": 32386,                                                                               +
                                                               "Shared Read Blocks": 21081,                                                                              +
                                                               "Shared Dirtied Blocks": 0,                                                                               +
                                                               "Shared Written Blocks": 0,                                                                               +
                                                               "Local Hit Blocks": 0,                                                                                    +
                                                               "Local Read Blocks": 0,                                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                                +
                                                               "Local Written Blocks": 0,                                                                                +
                                                               "Temp Read Blocks": 0,                                                                                    +
                                                               "Temp Written Blocks": 0                                                                                  +
                                                             }                                                                                                           +
                                                           ]                                                                                                             +
                                                         },                                                                                                              +
                                                         {                                                                                                               +
                                                           "Node Type": "Index Scan",                                                                                    +
                                                           "Parent Relationship": "Inner",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Scan Direction": "Forward",                                                                                  +
                                                           "Index Name": "movie_id_complete_cast",                                                                       +
                                                           "Relation Name": "complete_cast",                                                                             +
                                                           "Alias": "cc",                                                                                                +
                                                           "Startup Cost": 0.01,                                                                                         +
                                                           "Total Cost": 0.01,                                                                                           +
                                                           "Plan Rows": 1,                                                                                               +
                                                           "Plan Width": 12,                                                                                             +
                                                           "Actual Startup Time": 0.024,                                                                                 +
                                                           "Actual Total Time": 0.032,                                                                                   +
                                                           "Actual Rows": 0,                                                                                             +
                                                           "Actual Loops": 76714,                                                                                        +
                                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                     +
                                                           "Rows Removed by Index Recheck": 0,                                                                           +
                                                           "Shared Hit Blocks": 265388,                                                                                  +
                                                           "Shared Read Blocks": 1055,                                                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                                                   +
                                                           "Shared Written Blocks": 0,                                                                                   +
                                                           "Local Hit Blocks": 0,                                                                                        +
                                                           "Local Read Blocks": 0,                                                                                       +
                                                           "Local Dirtied Blocks": 0,                                                                                    +
                                                           "Local Written Blocks": 0,                                                                                    +
                                                           "Temp Read Blocks": 0,                                                                                        +
                                                           "Temp Written Blocks": 0                                                                                      +
                                                         }                                                                                                               +
                                                       ]                                                                                                                 +
                                                     },                                                                                                                  +
                                                     {                                                                                                                   +
                                                       "Node Type": "Index Scan",                                                                                        +
                                                       "Parent Relationship": "Inner",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Scan Direction": "Forward",                                                                                      +
                                                       "Index Name": "movie_id_movie_info_idx",                                                                          +
                                                       "Relation Name": "movie_info_idx",                                                                                +
                                                       "Alias": "mi_idx",                                                                                                +
                                                       "Startup Cost": 0.01,                                                                                             +
                                                       "Total Cost": 0.02,                                                                                               +
                                                       "Plan Rows": 3,                                                                                                   +
                                                       "Plan Width": 14,                                                                                                 +
                                                       "Actual Startup Time": 0.600,                                                                                     +
                                                       "Actual Total Time": 0.612,                                                                                       +
                                                       "Actual Rows": 3,                                                                                                 +
                                                       "Actual Loops": 36010,                                                                                            +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                                                       "Rows Removed by Index Recheck": 0,                                                                               +
                                                       "Shared Hit Blocks": 137835,                                                                                      +
                                                       "Shared Read Blocks": 7321,                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                                       "Shared Written Blocks": 0,                                                                                       +
                                                       "Local Hit Blocks": 0,                                                                                            +
                                                       "Local Read Blocks": 0,                                                                                           +
                                                       "Local Dirtied Blocks": 0,                                                                                        +
                                                       "Local Written Blocks": 0,                                                                                        +
                                                       "Temp Read Blocks": 0,                                                                                            +
                                                       "Temp Written Blocks": 0                                                                                          +
                                                     }                                                                                                                   +
                                                   ]                                                                                                                     +
                                                 },                                                                                                                      +
                                                 {                                                                                                                       +
                                                   "Node Type": "Materialize",                                                                                           +
                                                   "Parent Relationship": "Inner",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 0.00,                                                                                                 +
                                                   "Total Cost": 0.05,                                                                                                   +
                                                   "Plan Rows": 1,                                                                                                       +
                                                   "Plan Width": 4,                                                                                                      +
                                                   "Actual Startup Time": 0.000,                                                                                         +
                                                   "Actual Total Time": 0.000,                                                                                           +
                                                   "Actual Rows": 1,                                                                                                     +
                                                   "Actual Loops": 107001,                                                                                               +
                                                   "Shared Hit Blocks": 1,                                                                                               +
                                                   "Shared Read Blocks": 0,                                                                                              +
                                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                                   "Shared Written Blocks": 0,                                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                                +
                                                   "Local Read Blocks": 0,                                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                                            +
                                                   "Local Written Blocks": 0,                                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                                +
                                                   "Temp Written Blocks": 0,                                                                                             +
                                                   "Plans": [                                                                                                            +
                                                     {                                                                                                                   +
                                                       "Node Type": "Seq Scan",                                                                                          +
                                                       "Parent Relationship": "Outer",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Relation Name": "info_type",                                                                                     +
                                                       "Alias": "it2",                                                                                                   +
                                                       "Startup Cost": 0.00,                                                                                             +
                                                       "Total Cost": 0.05,                                                                                               +
                                                       "Plan Rows": 1,                                                                                                   +
                                                       "Plan Width": 4,                                                                                                  +
                                                       "Actual Startup Time": 0.052,                                                                                     +
                                                       "Actual Total Time": 0.059,                                                                                       +
                                                       "Actual Rows": 1,                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Filter": "((info)::text = 'votes'::text)",                                                                       +
                                                       "Rows Removed by Filter": 112,                                                                                    +
                                                       "Shared Hit Blocks": 1,                                                                                           +
                                                       "Shared Read Blocks": 0,                                                                                          +
                                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                                       "Shared Written Blocks": 0,                                                                                       +
                                                       "Local Hit Blocks": 0,                                                                                            +
                                                       "Local Read Blocks": 0,                                                                                           +
                                                       "Local Dirtied Blocks": 0,                                                                                        +
                                                       "Local Written Blocks": 0,                                                                                        +
                                                       "Temp Read Blocks": 0,                                                                                            +
                                                       "Temp Written Blocks": 0                                                                                          +
                                                     }                                                                                                                   +
                                                   ]                                                                                                                     +
                                                 }                                                                                                                       +
                                               ]                                                                                                                         +
                                             },                                                                                                                          +
                                             {                                                                                                                           +
                                               "Node Type": "Index Scan",                                                                                                +
                                               "Parent Relationship": "Inner",                                                                                           +
                                               "Parallel Aware": false,                                                                                                  +
                                               "Scan Direction": "Forward",                                                                                              +
                                               "Index Name": "movie_id_cast_info",                                                                                       +
                                               "Relation Name": "cast_info",                                                                                             +
                                               "Alias": "ci",                                                                                                            +
                                               "Startup Cost": 0.02,                                                                                                     +
                                               "Total Cost": 0.26,                                                                                                       +
                                               "Plan Rows": 1,                                                                                                           +
                                               "Plan Width": 8,                                                                                                          +
                                               "Actual Startup Time": 23.590,                                                                                            +
                                               "Actual Total Time": 27.709,                                                                                              +
                                               "Actual Rows": 1,                                                                                                         +
                                               "Actual Loops": 35346,                                                                                                    +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                                 +
                                               "Rows Removed by Index Recheck": 0,                                                                                       +
                                               "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",            +
                                               "Rows Removed by Filter": 71,                                                                                             +
                                               "Shared Hit Blocks": 2429512,                                                                                             +
                                               "Shared Read Blocks": 179121,                                                                                             +
                                               "Shared Dirtied Blocks": 0,                                                                                               +
                                               "Shared Written Blocks": 0,                                                                                               +
                                               "Local Hit Blocks": 0,                                                                                                    +
                                               "Local Read Blocks": 0,                                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                                +
                                               "Local Written Blocks": 0,                                                                                                +
                                               "Temp Read Blocks": 0,                                                                                                    +
                                               "Temp Written Blocks": 0                                                                                                  +
                                             }                                                                                                                           +
                                           ]                                                                                                                             +
                                         },                                                                                                                              +
                                         {                                                                                                                               +
                                           "Node Type": "Index Scan",                                                                                                    +
                                           "Parent Relationship": "Inner",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Scan Direction": "Forward",                                                                                                  +
                                           "Index Name": "name_pkey",                                                                                                    +
                                           "Relation Name": "name",                                                                                                      +
                                           "Alias": "n",                                                                                                                 +
                                           "Startup Cost": 0.01,                                                                                                         +
                                           "Total Cost": 0.19,                                                                                                           +
                                           "Plan Rows": 1,                                                                                                               +
                                           "Plan Width": 19,                                                                                                             +
                                           "Actual Startup Time": 2.700,                                                                                                 +
                                           "Actual Total Time": 2.700,                                                                                                   +
                                           "Actual Rows": 1,                                                                                                             +
                                           "Actual Loops": 24437,                                                                                                        +
                                           "Index Cond": "(id = ci.person_id)",                                                                                          +
                                           "Rows Removed by Index Recheck": 0,                                                                                           +
                                           "Filter": "((gender)::text = 'm'::text)",                                                                                     +
                                           "Rows Removed by Filter": 0,                                                                                                  +
                                           "Shared Hit Blocks": 88020,                                                                                                   +
                                           "Shared Read Blocks": 9857,                                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                                        +
                                           "Local Read Blocks": 0,                                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                                    +
                                           "Local Written Blocks": 0,                                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                                        +
                                           "Temp Written Blocks": 0                                                                                                      +
                                         }                                                                                                                               +
                                       ]                                                                                                                                 +
                                     },                                                                                                                                  +
                                     {                                                                                                                                   +
                                       "Node Type": "Index Scan",                                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Scan Direction": "Forward",                                                                                                      +
                                       "Index Name": "title_idx_id",                                                                                                     +
                                       "Relation Name": "title",                                                                                                         +
                                       "Alias": "t",                                                                                                                     +
                                       "Startup Cost": 0.01,                                                                                                             +
                                       "Total Cost": 0.04,                                                                                                               +
                                       "Plan Rows": 1,                                                                                                                   +
                                       "Plan Width": 21,                                                                                                                 +
                                       "Actual Startup Time": 2.698,                                                                                                     +
                                       "Actual Total Time": 2.698,                                                                                                       +
                                       "Actual Rows": 0,                                                                                                                 +
                                       "Actual Loops": 15057,                                                                                                            +
                                       "Index Cond": "(id = mk.movie_id)",                                                                                               +
                                       "Rows Removed by Index Recheck": 0,                                                                                               +
                                       "Filter": "((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))",+
                                       "Rows Removed by Filter": 1,                                                                                                      +
                                       "Shared Hit Blocks": 54683,                                                                                                       +
                                       "Shared Read Blocks": 5590,                                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                                            +
                                       "Local Read Blocks": 0,                                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                                        +
                                       "Local Written Blocks": 0,                                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                                            +
                                       "Temp Written Blocks": 0                                                                                                          +
                                     }                                                                                                                                   +
                                   ]                                                                                                                                     +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         },                                                                                                                                              +
                         {                                                                                                                                               +
                           "Node Type": "Materialize",                                                                                                                   +
                           "Parent Relationship": "Inner",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Startup Cost": 0.00,                                                                                                                         +
                           "Total Cost": 0.03,                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 4,                                                                                                                              +
                           "Actual Startup Time": 0.001,                                                                                                                 +
                           "Actual Total Time": 0.001,                                                                                                                   +
                           "Actual Rows": 1,                                                                                                                             +
                           "Actual Loops": 69,                                                                                                                           +
                           "Shared Hit Blocks": 1,                                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                        +
                           "Temp Written Blocks": 0,                                                                                                                     +
                           "Plans": [                                                                                                                                    +
                             {                                                                                                                                           +
                               "Node Type": "Seq Scan",                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Relation Name": "comp_cast_type",                                                                                                        +
                               "Alias": "cct2",                                                                                                                          +
                               "Startup Cost": 0.00,                                                                                                                     +
                               "Total Cost": 0.03,                                                                                                                       +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 4,                                                                                                                          +
                               "Actual Startup Time": 0.021,                                                                                                             +
                               "Actual Total Time": 0.023,                                                                                                               +
                               "Actual Rows": 1,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                        +
                               "Filter": "((kind)::text = 'complete+verified'::text)",                                                                                   +
                               "Rows Removed by Filter": 3,                                                                                                              +
                               "Shared Hit Blocks": 1,                                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                    +
                               "Temp Written Blocks": 0                                                                                                                  +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         }                                                                                                                                               +
                       ]                                                                                                                                                 +
                     },                                                                                                                                                  +
                     {                                                                                                                                                   +
                       "Node Type": "Index Scan",                                                                                                                        +
                       "Parent Relationship": "Inner",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Scan Direction": "Forward",                                                                                                                      +
                       "Index Name": "movie_id_movie_info",                                                                                                              +
                       "Relation Name": "movie_info",                                                                                                                    +
                       "Alias": "mi",                                                                                                                                    +
                       "Startup Cost": 0.01,                                                                                                                             +
                       "Total Cost": 0.15,                                                                                                                               +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 50,                                                                                                                                 +
                       "Actual Startup Time": 16.998,                                                                                                                    +
                       "Actual Total Time": 17.000,                                                                                                                      +
                       "Actual Rows": 1,                                                                                                                                 +
                       "Actual Loops": 20,                                                                                                                               +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                                         +
                       "Rows Removed by Index Recheck": 0,                                                                                                               +
                       "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                                                           +
                       "Rows Removed by Filter": 451,                                                                                                                    +
                       "Shared Hit Blocks": 750,                                                                                                                         +
                       "Shared Read Blocks": 82,                                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                                            +
                       "Temp Written Blocks": 0                                                                                                                          +
                     }                                                                                                                                                   +
                   ]                                                                                                                                                     +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 15844.265,                                                                                                                                         +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 1125434.609                                                                                                                                       +
   }                                                                                                                                                                     +
 ]
(1 row)

