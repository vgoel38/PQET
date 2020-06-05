                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                 +
   {                                                                                                                                                               +
     "Plan": {                                                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                                                   +
       "Strategy": "Plain",                                                                                                                                        +
       "Partial Mode": "Simple",                                                                                                                                   +
       "Parallel Aware": false,                                                                                                                                    +
       "Startup Cost": 517.92,                                                                                                                                     +
       "Total Cost": 517.92,                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                             +
       "Plan Width": 96,                                                                                                                                           +
       "Actual Startup Time": 67600.771,                                                                                                                           +
       "Actual Total Time": 67600.772,                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                           +
       "Actual Loops": 1,                                                                                                                                          +
       "Shared Hit Blocks": 424494,                                                                                                                                +
       "Shared Read Blocks": 34510,                                                                                                                                +
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
           "Startup Cost": 0.11,                                                                                                                                   +
           "Total Cost": 517.92,                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                         +
           "Plan Width": 42,                                                                                                                                       +
           "Actual Startup Time": 25058.156,                                                                                                                       +
           "Actual Total Time": 67594.310,                                                                                                                         +
           "Actual Rows": 4803,                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                      +
           "Inner Unique": false,                                                                                                                                  +
           "Join Filter": "(it1.id = mi.info_type_id)",                                                                                                            +
           "Rows Removed by Join Filter": 492,                                                                                                                     +
           "Shared Hit Blocks": 424494,                                                                                                                            +
           "Shared Read Blocks": 34510,                                                                                                                            +
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
               "Node Type": "Seq Scan",                                                                                                                            +
               "Parent Relationship": "Outer",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Relation Name": "info_type",                                                                                                                       +
               "Alias": "it1",                                                                                                                                     +
               "Startup Cost": 0.00,                                                                                                                               +
               "Total Cost": 0.05,                                                                                                                                 +
               "Plan Rows": 1,                                                                                                                                     +
               "Plan Width": 4,                                                                                                                                    +
               "Actual Startup Time": 0.025,                                                                                                                       +
               "Actual Total Time": 0.064,                                                                                                                         +
               "Actual Rows": 1,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                  +
               "Filter": "((info)::text = 'countries'::text)",                                                                                                     +
               "Rows Removed by Filter": 112,                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                             +
               "Shared Read Blocks": 0,                                                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                                                         +
               "Shared Written Blocks": 0,                                                                                                                         +
               "Local Hit Blocks": 0,                                                                                                                              +
               "Local Read Blocks": 0,                                                                                                                             +
               "Local Dirtied Blocks": 0,                                                                                                                          +
               "Local Written Blocks": 0,                                                                                                                          +
               "Temp Read Blocks": 0,                                                                                                                              +
               "Temp Written Blocks": 0                                                                                                                            +
             },                                                                                                                                                    +
             {                                                                                                                                                     +
               "Node Type": "Materialize",                                                                                                                         +
               "Parent Relationship": "Inner",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Startup Cost": 0.11,                                                                                                                               +
               "Total Cost": 517.87,                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                     +
               "Plan Width": 46,                                                                                                                                   +
               "Actual Startup Time": 25058.126,                                                                                                                   +
               "Actual Total Time": 67590.550,                                                                                                                     +
               "Actual Rows": 5295,                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                  +
               "Shared Hit Blocks": 424493,                                                                                                                        +
               "Shared Read Blocks": 34510,                                                                                                                        +
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
                   "Node Type": "Nested Loop",                                                                                                                     +
                   "Parent Relationship": "Outer",                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                        +
                   "Join Type": "Inner",                                                                                                                           +
                   "Startup Cost": 0.11,                                                                                                                           +
                   "Total Cost": 517.87,                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                 +
                   "Plan Width": 46,                                                                                                                               +
                   "Actual Startup Time": 25058.116,                                                                                                               +
                   "Actual Total Time": 67583.758,                                                                                                                 +
                   "Actual Rows": 5295,                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                              +
                   "Inner Unique": false,                                                                                                                          +
                   "Join Filter": "(t.id = mi.movie_id)",                                                                                                          +
                   "Rows Removed by Join Filter": 0,                                                                                                               +
                   "Shared Hit Blocks": 424493,                                                                                                                    +
                   "Shared Read Blocks": 34510,                                                                                                                    +
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
                       "Startup Cost": 0.09,                                                                                                                       +
                       "Total Cost": 517.09,                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 62,                                                                                                                           +
                       "Actual Startup Time": 24928.127,                                                                                                           +
                       "Actual Total Time": 45995.264,                                                                                                             +
                       "Actual Rows": 4410,                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                          +
                       "Inner Unique": false,                                                                                                                      +
                       "Join Filter": "(kt.id = t.kind_id)",                                                                                                       +
                       "Rows Removed by Join Filter": 4706,                                                                                                        +
                       "Shared Hit Blocks": 306577,                                                                                                                +
                       "Shared Read Blocks": 30376,                                                                                                                +
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
                           "Node Type": "Seq Scan",                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Relation Name": "kind_type",                                                                                                           +
                           "Alias": "kt",                                                                                                                          +
                           "Startup Cost": 0.00,                                                                                                                   +
                           "Total Cost": 0.03,                                                                                                                     +
                           "Plan Rows": 2,                                                                                                                         +
                           "Plan Width": 4,                                                                                                                        +
                           "Actual Startup Time": 0.010,                                                                                                           +
                           "Actual Total Time": 0.022,                                                                                                             +
                           "Actual Rows": 2,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                      +
                           "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                           +
                           "Rows Removed by Filter": 5,                                                                                                            +
                           "Shared Hit Blocks": 1,                                                                                                                 +
                           "Shared Read Blocks": 0,                                                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                  +
                           "Temp Written Blocks": 0                                                                                                                +
                         },                                                                                                                                        +
                         {                                                                                                                                         +
                           "Node Type": "Materialize",                                                                                                             +
                           "Parent Relationship": "Inner",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Startup Cost": 0.09,                                                                                                                   +
                           "Total Cost": 517.06,                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                         +
                           "Plan Width": 66,                                                                                                                       +
                           "Actual Startup Time": 11956.973,                                                                                                       +
                           "Actual Total Time": 22994.510,                                                                                                         +
                           "Actual Rows": 4558,                                                                                                                    +
                           "Actual Loops": 2,                                                                                                                      +
                           "Shared Hit Blocks": 306576,                                                                                                            +
                           "Shared Read Blocks": 30376,                                                                                                            +
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
                               "Startup Cost": 0.09,                                                                                                               +
                               "Total Cost": 517.06,                                                                                                               +
                               "Plan Rows": 1,                                                                                                                     +
                               "Plan Width": 66,                                                                                                                   +
                               "Actual Startup Time": 23913.934,                                                                                                   +
                               "Actual Total Time": 45979.381,                                                                                                     +
                               "Actual Rows": 4558,                                                                                                                +
                               "Actual Loops": 1,                                                                                                                  +
                               "Inner Unique": true,                                                                                                               +
                               "Shared Hit Blocks": 306576,                                                                                                        +
                               "Shared Read Blocks": 30376,                                                                                                        +
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
                                   "Startup Cost": 0.08,                                                                                                           +
                                   "Total Cost": 516.85,                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                 +
                                   "Plan Width": 41,                                                                                                               +
                                   "Actual Startup Time": 23879.867,                                                                                               +
                                   "Actual Total Time": 33578.141,                                                                                                 +
                                   "Actual Rows": 8934,                                                                                                            +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Inner Unique": true,                                                                                                           +
                                   "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                                +
                                   "Rows Removed by Join Filter": 18861,                                                                                           +
                                   "Shared Hit Blocks": 272671,                                                                                                    +
                                   "Shared Read Blocks": 28516,                                                                                                    +
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
                                       "Node Type": "Nested Loop",                                                                                                 +
                                       "Parent Relationship": "Outer",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Join Type": "Inner",                                                                                                       +
                                       "Startup Cost": 0.08,                                                                                                       +
                                       "Total Cost": 516.80,                                                                                                       +
                                       "Plan Rows": 6,                                                                                                             +
                                       "Plan Width": 45,                                                                                                           +
                                       "Actual Startup Time": 23879.777,                                                                                           +
                                       "Actual Total Time": 33538.207,                                                                                             +
                                       "Actual Rows": 27795,                                                                                                       +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Inner Unique": false,                                                                                                      +
                                       "Shared Hit Blocks": 272670,                                                                                                +
                                       "Shared Read Blocks": 28516,                                                                                                +
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
                                           "Total Cost": 516.75,                                                                                                   +
                                           "Plan Rows": 2,                                                                                                         +
                                           "Plan Width": 31,                                                                                                       +
                                           "Actual Startup Time": 23846.924,                                                                                       +
                                           "Actual Total Time": 23865.745,                                                                                         +
                                           "Actual Rows": 9291,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Inner Unique": false,                                                                                                  +
                                           "Join Filter": "(cc.status_id = cct2.id)",                                                                              +
                                           "Rows Removed by Join Filter": 42288,                                                                                   +
                                           "Shared Hit Blocks": 236229,                                                                                            +
                                           "Shared Read Blocks": 26754,                                                                                            +
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
                                               "Node Type": "Seq Scan",                                                                                            +
                                               "Parent Relationship": "Outer",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Relation Name": "comp_cast_type",                                                                                  +
                                               "Alias": "cct2",                                                                                                    +
                                               "Startup Cost": 0.00,                                                                                               +
                                               "Total Cost": 0.03,                                                                                                 +
                                               "Plan Rows": 3,                                                                                                     +
                                               "Plan Width": 4,                                                                                                    +
                                               "Actual Startup Time": 0.007,                                                                                       +
                                               "Actual Total Time": 0.015,                                                                                         +
                                               "Actual Rows": 3,                                                                                                   +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Filter": "((kind)::text <> 'complete+verified'::text)",                                                            +
                                               "Rows Removed by Filter": 1,                                                                                        +
                                               "Shared Hit Blocks": 1,                                                                                             +
                                               "Shared Read Blocks": 0,                                                                                            +
                                               "Shared Dirtied Blocks": 0,                                                                                         +
                                               "Shared Written Blocks": 0,                                                                                         +
                                               "Local Hit Blocks": 0,                                                                                              +
                                               "Local Read Blocks": 0,                                                                                             +
                                               "Local Dirtied Blocks": 0,                                                                                          +
                                               "Local Written Blocks": 0,                                                                                          +
                                               "Temp Read Blocks": 0,                                                                                              +
                                               "Temp Written Blocks": 0                                                                                            +
                                             },                                                                                                                    +
                                             {                                                                                                                     +
                                               "Node Type": "Materialize",                                                                                         +
                                               "Parent Relationship": "Inner",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Startup Cost": 0.07,                                                                                               +
                                               "Total Cost": 516.72,                                                                                               +
                                               "Plan Rows": 2,                                                                                                     +
                                               "Plan Width": 35,                                                                                                   +
                                               "Actual Startup Time": 66.820,                                                                                      +
                                               "Actual Total Time": 7947.379,                                                                                      +
                                               "Actual Rows": 17193,                                                                                               +
                                               "Actual Loops": 3,                                                                                                  +
                                               "Shared Hit Blocks": 236228,                                                                                        +
                                               "Shared Read Blocks": 26754,                                                                                        +
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
                                                   "Startup Cost": 0.07,                                                                                           +
                                                   "Total Cost": 516.72,                                                                                           +
                                                   "Plan Rows": 2,                                                                                                 +
                                                   "Plan Width": 35,                                                                                               +
                                                   "Actual Startup Time": 200.448,                                                                                 +
                                                   "Actual Total Time": 23820.792,                                                                                 +
                                                   "Actual Rows": 17193,                                                                                           +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Inner Unique": false,                                                                                          +
                                                   "Join Filter": "(mc.company_type_id = ct.id)",                                                                  +
                                                   "Rows Removed by Join Filter": 51579,                                                                           +
                                                   "Shared Hit Blocks": 236228,                                                                                    +
                                                   "Shared Read Blocks": 26754,                                                                                    +
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
                                                       "Relation Name": "company_type",                                                                            +
                                                       "Alias": "ct",                                                                                              +
                                                       "Startup Cost": 0.00,                                                                                       +
                                                       "Total Cost": 0.03,                                                                                         +
                                                       "Plan Rows": 4,                                                                                             +
                                                       "Plan Width": 4,                                                                                            +
                                                       "Actual Startup Time": 0.005,                                                                               +
                                                       "Actual Total Time": 0.009,                                                                                 +
                                                       "Actual Rows": 4,                                                                                           +
                                                       "Actual Loops": 1,                                                                                          +
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
                                                       "Startup Cost": 0.07,                                                                                       +
                                                       "Total Cost": 516.68,                                                                                       +
                                                       "Plan Rows": 2,                                                                                             +
                                                       "Plan Width": 39,                                                                                           +
                                                       "Actual Startup Time": 50.110,                                                                              +
                                                       "Actual Total Time": 5948.603,                                                                              +
                                                       "Actual Rows": 17193,                                                                                       +
                                                       "Actual Loops": 4,                                                                                          +
                                                       "Shared Hit Blocks": 236227,                                                                                +
                                                       "Shared Read Blocks": 26754,                                                                                +
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
                                                           "Startup Cost": 0.07,                                                                                   +
                                                           "Total Cost": 516.68,                                                                                   +
                                                           "Plan Rows": 2,                                                                                         +
                                                           "Plan Width": 39,                                                                                       +
                                                           "Actual Startup Time": 200.429,                                                                         +
                                                           "Actual Total Time": 23767.970,                                                                         +
                                                           "Actual Rows": 17193,                                                                                   +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Inner Unique": true,                                                                                   +
                                                           "Shared Hit Blocks": 236227,                                                                            +
                                                           "Shared Read Blocks": 26754,                                                                            +
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
                                                               "Startup Cost": 0.05,                                                                               +
                                                               "Total Cost": 516.40,                                                                               +
                                                               "Plan Rows": 3,                                                                                     +
                                                               "Plan Width": 24,                                                                                   +
                                                               "Actual Startup Time": 192.960,                                                                     +
                                                               "Actual Total Time": 20130.126,                                                                     +
                                                               "Actual Rows": 18311,                                                                               +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Inner Unique": false,                                                                              +
                                                               "Shared Hit Blocks": 163854,                                                                        +
                                                               "Shared Read Blocks": 25824,                                                                        +
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
                                                                   "Startup Cost": 0.04,                                                                           +
                                                                   "Total Cost": 516.08,                                                                           +
                                                                   "Plan Rows": 10,                                                                                +
                                                                   "Plan Width": 12,                                                                               +
                                                                   "Actual Startup Time": 161.174,                                                                 +
                                                                   "Actual Total Time": 8628.359,                                                                  +
                                                                   "Actual Rows": 6216,                                                                            +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Inner Unique": true,                                                                           +
                                                                   "Join Filter": "(cct1.id = cc.subject_id)",                                                     +
                                                                   "Rows Removed by Join Filter": 13808,                                                           +
                                                                   "Shared Hit Blocks": 140547,                                                                    +
                                                                   "Shared Read Blocks": 17344,                                                                    +
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
                                                                       "Startup Cost": 0.04,                                                                       +
                                                                       "Total Cost": 516.04,                                                                       +
                                                                       "Plan Rows": 41,                                                                            +
                                                                       "Plan Width": 16,                                                                           +
                                                                       "Actual Startup Time": 109.515,                                                             +
                                                                       "Actual Total Time": 8600.504,                                                              +
                                                                       "Actual Rows": 20024,                                                                       +
                                                                       "Actual Loops": 1,                                                                          +
                                                                       "Inner Unique": false,                                                                      +
                                                                       "Shared Hit Blocks": 140546,                                                                +
                                                                       "Shared Read Blocks": 17344,                                                                +
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
                                                                           "Startup Cost": 0.03,                                                                   +
                                                                           "Total Cost": 514.14,                                                                   +
                                                                           "Plan Rows": 135,                                                                       +
                                                                           "Plan Width": 4,                                                                        +
                                                                           "Actual Startup Time": 54.358,                                                          +
                                                                           "Actual Total Time": 7451.851,                                                          +
                                                                           "Actual Rows": 37091,                                                                   +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Inner Unique": false,                                                                  +
                                                                           "Shared Hit Blocks": 10145,                                                             +
                                                                           "Shared Read Blocks": 16297,                                                            +
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
                                                                               "Node Type": "Index Scan",                                                          +
                                                                               "Parent Relationship": "Outer",                                                     +
                                                                               "Parallel Aware": false,                                                            +
                                                                               "Scan Direction": "Forward",                                                        +
                                                                               "Index Name": "keyword_idx_keyword",                                                +
                                                                               "Relation Name": "keyword",                                                         +
                                                                               "Alias": "k",                                                                       +
                                                                               "Startup Cost": 0.01,                                                               +
                                                                               "Total Cost": 24.53,                                                                +
                                                                               "Plan Rows": 4,                                                                     +
                                                                               "Plan Width": 4,                                                                    +
                                                                               "Actual Startup Time": 31.096,                                                      +
                                                                               "Actual Total Time": 113.259,                                                       +
                                                                               "Actual Rows": 3,                                                                   +
                                                                               "Actual Loops": 1,                                                                  +
                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",+
                                                                               "Rows Removed by Index Recheck": 0,                                                 +
                                                                               "Shared Hit Blocks": 8,                                                             +
                                                                               "Shared Read Blocks": 10,                                                           +
                                                                               "Shared Dirtied Blocks": 0,                                                         +
                                                                               "Shared Written Blocks": 0,                                                         +
                                                                               "Local Hit Blocks": 0,                                                              +
                                                                               "Local Read Blocks": 0,                                                             +
                                                                               "Local Dirtied Blocks": 0,                                                          +
                                                                               "Local Written Blocks": 0,                                                          +
                                                                               "Temp Read Blocks": 0,                                                              +
                                                                               "Temp Written Blocks": 0                                                            +
                                                                             },                                                                                    +
                                                                             {                                                                                     +
                                                                               "Node Type": "Index Scan",                                                          +
                                                                               "Parent Relationship": "Inner",                                                     +
                                                                               "Parallel Aware": false,                                                            +
                                                                               "Scan Direction": "Forward",                                                        +
                                                                               "Index Name": "keyword_id_movie_keyword",                                           +
                                                                               "Relation Name": "movie_keyword",                                                   +
                                                                               "Alias": "mk",                                                                      +
                                                                               "Startup Cost": 0.01,                                                               +
                                                                               "Total Cost": 122.40,                                                               +
                                                                               "Plan Rows": 39,                                                                    +
                                                                               "Plan Width": 8,                                                                    +
                                                                               "Actual Startup Time": 22.758,                                                      +
                                                                               "Actual Total Time": 2439.541,                                                      +
                                                                               "Actual Rows": 12364,                                                               +
                                                                               "Actual Loops": 3,                                                                  +
                                                                               "Index Cond": "(keyword_id = k.id)",                                                +
                                                                               "Rows Removed by Index Recheck": 0,                                                 +
                                                                               "Shared Hit Blocks": 10137,                                                         +
                                                                               "Shared Read Blocks": 16287,                                                        +
                                                                               "Shared Dirtied Blocks": 0,                                                         +
                                                                               "Shared Written Blocks": 0,                                                         +
                                                                               "Local Hit Blocks": 0,                                                              +
                                                                               "Local Read Blocks": 0,                                                             +
                                                                               "Local Dirtied Blocks": 0,                                                          +
                                                                               "Local Written Blocks": 0,                                                          +
                                                                               "Temp Read Blocks": 0,                                                              +
                                                                               "Temp Written Blocks": 0                                                            +
                                                                             }                                                                                     +
                                                                           ]                                                                                       +
                                                                         },                                                                                        +
                                                                         {                                                                                         +
                                                                           "Node Type": "Index Scan",                                                              +
                                                                           "Parent Relationship": "Inner",                                                         +
                                                                           "Parallel Aware": false,                                                                +
                                                                           "Scan Direction": "Forward",                                                            +
                                                                           "Index Name": "movie_id_complete_cast",                                                 +
                                                                           "Relation Name": "complete_cast",                                                       +
                                                                           "Alias": "cc",                                                                          +
                                                                           "Startup Cost": 0.01,                                                                   +
                                                                           "Total Cost": 0.01,                                                                     +
                                                                           "Plan Rows": 1,                                                                         +
                                                                           "Plan Width": 12,                                                                       +
                                                                           "Actual Startup Time": 0.023,                                                           +
                                                                           "Actual Total Time": 0.029,                                                             +
                                                                           "Actual Rows": 1,                                                                       +
                                                                           "Actual Loops": 37091,                                                                  +
                                                                           "Index Cond": "(movie_id = mk.movie_id)",                                               +
                                                                           "Rows Removed by Index Recheck": 0,                                                     +
                                                                           "Shared Hit Blocks": 130401,                                                            +
                                                                           "Shared Read Blocks": 1047,                                                             +
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
                                                                       "Plan Width": 4,                                                                            +
                                                                       "Actual Startup Time": 0.000,                                                               +
                                                                       "Actual Total Time": 0.000,                                                                 +
                                                                       "Actual Rows": 1,                                                                           +
                                                                       "Actual Loops": 20024,                                                                      +
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
                                                                           "Relation Name": "comp_cast_type",                                                      +
                                                                           "Alias": "cct1",                                                                        +
                                                                           "Startup Cost": 0.00,                                                                   +
                                                                           "Total Cost": 0.03,                                                                     +
                                                                           "Plan Rows": 1,                                                                         +
                                                                           "Plan Width": 4,                                                                        +
                                                                           "Actual Startup Time": 0.014,                                                           +
                                                                           "Actual Total Time": 0.016,                                                             +
                                                                           "Actual Rows": 1,                                                                       +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Filter": "((kind)::text = 'crew'::text)",                                              +
                                                                           "Rows Removed by Filter": 3,                                                            +
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
                                                                   "Plan Rows": 1,                                                                                 +
                                                                   "Plan Width": 12,                                                                               +
                                                                   "Actual Startup Time": 1.589,                                                                   +
                                                                   "Actual Total Time": 1.848,                                                                     +
                                                                   "Actual Rows": 3,                                                                               +
                                                                   "Actual Loops": 6216,                                                                           +
                                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                       +
                                                                   "Rows Removed by Index Recheck": 0,                                                             +
                                                                   "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                        +
                                                                   "Rows Removed by Filter": 11,                                                                   +
                                                                   "Shared Hit Blocks": 23307,                                                                     +
                                                                   "Shared Read Blocks": 8480,                                                                     +
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
                                                               "Index Name": "company_name_pkey",                                                                  +
                                                               "Relation Name": "company_name",                                                                    +
                                                               "Alias": "cn",                                                                                      +
                                                               "Startup Cost": 0.01,                                                                               +
                                                               "Total Cost": 0.10,                                                                                 +
                                                               "Plan Rows": 1,                                                                                     +
                                                               "Plan Width": 23,                                                                                   +
                                                               "Actual Startup Time": 0.197,                                                                       +
                                                               "Actual Total Time": 0.197,                                                                         +
                                                               "Actual Rows": 1,                                                                                   +
                                                               "Actual Loops": 18311,                                                                              +
                                                               "Index Cond": "(id = mc.company_id)",                                                               +
                                                               "Rows Removed by Index Recheck": 0,                                                                 +
                                                               "Filter": "((country_code)::text <> '[us]'::text)",                                                 +
                                                               "Rows Removed by Filter": 0,                                                                        +
                                                               "Shared Hit Blocks": 72373,                                                                         +
                                                               "Shared Read Blocks": 930,                                                                          +
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
                                                 }                                                                                                                 +
                                               ]                                                                                                                   +
                                             }                                                                                                                     +
                                           ]                                                                                                                       +
                                         },                                                                                                                        +
                                         {                                                                                                                         +
                                           "Node Type": "Index Scan",                                                                                              +
                                           "Parent Relationship": "Inner",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Scan Direction": "Forward",                                                                                            +
                                           "Index Name": "movie_id_movie_info_idx",                                                                                +
                                           "Relation Name": "movie_info_idx",                                                                                      +
                                           "Alias": "mi_idx",                                                                                                      +
                                           "Startup Cost": 0.01,                                                                                                   +
                                           "Total Cost": 0.02,                                                                                                     +
                                           "Plan Rows": 3,                                                                                                         +
                                           "Plan Width": 14,                                                                                                       +
                                           "Actual Startup Time": 1.031,                                                                                           +
                                           "Actual Total Time": 1.038,                                                                                             +
                                           "Actual Rows": 3,                                                                                                       +
                                           "Actual Loops": 9291,                                                                                                   +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                               +
                                           "Rows Removed by Index Recheck": 0,                                                                                     +
                                           "Filter": "(info < '8.5'::text)",                                                                                       +
                                           "Rows Removed by Filter": 0,                                                                                            +
                                           "Shared Hit Blocks": 36441,                                                                                             +
                                           "Shared Read Blocks": 1762,                                                                                             +
                                           "Shared Dirtied Blocks": 0,                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                              +
                                           "Local Written Blocks": 0,                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                  +
                                           "Temp Written Blocks": 0                                                                                                +
                                         }                                                                                                                         +
                                       ]                                                                                                                           +
                                     },                                                                                                                            +
                                     {                                                                                                                             +
                                       "Node Type": "Materialize",                                                                                                 +
                                       "Parent Relationship": "Inner",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Startup Cost": 0.00,                                                                                                       +
                                       "Total Cost": 0.05,                                                                                                         +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 4,                                                                                                            +
                                       "Actual Startup Time": 0.000,                                                                                               +
                                       "Actual Total Time": 0.000,                                                                                                 +
                                       "Actual Rows": 1,                                                                                                           +
                                       "Actual Loops": 27795,                                                                                                      +
                                       "Shared Hit Blocks": 1,                                                                                                     +
                                       "Shared Read Blocks": 0,                                                                                                    +
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
                                           "Node Type": "Seq Scan",                                                                                                +
                                           "Parent Relationship": "Outer",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Relation Name": "info_type",                                                                                           +
                                           "Alias": "it2",                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                   +
                                           "Total Cost": 0.05,                                                                                                     +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 4,                                                                                                        +
                                           "Actual Startup Time": 0.058,                                                                                           +
                                           "Actual Total Time": 0.064,                                                                                             +
                                           "Actual Rows": 1,                                                                                                       +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Filter": "((info)::text = 'rating'::text)",                                                                            +
                                           "Rows Removed by Filter": 112,                                                                                          +
                                           "Shared Hit Blocks": 1,                                                                                                 +
                                           "Shared Read Blocks": 0,                                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                              +
                                           "Local Written Blocks": 0,                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                  +
                                           "Temp Written Blocks": 0                                                                                                +
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
                                   "Index Name": "title_idx_id",                                                                                                   +
                                   "Relation Name": "title",                                                                                                       +
                                   "Alias": "t",                                                                                                                   +
                                   "Startup Cost": 0.01,                                                                                                           +
                                   "Total Cost": 0.04,                                                                                                             +
                                   "Plan Rows": 1,                                                                                                                 +
                                   "Plan Width": 25,                                                                                                               +
                                   "Actual Startup Time": 1.386,                                                                                                   +
                                   "Actual Total Time": 1.386,                                                                                                     +
                                   "Actual Rows": 1,                                                                                                               +
                                   "Actual Loops": 8934,                                                                                                           +
                                   "Index Cond": "(id = mk.movie_id)",                                                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                                             +
                                   "Filter": "(production_year > 2000)",                                                                                           +
                                   "Rows Removed by Filter": 0,                                                                                                    +
                                   "Shared Hit Blocks": 33905,                                                                                                     +
                                   "Shared Read Blocks": 1860,                                                                                                     +
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
                             }                                                                                                                                     +
                           ]                                                                                                                                       +
                         }                                                                                                                                         +
                       ]                                                                                                                                           +
                     },                                                                                                                                            +
                     {                                                                                                                                             +
                       "Node Type": "Index Scan",                                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Scan Direction": "Forward",                                                                                                                +
                       "Index Name": "movie_id_movie_info",                                                                                                        +
                       "Relation Name": "movie_info",                                                                                                              +
                       "Alias": "mi",                                                                                                                              +
                       "Startup Cost": 0.01,                                                                                                                       +
                       "Total Cost": 0.16,                                                                                                                         +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 8,                                                                                                                            +
                       "Actual Startup Time": 4.378,                                                                                                               +
                       "Actual Total Time": 4.893,                                                                                                                 +
                       "Actual Rows": 1,                                                                                                                           +
                       "Actual Loops": 4410,                                                                                                                       +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                                   +
                       "Rows Removed by Index Recheck": 0,                                                                                                         +
                       "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",                          +
                       "Rows Removed by Filter": 247,                                                                                                              +
                       "Shared Hit Blocks": 117916,                                                                                                                +
                       "Shared Read Blocks": 4134,                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                 +
                       "Shared Written Blocks": 0,                                                                                                                 +
                       "Local Hit Blocks": 0,                                                                                                                      +
                       "Local Read Blocks": 0,                                                                                                                     +
                       "Local Dirtied Blocks": 0,                                                                                                                  +
                       "Local Written Blocks": 0,                                                                                                                  +
                       "Temp Read Blocks": 0,                                                                                                                      +
                       "Temp Written Blocks": 0                                                                                                                    +
                     }                                                                                                                                             +
                   ]                                                                                                                                               +
                 }                                                                                                                                                 +
               ]                                                                                                                                                   +
             }                                                                                                                                                     +
           ]                                                                                                                                                       +
         }                                                                                                                                                         +
       ]                                                                                                                                                           +
     },                                                                                                                                                            +
     "Planning Time": 14965.053,                                                                                                                                   +
     "Triggers": [                                                                                                                                                 +
     ],                                                                                                                                                            +
     "Execution Time": 67683.150                                                                                                                                   +
   }                                                                                                                                                               +
 ]
(1 row)

