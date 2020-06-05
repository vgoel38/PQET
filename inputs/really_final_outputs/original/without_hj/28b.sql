                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                 +
   {                                                                                                                                                               +
     "Plan": {                                                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                                                   +
       "Strategy": "Plain",                                                                                                                                        +
       "Partial Mode": "Simple",                                                                                                                                   +
       "Parallel Aware": false,                                                                                                                                    +
       "Startup Cost": 518.12,                                                                                                                                     +
       "Total Cost": 518.12,                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                             +
       "Plan Width": 96,                                                                                                                                           +
       "Actual Startup Time": 96486.511,                                                                                                                           +
       "Actual Total Time": 96486.512,                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                           +
       "Actual Loops": 1,                                                                                                                                          +
       "Shared Hit Blocks": 187355,                                                                                                                                +
       "Shared Read Blocks": 40119,                                                                                                                                +
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
           "Total Cost": 518.12,                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                         +
           "Plan Width": 42,                                                                                                                                       +
           "Actual Startup Time": 38707.941,                                                                                                                       +
           "Actual Total Time": 96486.045,                                                                                                                         +
           "Actual Rows": 148,                                                                                                                                     +
           "Actual Loops": 1,                                                                                                                                      +
           "Inner Unique": false,                                                                                                                                  +
           "Join Filter": "(kt.id = t.kind_id)",                                                                                                                   +
           "Rows Removed by Join Filter": 174,                                                                                                                     +
           "Shared Hit Blocks": 187355,                                                                                                                            +
           "Shared Read Blocks": 40119,                                                                                                                            +
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
               "Relation Name": "kind_type",                                                                                                                       +
               "Alias": "kt",                                                                                                                                      +
               "Startup Cost": 0.00,                                                                                                                               +
               "Total Cost": 0.03,                                                                                                                                 +
               "Plan Rows": 2,                                                                                                                                     +
               "Plan Width": 4,                                                                                                                                    +
               "Actual Startup Time": 0.017,                                                                                                                       +
               "Actual Total Time": 0.026,                                                                                                                         +
               "Actual Rows": 2,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                  +
               "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                       +
               "Rows Removed by Filter": 5,                                                                                                                        +
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
               "Total Cost": 518.09,                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                     +
               "Plan Width": 46,                                                                                                                                   +
               "Actual Startup Time": 12282.478,                                                                                                                   +
               "Actual Total Time": 48242.884,                                                                                                                     +
               "Actual Rows": 161,                                                                                                                                 +
               "Actual Loops": 2,                                                                                                                                  +
               "Shared Hit Blocks": 187354,                                                                                                                        +
               "Shared Read Blocks": 40119,                                                                                                                        +
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
                   "Total Cost": 518.09,                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                 +
                   "Plan Width": 46,                                                                                                                               +
                   "Actual Startup Time": 24564.944,                                                                                                               +
                   "Actual Total Time": 96485.396,                                                                                                                 +
                   "Actual Rows": 161,                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                              +
                   "Inner Unique": true,                                                                                                                           +
                   "Join Filter": "(mi.movie_id = t.id)",                                                                                                          +
                   "Rows Removed by Join Filter": 0,                                                                                                               +
                   "Shared Hit Blocks": 187354,                                                                                                                    +
                   "Shared Read Blocks": 40119,                                                                                                                    +
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
                       "Total Cost": 517.87,                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 45,                                                                                                                           +
                       "Actual Startup Time": 24521.012,                                                                                                           +
                       "Actual Total Time": 94495.781,                                                                                                             +
                       "Actual Rows": 1233,                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                          +
                       "Inner Unique": true,                                                                                                                       +
                       "Shared Hit Blocks": 182530,                                                                                                                +
                       "Shared Read Blocks": 40011,                                                                                                                +
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
                           "Startup Cost": 0.08,                                                                                                                   +
                           "Total Cost": 517.40,                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                         +
                           "Plan Width": 30,                                                                                                                       +
                           "Actual Startup Time": 24512.616,                                                                                                       +
                           "Actual Total Time": 92213.039,                                                                                                         +
                           "Actual Rows": 1269,                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                      +
                           "Inner Unique": false,                                                                                                                  +
                           "Join Filter": "(ct.id = mc.company_type_id)",                                                                                          +
                           "Rows Removed by Join Filter": 3807,                                                                                                    +
                           "Shared Hit Blocks": 177821,                                                                                                            +
                           "Shared Read Blocks": 39637,                                                                                                            +
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
                               "Node Type": "Seq Scan",                                                                                                            +
                               "Parent Relationship": "Outer",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Relation Name": "company_type",                                                                                                    +
                               "Alias": "ct",                                                                                                                      +
                               "Startup Cost": 0.00,                                                                                                               +
                               "Total Cost": 0.03,                                                                                                                 +
                               "Plan Rows": 4,                                                                                                                     +
                               "Plan Width": 4,                                                                                                                    +
                               "Actual Startup Time": 0.005,                                                                                                       +
                               "Actual Total Time": 0.008,                                                                                                         +
                               "Actual Rows": 4,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                  +
                               "Shared Hit Blocks": 1,                                                                                                             +
                               "Shared Read Blocks": 0,                                                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                                                         +
                               "Shared Written Blocks": 0,                                                                                                         +
                               "Local Hit Blocks": 0,                                                                                                              +
                               "Local Read Blocks": 0,                                                                                                             +
                               "Local Dirtied Blocks": 0,                                                                                                          +
                               "Local Written Blocks": 0,                                                                                                          +
                               "Temp Read Blocks": 0,                                                                                                              +
                               "Temp Written Blocks": 0                                                                                                            +
                             },                                                                                                                                    +
                             {                                                                                                                                     +
                               "Node Type": "Materialize",                                                                                                         +
                               "Parent Relationship": "Inner",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Startup Cost": 0.08,                                                                                                               +
                               "Total Cost": 517.36,                                                                                                               +
                               "Plan Rows": 1,                                                                                                                     +
                               "Plan Width": 34,                                                                                                                   +
                               "Actual Startup Time": 6128.151,                                                                                                    +
                               "Actual Total Time": 23052.476,                                                                                                     +
                               "Actual Rows": 1269,                                                                                                                +
                               "Actual Loops": 4,                                                                                                                  +
                               "Shared Hit Blocks": 177820,                                                                                                        +
                               "Shared Read Blocks": 39637,                                                                                                        +
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
                                   "Total Cost": 517.36,                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                 +
                                   "Plan Width": 34,                                                                                                               +
                                   "Actual Startup Time": 24512.594,                                                                                               +
                                   "Actual Total Time": 92206.875,                                                                                                 +
                                   "Actual Rows": 1269,                                                                                                            +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Inner Unique": false,                                                                                                          +
                                   "Join Filter": "(mi.movie_id = mc.movie_id)",                                                                                   +
                                   "Rows Removed by Join Filter": 0,                                                                                               +
                                   "Shared Hit Blocks": 177820,                                                                                                    +
                                   "Shared Read Blocks": 39637,                                                                                                    +
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
                                       "Startup Cost": 0.07,                                                                                                       +
                                       "Total Cost": 517.21,                                                                                                       +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 22,                                                                                                           +
                                       "Actual Startup Time": 24469.078,                                                                                           +
                                       "Actual Total Time": 89940.748,                                                                                             +
                                       "Actual Rows": 107,                                                                                                         +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Inner Unique": false,                                                                                                      +
                                       "Join Filter": "(it1.id = mi.info_type_id)",                                                                                +
                                       "Rows Removed by Join Filter": 180,                                                                                         +
                                       "Shared Hit Blocks": 177473,                                                                                                +
                                       "Shared Read Blocks": 39428,                                                                                                +
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
                                           "Alias": "it1",                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                   +
                                           "Total Cost": 0.05,                                                                                                     +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 4,                                                                                                        +
                                           "Actual Startup Time": 0.014,                                                                                           +
                                           "Actual Total Time": 0.056,                                                                                             +
                                           "Actual Rows": 1,                                                                                                       +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Filter": "((info)::text = 'countries'::text)",                                                                         +
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
                                         },                                                                                                                        +
                                         {                                                                                                                         +
                                           "Node Type": "Materialize",                                                                                             +
                                           "Parent Relationship": "Inner",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Startup Cost": 0.07,                                                                                                   +
                                           "Total Cost": 517.16,                                                                                                   +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 26,                                                                                                       +
                                           "Actual Startup Time": 24469.056,                                                                                       +
                                           "Actual Total Time": 89940.258,                                                                                         +
                                           "Actual Rows": 287,                                                                                                     +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Shared Hit Blocks": 177472,                                                                                            +
                                           "Shared Read Blocks": 39428,                                                                                            +
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
                                               "Startup Cost": 0.07,                                                                                               +
                                               "Total Cost": 517.16,                                                                                               +
                                               "Plan Rows": 1,                                                                                                     +
                                               "Plan Width": 26,                                                                                                   +
                                               "Actual Startup Time": 24469.040,                                                                                   +
                                               "Actual Total Time": 89939.110,                                                                                     +
                                               "Actual Rows": 287,                                                                                                 +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Inner Unique": false,                                                                                              +
                                               "Shared Hit Blocks": 177472,                                                                                        +
                                               "Shared Read Blocks": 39428,                                                                                        +
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
                                                   "Startup Cost": 0.05,                                                                                           +
                                                   "Total Cost": 516.39,                                                                                           +
                                                   "Plan Rows": 1,                                                                                                 +
                                                   "Plan Width": 18,                                                                                               +
                                                   "Actual Startup Time": 23036.699,                                                                               +
                                                   "Actual Total Time": 23043.199,                                                                                 +
                                                   "Actual Rows": 1591,                                                                                            +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Inner Unique": false,                                                                                          +
                                                   "Join Filter": "(cc.status_id = cct2.id)",                                                                      +
                                                   "Rows Removed by Join Filter": 7532,                                                                            +
                                                   "Shared Hit Blocks": 161185,                                                                                    +
                                                   "Shared Read Blocks": 21833,                                                                                    +
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
                                                       "Relation Name": "comp_cast_type",                                                                          +
                                                       "Alias": "cct2",                                                                                            +
                                                       "Startup Cost": 0.00,                                                                                       +
                                                       "Total Cost": 0.03,                                                                                         +
                                                       "Plan Rows": 3,                                                                                             +
                                                       "Plan Width": 4,                                                                                            +
                                                       "Actual Startup Time": 0.006,                                                                               +
                                                       "Actual Total Time": 0.017,                                                                                 +
                                                       "Actual Rows": 3,                                                                                           +
                                                       "Actual Loops": 1,                                                                                          +
                                                       "Filter": "((kind)::text <> 'complete+verified'::text)",                                                    +
                                                       "Rows Removed by Filter": 1,                                                                                +
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
                                                       "Startup Cost": 0.05,                                                                                       +
                                                       "Total Cost": 516.36,                                                                                       +
                                                       "Plan Rows": 1,                                                                                             +
                                                       "Plan Width": 22,                                                                                           +
                                                       "Actual Startup Time": 63.575,                                                                              +
                                                       "Actual Total Time": 7678.707,                                                                              +
                                                       "Actual Rows": 3041,                                                                                        +
                                                       "Actual Loops": 3,                                                                                          +
                                                       "Shared Hit Blocks": 161184,                                                                                +
                                                       "Shared Read Blocks": 21833,                                                                                +
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
                                                           "Startup Cost": 0.05,                                                                                   +
                                                           "Total Cost": 516.36,                                                                                   +
                                                           "Plan Rows": 1,                                                                                         +
                                                           "Plan Width": 22,                                                                                       +
                                                           "Actual Startup Time": 190.719,                                                                         +
                                                           "Actual Total Time": 23028.460,                                                                         +
                                                           "Actual Rows": 3041,                                                                                    +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Inner Unique": true,                                                                                   +
                                                           "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                        +
                                                           "Rows Removed by Join Filter": 1120,                                                                    +
                                                           "Shared Hit Blocks": 161184,                                                                            +
                                                           "Shared Read Blocks": 21833,                                                                            +
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
                                                               "Total Cost": 516.31,                                                                               +
                                                               "Plan Rows": 7,                                                                                     +
                                                               "Plan Width": 26,                                                                                   +
                                                               "Actual Startup Time": 190.652,                                                                     +
                                                               "Actual Total Time": 23021.617,                                                                     +
                                                               "Actual Rows": 4161,                                                                                +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Inner Unique": false,                                                                              +
                                                               "Shared Hit Blocks": 161183,                                                                        +
                                                               "Shared Read Blocks": 21833,                                                                        +
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
                                                                   "Actual Startup Time": 169.796,                                                                 +
                                                                   "Actual Total Time": 13303.279,                                                                 +
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
                                                                       "Actual Startup Time": 118.128,                                                             +
                                                                       "Actual Total Time": 13275.508,                                                             +
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
                                                                           "Actual Startup Time": 62.988,                                                          +
                                                                           "Actual Total Time": 12186.897,                                                         +
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
                                                                               "Actual Startup Time": 39.719,                                                      +
                                                                               "Actual Total Time": 108.652,                                                       +
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
                                                                               "Actual Startup Time": 22.773,                                                      +
                                                                               "Actual Total Time": 4019.194,                                                      +
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
                                                                           "Actual Startup Time": 0.022,                                                           +
                                                                           "Actual Total Time": 0.028,                                                             +
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
                                                                           "Actual Startup Time": 0.012,                                                           +
                                                                           "Actual Total Time": 0.015,                                                             +
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
                                                                   "Index Name": "movie_id_movie_info_idx",                                                        +
                                                                   "Relation Name": "movie_info_idx",                                                              +
                                                                   "Alias": "mi_idx",                                                                              +
                                                                   "Startup Cost": 0.01,                                                                           +
                                                                   "Total Cost": 0.02,                                                                             +
                                                                   "Plan Rows": 1,                                                                                 +
                                                                   "Plan Width": 14,                                                                               +
                                                                   "Actual Startup Time": 1.557,                                                                   +
                                                                   "Actual Total Time": 1.562,                                                                     +
                                                                   "Actual Rows": 1,                                                                               +
                                                                   "Actual Loops": 6216,                                                                           +
                                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                       +
                                                                   "Rows Removed by Index Recheck": 0,                                                             +
                                                                   "Filter": "(info > '6.5'::text)",                                                               +
                                                                   "Rows Removed by Filter": 2,                                                                    +
                                                                   "Shared Hit Blocks": 20636,                                                                     +
                                                                   "Shared Read Blocks": 4489,                                                                     +
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
                                                               "Node Type": "Materialize",                                                                         +
                                                               "Parent Relationship": "Inner",                                                                     +
                                                               "Parallel Aware": false,                                                                            +
                                                               "Startup Cost": 0.00,                                                                               +
                                                               "Total Cost": 0.05,                                                                                 +
                                                               "Plan Rows": 1,                                                                                     +
                                                               "Plan Width": 4,                                                                                    +
                                                               "Actual Startup Time": 0.000,                                                                       +
                                                               "Actual Total Time": 0.000,                                                                         +
                                                               "Actual Rows": 1,                                                                                   +
                                                               "Actual Loops": 4161,                                                                               +
                                                               "Shared Hit Blocks": 1,                                                                             +
                                                               "Shared Read Blocks": 0,                                                                            +
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
                                                                   "Node Type": "Seq Scan",                                                                        +
                                                                   "Parent Relationship": "Outer",                                                                 +
                                                                   "Parallel Aware": false,                                                                        +
                                                                   "Relation Name": "info_type",                                                                   +
                                                                   "Alias": "it2",                                                                                 +
                                                                   "Startup Cost": 0.00,                                                                           +
                                                                   "Total Cost": 0.05,                                                                             +
                                                                   "Plan Rows": 1,                                                                                 +
                                                                   "Plan Width": 4,                                                                                +
                                                                   "Actual Startup Time": 0.052,                                                                   +
                                                                   "Actual Total Time": 0.062,                                                                     +
                                                                   "Actual Rows": 1,                                                                               +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Filter": "((info)::text = 'rating'::text)",                                                    +
                                                                   "Rows Removed by Filter": 112,                                                                  +
                                                                   "Shared Hit Blocks": 1,                                                                         +
                                                                   "Shared Read Blocks": 0,                                                                        +
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
                                                   "Index Name": "movie_id_movie_info",                                                                            +
                                                   "Relation Name": "movie_info",                                                                                  +
                                                   "Alias": "mi",                                                                                                  +
                                                   "Startup Cost": 0.01,                                                                                           +
                                                   "Total Cost": 0.15,                                                                                             +
                                                   "Plan Rows": 1,                                                                                                 +
                                                   "Plan Width": 8,                                                                                                +
                                                   "Actual Startup Time": 39.174,                                                                                  +
                                                   "Actual Total Time": 42.042,                                                                                    +
                                                   "Actual Rows": 0,                                                                                               +
                                                   "Actual Loops": 1591,                                                                                           +
                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                       +
                                                   "Rows Removed by Index Recheck": 0,                                                                             +
                                                   "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))",                                           +
                                                   "Rows Removed by Filter": 110,                                                                                  +
                                                   "Shared Hit Blocks": 16287,                                                                                     +
                                                   "Shared Read Blocks": 17595,                                                                                    +
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
                                     {                                                                                                                             +
                                       "Node Type": "Index Scan",                                                                                                  +
                                       "Parent Relationship": "Inner",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Scan Direction": "Forward",                                                                                                +
                                       "Index Name": "movie_id_movie_companies",                                                                                   +
                                       "Relation Name": "movie_companies",                                                                                         +
                                       "Alias": "mc",                                                                                                              +
                                       "Startup Cost": 0.01,                                                                                                       +
                                       "Total Cost": 0.03,                                                                                                         +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 12,                                                                                                           +
                                       "Actual Startup Time": 17.893,                                                                                              +
                                       "Actual Total Time": 21.160,                                                                                                +
                                       "Actual Rows": 12,                                                                                                          +
                                       "Actual Loops": 107,                                                                                                        +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                   +
                                       "Rows Removed by Index Recheck": 0,                                                                                         +
                                       "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                                    +
                                       "Rows Removed by Filter": 12,                                                                                               +
                                       "Shared Hit Blocks": 347,                                                                                                   +
                                       "Shared Read Blocks": 209,                                                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                                                                 +
                                       "Shared Written Blocks": 0,                                                                                                 +
                                       "Local Hit Blocks": 0,                                                                                                      +
                                       "Local Read Blocks": 0,                                                                                                     +
                                       "Local Dirtied Blocks": 0,                                                                                                  +
                                       "Local Written Blocks": 0,                                                                                                  +
                                       "Temp Read Blocks": 0,                                                                                                      +
                                       "Temp Written Blocks": 0                                                                                                    +
                                     }                                                                                                                             +
                                   ]                                                                                                                               +
                                 }                                                                                                                                 +
                               ]                                                                                                                                   +
                             }                                                                                                                                     +
                           ]                                                                                                                                       +
                         },                                                                                                                                        +
                         {                                                                                                                                         +
                           "Node Type": "Index Scan",                                                                                                              +
                           "Parent Relationship": "Inner",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Scan Direction": "Forward",                                                                                                            +
                           "Index Name": "company_name_pkey",                                                                                                      +
                           "Relation Name": "company_name",                                                                                                        +
                           "Alias": "cn",                                                                                                                          +
                           "Startup Cost": 0.01,                                                                                                                   +
                           "Total Cost": 0.10,                                                                                                                     +
                           "Plan Rows": 1,                                                                                                                         +
                           "Plan Width": 23,                                                                                                                       +
                           "Actual Startup Time": 1.796,                                                                                                           +
                           "Actual Total Time": 1.796,                                                                                                             +
                           "Actual Rows": 1,                                                                                                                       +
                           "Actual Loops": 1269,                                                                                                                   +
                           "Index Cond": "(id = mc.company_id)",                                                                                                   +
                           "Rows Removed by Index Recheck": 0,                                                                                                     +
                           "Filter": "((country_code)::text <> '[us]'::text)",                                                                                     +
                           "Rows Removed by Filter": 0,                                                                                                            +
                           "Shared Hit Blocks": 4709,                                                                                                              +
                           "Shared Read Blocks": 374,                                                                                                              +
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
                     },                                                                                                                                            +
                     {                                                                                                                                             +
                       "Node Type": "Index Scan",                                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Scan Direction": "Forward",                                                                                                                +
                       "Index Name": "title_idx_id",                                                                                                               +
                       "Relation Name": "title",                                                                                                                   +
                       "Alias": "t",                                                                                                                               +
                       "Startup Cost": 0.01,                                                                                                                       +
                       "Total Cost": 0.04,                                                                                                                         +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 25,                                                                                                                           +
                       "Actual Startup Time": 1.611,                                                                                                               +
                       "Actual Total Time": 1.611,                                                                                                                 +
                       "Actual Rows": 0,                                                                                                                           +
                       "Actual Loops": 1233,                                                                                                                       +
                       "Index Cond": "(id = mk.movie_id)",                                                                                                         +
                       "Rows Removed by Index Recheck": 0,                                                                                                         +
                       "Filter": "(production_year > 2005)",                                                                                                       +
                       "Rows Removed by Filter": 1,                                                                                                                +
                       "Shared Hit Blocks": 4824,                                                                                                                  +
                       "Shared Read Blocks": 108,                                                                                                                  +
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
     "Planning Time": 15216.059,                                                                                                                                   +
     "Triggers": [                                                                                                                                                 +
     ],                                                                                                                                                            +
     "Execution Time": 96514.855                                                                                                                                   +
   }                                                                                                                                                               +
 ]
(1 row)

