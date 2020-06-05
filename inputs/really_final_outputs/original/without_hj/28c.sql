                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 517.52,                                                                                                                                           +
       "Total Cost": 517.52,                                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 184775.417,                                                                                                                                +
       "Actual Total Time": 184775.417,                                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 570120,                                                                                                                                      +
       "Shared Read Blocks": 78767,                                                                                                                                      +
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
           "Total Cost": 517.52,                                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 42,                                                                                                                                             +
           "Actual Startup Time": 8432.220,                                                                                                                              +
           "Actual Total Time": 184749.498,                                                                                                                              +
           "Actual Rows": 8373,                                                                                                                                          +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                                  +
           "Rows Removed by Join Filter": 1116,                                                                                                                          +
           "Shared Hit Blocks": 570120,                                                                                                                                  +
           "Shared Read Blocks": 78767,                                                                                                                                  +
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
               "Node Type": "Nested Loop",                                                                                                                               +
               "Parent Relationship": "Outer",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Join Type": "Inner",                                                                                                                                     +
               "Startup Cost": 0.11,                                                                                                                                     +
               "Total Cost": 517.47,                                                                                                                                     +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 46,                                                                                                                                         +
               "Actual Startup Time": 8432.173,                                                                                                                          +
               "Actual Total Time": 184737.360,                                                                                                                          +
               "Actual Rows": 9489,                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                        +
               "Inner Unique": false,                                                                                                                                    +
               "Join Filter": "(t.kind_id = kt.id)",                                                                                                                     +
               "Rows Removed by Join Filter": 10141,                                                                                                                     +
               "Shared Hit Blocks": 570119,                                                                                                                              +
               "Shared Read Blocks": 78767,                                                                                                                              +
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
                   "Node Type": "Seq Scan",                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Relation Name": "kind_type",                                                                                                                         +
                   "Alias": "kt",                                                                                                                                        +
                   "Startup Cost": 0.00,                                                                                                                                 +
                   "Total Cost": 0.03,                                                                                                                                   +
                   "Plan Rows": 2,                                                                                                                                       +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 0.017,                                                                                                                         +
                   "Actual Total Time": 0.024,                                                                                                                           +
                   "Actual Rows": 2,                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                         +
                   "Rows Removed by Filter": 5,                                                                                                                          +
                   "Shared Hit Blocks": 1,                                                                                                                               +
                   "Shared Read Blocks": 0,                                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                                              +
                 },                                                                                                                                                      +
                 {                                                                                                                                                       +
                   "Node Type": "Materialize",                                                                                                                           +
                   "Parent Relationship": "Inner",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Startup Cost": 0.11,                                                                                                                                 +
                   "Total Cost": 517.44,                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 50,                                                                                                                                     +
                   "Actual Startup Time": 2213.552,                                                                                                                      +
                   "Actual Total Time": 92364.234,                                                                                                                       +
                   "Actual Rows": 9815,                                                                                                                                  +
                   "Actual Loops": 2,                                                                                                                                    +
                   "Shared Hit Blocks": 570118,                                                                                                                          +
                   "Shared Read Blocks": 78767,                                                                                                                          +
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
                       "Startup Cost": 0.11,                                                                                                                             +
                       "Total Cost": 517.44,                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 50,                                                                                                                                 +
                       "Actual Startup Time": 4427.092,                                                                                                                  +
                       "Actual Total Time": 184714.230,                                                                                                                  +
                       "Actual Rows": 9815,                                                                                                                              +
                       "Actual Loops": 1,                                                                                                                                +
                       "Inner Unique": true,                                                                                                                             +
                       "Join Filter": "(mi.movie_id = t.id)",                                                                                                            +
                       "Rows Removed by Join Filter": 0,                                                                                                                 +
                       "Shared Hit Blocks": 570118,                                                                                                                      +
                       "Shared Read Blocks": 78767,                                                                                                                      +
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
                           "Startup Cost": 0.09,                                                                                                                         +
                           "Total Cost": 517.23,                                                                                                                         +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 49,                                                                                                                             +
                           "Actual Startup Time": 304.801,                                                                                                               +
                           "Actual Total Time": 166405.933,                                                                                                              +
                           "Actual Rows": 26920,                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                            +
                           "Inner Unique": true,                                                                                                                         +
                           "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                                              +
                           "Rows Removed by Join Filter": 53598,                                                                                                         +
                           "Shared Hit Blocks": 464636,                                                                                                                  +
                           "Shared Read Blocks": 76518,                                                                                                                  +
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
                               "Node Type": "Nested Loop",                                                                                                               +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Join Type": "Inner",                                                                                                                     +
                               "Startup Cost": 0.09,                                                                                                                     +
                               "Total Cost": 517.18,                                                                                                                     +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 53,                                                                                                                         +
                               "Actual Startup Time": 304.711,                                                                                                           +
                               "Actual Total Time": 166302.207,                                                                                                          +
                               "Actual Rows": 80518,                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                        +
                               "Inner Unique": false,                                                                                                                    +
                               "Join Filter": "(mi.movie_id = mi_idx.movie_id)",                                                                                         +
                               "Rows Removed by Join Filter": 0,                                                                                                         +
                               "Shared Hit Blocks": 464635,                                                                                                              +
                               "Shared Read Blocks": 76518,                                                                                                              +
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
                                   "Startup Cost": 0.08,                                                                                                                 +
                                   "Total Cost": 517.06,                                                                                                                 +
                                   "Plan Rows": 1,                                                                                                                       +
                                   "Plan Width": 39,                                                                                                                     +
                                   "Actual Startup Time": 286.100,                                                                                                       +
                                   "Actual Total Time": 154815.539,                                                                                                      +
                                   "Actual Rows": 27394,                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Inner Unique": true,                                                                                                                 +
                                   "Shared Hit Blocks": 355485,                                                                                                          +
                                   "Shared Read Blocks": 74465,                                                                                                          +
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
                                       "Startup Cost": 0.07,                                                                                                             +
                                       "Total Cost": 516.59,                                                                                                             +
                                       "Plan Rows": 1,                                                                                                                   +
                                       "Plan Width": 24,                                                                                                                 +
                                       "Actual Startup Time": 242.194,                                                                                                   +
                                       "Actual Total Time": 148698.293,                                                                                                  +
                                       "Actual Rows": 28884,                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Inner Unique": false,                                                                                                            +
                                       "Join Filter": "(ct.id = mc.company_type_id)",                                                                                    +
                                       "Rows Removed by Join Filter": 86652,                                                                                             +
                                       "Shared Hit Blocks": 240700,                                                                                                      +
                                       "Shared Read Blocks": 73493,                                                                                                      +
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
                                           "Node Type": "Seq Scan",                                                                                                      +
                                           "Parent Relationship": "Outer",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Relation Name": "company_type",                                                                                              +
                                           "Alias": "ct",                                                                                                                +
                                           "Startup Cost": 0.00,                                                                                                         +
                                           "Total Cost": 0.03,                                                                                                           +
                                           "Plan Rows": 4,                                                                                                               +
                                           "Plan Width": 4,                                                                                                              +
                                           "Actual Startup Time": 0.005,                                                                                                 +
                                           "Actual Total Time": 0.012,                                                                                                   +
                                           "Actual Rows": 4,                                                                                                             +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Shared Hit Blocks": 1,                                                                                                       +
                                           "Shared Read Blocks": 0,                                                                                                      +
                                           "Shared Dirtied Blocks": 0,                                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                                        +
                                           "Local Read Blocks": 0,                                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                                    +
                                           "Local Written Blocks": 0,                                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                                        +
                                           "Temp Written Blocks": 0                                                                                                      +
                                         },                                                                                                                              +
                                         {                                                                                                                               +
                                           "Node Type": "Materialize",                                                                                                   +
                                           "Parent Relationship": "Inner",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Startup Cost": 0.07,                                                                                                         +
                                           "Total Cost": 516.55,                                                                                                         +
                                           "Plan Rows": 1,                                                                                                               +
                                           "Plan Width": 28,                                                                                                             +
                                           "Actual Startup Time": 60.546,                                                                                                +
                                           "Actual Total Time": 37162.530,                                                                                               +
                                           "Actual Rows": 28884,                                                                                                         +
                                           "Actual Loops": 4,                                                                                                            +
                                           "Shared Hit Blocks": 240699,                                                                                                  +
                                           "Shared Read Blocks": 73493,                                                                                                  +
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
                                               "Startup Cost": 0.07,                                                                                                     +
                                               "Total Cost": 516.55,                                                                                                     +
                                               "Plan Rows": 1,                                                                                                           +
                                               "Plan Width": 28,                                                                                                         +
                                               "Actual Startup Time": 242.176,                                                                                           +
                                               "Actual Total Time": 148599.865,                                                                                          +
                                               "Actual Rows": 28884,                                                                                                     +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Inner Unique": false,                                                                                                    +
                                               "Join Filter": "(mi.movie_id = mc.movie_id)",                                                                             +
                                               "Rows Removed by Join Filter": 0,                                                                                         +
                                               "Shared Hit Blocks": 240699,                                                                                              +
                                               "Shared Read Blocks": 73493,                                                                                              +
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
                                                   "Total Cost": 516.43,                                                                                                 +
                                                   "Plan Rows": 4,                                                                                                       +
                                                   "Plan Width": 16,                                                                                                     +
                                                   "Actual Startup Time": 205.454,                                                                                       +
                                                   "Actual Total Time": 132726.924,                                                                                      +
                                                   "Actual Rows": 6262,                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Inner Unique": false,                                                                                                +
                                                   "Shared Hit Blocks": 215678,                                                                                          +
                                                   "Shared Read Blocks": 66504,                                                                                          +
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
                                                       "Total Cost": 516.12,                                                                                             +
                                                       "Plan Rows": 2,                                                                                                   +
                                                       "Plan Width": 8,                                                                                                  +
                                                       "Actual Startup Time": 118.219,                                                                                   +
                                                       "Actual Total Time": 11635.865,                                                                                   +
                                                       "Actual Rows": 6704,                                                                                              +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Inner Unique": true,                                                                                             +
                                                       "Join Filter": "(cct2.id = cc.status_id)",                                                                        +
                                                       "Rows Removed by Join Filter": 7104,                                                                              +
                                                       "Shared Hit Blocks": 140548,                                                                                      +
                                                       "Shared Read Blocks": 17344,                                                                                      +
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
                                                           "Startup Cost": 0.04,                                                                                         +
                                                           "Total Cost": 516.08,                                                                                         +
                                                           "Plan Rows": 10,                                                                                              +
                                                           "Plan Width": 12,                                                                                             +
                                                           "Actual Startup Time": 118.203,                                                                               +
                                                           "Actual Total Time": 11612.849,                                                                               +
                                                           "Actual Rows": 13808,                                                                                         +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Inner Unique": true,                                                                                         +
                                                           "Join Filter": "(cct1.id = cc.subject_id)",                                                                   +
                                                           "Rows Removed by Join Filter": 6216,                                                                          +
                                                           "Shared Hit Blocks": 140547,                                                                                  +
                                                           "Shared Read Blocks": 17344,                                                                                  +
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
                                                               "Node Type": "Nested Loop",                                                                               +
                                                               "Parent Relationship": "Outer",                                                                           +
                                                               "Parallel Aware": false,                                                                                  +
                                                               "Join Type": "Inner",                                                                                     +
                                                               "Startup Cost": 0.04,                                                                                     +
                                                               "Total Cost": 516.04,                                                                                     +
                                                               "Plan Rows": 41,                                                                                          +
                                                               "Plan Width": 16,                                                                                         +
                                                               "Actual Startup Time": 118.174,                                                                           +
                                                               "Actual Total Time": 11575.811,                                                                           +
                                                               "Actual Rows": 20024,                                                                                     +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Inner Unique": false,                                                                                    +
                                                               "Shared Hit Blocks": 140546,                                                                              +
                                                               "Shared Read Blocks": 17344,                                                                              +
                                                               "Shared Dirtied Blocks": 0,                                                                               +
                                                               "Shared Written Blocks": 0,                                                                               +
                                                               "Local Hit Blocks": 0,                                                                                    +
                                                               "Local Read Blocks": 0,                                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                                +
                                                               "Local Written Blocks": 0,                                                                                +
                                                               "Temp Read Blocks": 0,                                                                                    +
                                                               "Temp Written Blocks": 0,                                                                                 +
                                                               "Plans": [                                                                                                +
                                                                 {                                                                                                       +
                                                                   "Node Type": "Nested Loop",                                                                           +
                                                                   "Parent Relationship": "Outer",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Join Type": "Inner",                                                                                 +
                                                                   "Startup Cost": 0.03,                                                                                 +
                                                                   "Total Cost": 514.14,                                                                                 +
                                                                   "Plan Rows": 135,                                                                                     +
                                                                   "Plan Width": 4,                                                                                      +
                                                                   "Actual Startup Time": 63.013,                                                                        +
                                                                   "Actual Total Time": 10192.972,                                                                       +
                                                                   "Actual Rows": 37091,                                                                                 +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Inner Unique": false,                                                                                +
                                                                   "Shared Hit Blocks": 10145,                                                                           +
                                                                   "Shared Read Blocks": 16297,                                                                          +
                                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                                   "Shared Written Blocks": 0,                                                                           +
                                                                   "Local Hit Blocks": 0,                                                                                +
                                                                   "Local Read Blocks": 0,                                                                               +
                                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                                   "Local Written Blocks": 0,                                                                            +
                                                                   "Temp Read Blocks": 0,                                                                                +
                                                                   "Temp Written Blocks": 0,                                                                             +
                                                                   "Plans": [                                                                                            +
                                                                     {                                                                                                   +
                                                                       "Node Type": "Index Scan",                                                                        +
                                                                       "Parent Relationship": "Outer",                                                                   +
                                                                       "Parallel Aware": false,                                                                          +
                                                                       "Scan Direction": "Forward",                                                                      +
                                                                       "Index Name": "keyword_idx_keyword",                                                              +
                                                                       "Relation Name": "keyword",                                                                       +
                                                                       "Alias": "k",                                                                                     +
                                                                       "Startup Cost": 0.01,                                                                             +
                                                                       "Total Cost": 24.53,                                                                              +
                                                                       "Plan Rows": 4,                                                                                   +
                                                                       "Plan Width": 4,                                                                                  +
                                                                       "Actual Startup Time": 39.748,                                                                    +
                                                                       "Actual Total Time": 97.941,                                                                      +
                                                                       "Actual Rows": 3,                                                                                 +
                                                                       "Actual Loops": 1,                                                                                +
                                                                       "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",              +
                                                                       "Rows Removed by Index Recheck": 0,                                                               +
                                                                       "Shared Hit Blocks": 8,                                                                           +
                                                                       "Shared Read Blocks": 10,                                                                         +
                                                                       "Shared Dirtied Blocks": 0,                                                                       +
                                                                       "Shared Written Blocks": 0,                                                                       +
                                                                       "Local Hit Blocks": 0,                                                                            +
                                                                       "Local Read Blocks": 0,                                                                           +
                                                                       "Local Dirtied Blocks": 0,                                                                        +
                                                                       "Local Written Blocks": 0,                                                                        +
                                                                       "Temp Read Blocks": 0,                                                                            +
                                                                       "Temp Written Blocks": 0                                                                          +
                                                                     },                                                                                                  +
                                                                     {                                                                                                   +
                                                                       "Node Type": "Index Scan",                                                                        +
                                                                       "Parent Relationship": "Inner",                                                                   +
                                                                       "Parallel Aware": false,                                                                          +
                                                                       "Scan Direction": "Forward",                                                                      +
                                                                       "Index Name": "keyword_id_movie_keyword",                                                         +
                                                                       "Relation Name": "movie_keyword",                                                                 +
                                                                       "Alias": "mk",                                                                                    +
                                                                       "Startup Cost": 0.01,                                                                             +
                                                                       "Total Cost": 122.40,                                                                             +
                                                                       "Plan Rows": 39,                                                                                  +
                                                                       "Plan Width": 8,                                                                                  +
                                                                       "Actual Startup Time": 22.766,                                                                    +
                                                                       "Actual Total Time": 3356.554,                                                                    +
                                                                       "Actual Rows": 12364,                                                                             +
                                                                       "Actual Loops": 3,                                                                                +
                                                                       "Index Cond": "(keyword_id = k.id)",                                                              +
                                                                       "Rows Removed by Index Recheck": 0,                                                               +
                                                                       "Shared Hit Blocks": 10137,                                                                       +
                                                                       "Shared Read Blocks": 16287,                                                                      +
                                                                       "Shared Dirtied Blocks": 0,                                                                       +
                                                                       "Shared Written Blocks": 0,                                                                       +
                                                                       "Local Hit Blocks": 0,                                                                            +
                                                                       "Local Read Blocks": 0,                                                                           +
                                                                       "Local Dirtied Blocks": 0,                                                                        +
                                                                       "Local Written Blocks": 0,                                                                        +
                                                                       "Temp Read Blocks": 0,                                                                            +
                                                                       "Temp Written Blocks": 0                                                                          +
                                                                     }                                                                                                   +
                                                                   ]                                                                                                     +
                                                                 },                                                                                                      +
                                                                 {                                                                                                       +
                                                                   "Node Type": "Index Scan",                                                                            +
                                                                   "Parent Relationship": "Inner",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Scan Direction": "Forward",                                                                          +
                                                                   "Index Name": "movie_id_complete_cast",                                                               +
                                                                   "Relation Name": "complete_cast",                                                                     +
                                                                   "Alias": "cc",                                                                                        +
                                                                   "Startup Cost": 0.01,                                                                                 +
                                                                   "Total Cost": 0.01,                                                                                   +
                                                                   "Plan Rows": 1,                                                                                       +
                                                                   "Plan Width": 12,                                                                                     +
                                                                   "Actual Startup Time": 0.028,                                                                         +
                                                                   "Actual Total Time": 0.035,                                                                           +
                                                                   "Actual Rows": 1,                                                                                     +
                                                                   "Actual Loops": 37091,                                                                                +
                                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                             +
                                                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                                                   "Shared Hit Blocks": 130401,                                                                          +
                                                                   "Shared Read Blocks": 1047,                                                                           +
                                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                                   "Shared Written Blocks": 0,                                                                           +
                                                                   "Local Hit Blocks": 0,                                                                                +
                                                                   "Local Read Blocks": 0,                                                                               +
                                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                                   "Local Written Blocks": 0,                                                                            +
                                                                   "Temp Read Blocks": 0,                                                                                +
                                                                   "Temp Written Blocks": 0                                                                              +
                                                                 }                                                                                                       +
                                                               ]                                                                                                         +
                                                             },                                                                                                          +
                                                             {                                                                                                           +
                                                               "Node Type": "Materialize",                                                                               +
                                                               "Parent Relationship": "Inner",                                                                           +
                                                               "Parallel Aware": false,                                                                                  +
                                                               "Startup Cost": 0.00,                                                                                     +
                                                               "Total Cost": 0.03,                                                                                       +
                                                               "Plan Rows": 1,                                                                                           +
                                                               "Plan Width": 4,                                                                                          +
                                                               "Actual Startup Time": 0.000,                                                                             +
                                                               "Actual Total Time": 0.000,                                                                               +
                                                               "Actual Rows": 1,                                                                                         +
                                                               "Actual Loops": 20024,                                                                                    +
                                                               "Shared Hit Blocks": 1,                                                                                   +
                                                               "Shared Read Blocks": 0,                                                                                  +
                                                               "Shared Dirtied Blocks": 0,                                                                               +
                                                               "Shared Written Blocks": 0,                                                                               +
                                                               "Local Hit Blocks": 0,                                                                                    +
                                                               "Local Read Blocks": 0,                                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                                +
                                                               "Local Written Blocks": 0,                                                                                +
                                                               "Temp Read Blocks": 0,                                                                                    +
                                                               "Temp Written Blocks": 0,                                                                                 +
                                                               "Plans": [                                                                                                +
                                                                 {                                                                                                       +
                                                                   "Node Type": "Seq Scan",                                                                              +
                                                                   "Parent Relationship": "Outer",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Relation Name": "comp_cast_type",                                                                    +
                                                                   "Alias": "cct1",                                                                                      +
                                                                   "Startup Cost": 0.00,                                                                                 +
                                                                   "Total Cost": 0.03,                                                                                   +
                                                                   "Plan Rows": 1,                                                                                       +
                                                                   "Plan Width": 4,                                                                                      +
                                                                   "Actual Startup Time": 0.013,                                                                         +
                                                                   "Actual Total Time": 0.018,                                                                           +
                                                                   "Actual Rows": 1,                                                                                     +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Filter": "((kind)::text = 'cast'::text)",                                                            +
                                                                   "Rows Removed by Filter": 3,                                                                          +
                                                                   "Shared Hit Blocks": 1,                                                                               +
                                                                   "Shared Read Blocks": 0,                                                                              +
                                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                                   "Shared Written Blocks": 0,                                                                           +
                                                                   "Local Hit Blocks": 0,                                                                                +
                                                                   "Local Read Blocks": 0,                                                                               +
                                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                                   "Local Written Blocks": 0,                                                                            +
                                                                   "Temp Read Blocks": 0,                                                                                +
                                                                   "Temp Written Blocks": 0                                                                              +
                                                                 }                                                                                                       +
                                                               ]                                                                                                         +
                                                             }                                                                                                           +
                                                           ]                                                                                                             +
                                                         },                                                                                                              +
                                                         {                                                                                                               +
                                                           "Node Type": "Materialize",                                                                                   +
                                                           "Parent Relationship": "Inner",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Startup Cost": 0.00,                                                                                         +
                                                           "Total Cost": 0.03,                                                                                           +
                                                           "Plan Rows": 1,                                                                                               +
                                                           "Plan Width": 4,                                                                                              +
                                                           "Actual Startup Time": 0.000,                                                                                 +
                                                           "Actual Total Time": 0.000,                                                                                   +
                                                           "Actual Rows": 1,                                                                                             +
                                                           "Actual Loops": 13808,                                                                                        +
                                                           "Shared Hit Blocks": 1,                                                                                       +
                                                           "Shared Read Blocks": 0,                                                                                      +
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
                                                               "Node Type": "Seq Scan",                                                                                  +
                                                               "Parent Relationship": "Outer",                                                                           +
                                                               "Parallel Aware": false,                                                                                  +
                                                               "Relation Name": "comp_cast_type",                                                                        +
                                                               "Alias": "cct2",                                                                                          +
                                                               "Startup Cost": 0.00,                                                                                     +
                                                               "Total Cost": 0.03,                                                                                       +
                                                               "Plan Rows": 1,                                                                                           +
                                                               "Plan Width": 4,                                                                                          +
                                                               "Actual Startup Time": 0.007,                                                                             +
                                                               "Actual Total Time": 0.012,                                                                               +
                                                               "Actual Rows": 1,                                                                                         +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Filter": "((kind)::text = 'complete'::text)",                                                            +
                                                               "Rows Removed by Filter": 3,                                                                              +
                                                               "Shared Hit Blocks": 1,                                                                                   +
                                                               "Shared Read Blocks": 0,                                                                                  +
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
                                                         }                                                                                                               +
                                                       ]                                                                                                                 +
                                                     },                                                                                                                  +
                                                     {                                                                                                                   +
                                                       "Node Type": "Index Scan",                                                                                        +
                                                       "Parent Relationship": "Inner",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Scan Direction": "Forward",                                                                                      +
                                                       "Index Name": "movie_id_movie_info",                                                                              +
                                                       "Relation Name": "movie_info",                                                                                    +
                                                       "Alias": "mi",                                                                                                    +
                                                       "Startup Cost": 0.01,                                                                                             +
                                                       "Total Cost": 0.16,                                                                                               +
                                                       "Plan Rows": 1,                                                                                                   +
                                                       "Plan Width": 8,                                                                                                  +
                                                       "Actual Startup Time": 15.683,                                                                                    +
                                                       "Actual Total Time": 18.059,                                                                                      +
                                                       "Actual Rows": 1,                                                                                                 +
                                                       "Actual Loops": 6704,                                                                                             +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                                                       "Rows Removed by Index Recheck": 0,                                                                               +
                                                       "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",+
                                                       "Rows Removed by Filter": 68,                                                                                     +
                                                       "Shared Hit Blocks": 75130,                                                                                       +
                                                       "Shared Read Blocks": 49160,                                                                                      +
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
                                                   "Node Type": "Index Scan",                                                                                            +
                                                   "Parent Relationship": "Inner",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Scan Direction": "Forward",                                                                                          +
                                                   "Index Name": "movie_id_movie_companies",                                                                             +
                                                   "Relation Name": "movie_companies",                                                                                   +
                                                   "Alias": "mc",                                                                                                        +
                                                   "Startup Cost": 0.01,                                                                                                 +
                                                   "Total Cost": 0.03,                                                                                                   +
                                                   "Plan Rows": 1,                                                                                                       +
                                                   "Plan Width": 12,                                                                                                     +
                                                   "Actual Startup Time": 2.186,                                                                                         +
                                                   "Actual Total Time": 2.527,                                                                                           +
                                                   "Actual Rows": 5,                                                                                                     +
                                                   "Actual Loops": 6262,                                                                                                 +
                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
                                                   "Rows Removed by Index Recheck": 0,                                                                                   +
                                                   "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                              +
                                                   "Rows Removed by Filter": 9,                                                                                          +
                                                   "Shared Hit Blocks": 25021,                                                                                           +
                                                   "Shared Read Blocks": 6989,                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                                   "Shared Written Blocks": 0,                                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                                +
                                                   "Local Read Blocks": 0,                                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                                            +
                                                   "Local Written Blocks": 0,                                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                                +
                                                   "Temp Written Blocks": 0                                                                                              +
                                                 }                                                                                                                       +
                                               ]                                                                                                                         +
                                             }                                                                                                                           +
                                           ]                                                                                                                             +
                                         }                                                                                                                               +
                                       ]                                                                                                                                 +
                                     },                                                                                                                                  +
                                     {                                                                                                                                   +
                                       "Node Type": "Index Scan",                                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Scan Direction": "Forward",                                                                                                      +
                                       "Index Name": "company_name_pkey",                                                                                                +
                                       "Relation Name": "company_name",                                                                                                  +
                                       "Alias": "cn",                                                                                                                    +
                                       "Startup Cost": 0.01,                                                                                                             +
                                       "Total Cost": 0.10,                                                                                                               +
                                       "Plan Rows": 1,                                                                                                                   +
                                       "Plan Width": 23,                                                                                                                 +
                                       "Actual Startup Time": 0.210,                                                                                                     +
                                       "Actual Total Time": 0.210,                                                                                                       +
                                       "Actual Rows": 1,                                                                                                                 +
                                       "Actual Loops": 28884,                                                                                                            +
                                       "Index Cond": "(id = mc.company_id)",                                                                                             +
                                       "Rows Removed by Index Recheck": 0,                                                                                               +
                                       "Filter": "((country_code)::text <> '[us]'::text)",                                                                               +
                                       "Rows Removed by Filter": 0,                                                                                                      +
                                       "Shared Hit Blocks": 114785,                                                                                                      +
                                       "Shared Read Blocks": 972,                                                                                                        +
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
                                 },                                                                                                                                      +
                                 {                                                                                                                                       +
                                   "Node Type": "Index Scan",                                                                                                            +
                                   "Parent Relationship": "Inner",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Scan Direction": "Forward",                                                                                                          +
                                   "Index Name": "movie_id_movie_info_idx",                                                                                              +
                                   "Relation Name": "movie_info_idx",                                                                                                    +
                                   "Alias": "mi_idx",                                                                                                                    +
                                   "Startup Cost": 0.01,                                                                                                                 +
                                   "Total Cost": 0.02,                                                                                                                   +
                                   "Plan Rows": 3,                                                                                                                       +
                                   "Plan Width": 14,                                                                                                                     +
                                   "Actual Startup Time": 0.411,                                                                                                         +
                                   "Actual Total Time": 0.416,                                                                                                           +
                                   "Actual Rows": 3,                                                                                                                     +
                                   "Actual Loops": 27394,                                                                                                                +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                                                   +
                                   "Filter": "(info < '8.5'::text)",                                                                                                     +
                                   "Rows Removed by Filter": 0,                                                                                                          +
                                   "Shared Hit Blocks": 109150,                                                                                                          +
                                   "Shared Read Blocks": 2053,                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                +
                                   "Temp Written Blocks": 0                                                                                                              +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             },                                                                                                                                          +
                             {                                                                                                                                           +
                               "Node Type": "Materialize",                                                                                                               +
                               "Parent Relationship": "Inner",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Startup Cost": 0.00,                                                                                                                     +
                               "Total Cost": 0.05,                                                                                                                       +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 4,                                                                                                                          +
                               "Actual Startup Time": 0.000,                                                                                                             +
                               "Actual Total Time": 0.000,                                                                                                               +
                               "Actual Rows": 1,                                                                                                                         +
                               "Actual Loops": 80518,                                                                                                                    +
                               "Shared Hit Blocks": 1,                                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                                  +
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
                                   "Node Type": "Seq Scan",                                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Relation Name": "info_type",                                                                                                         +
                                   "Alias": "it2",                                                                                                                       +
                                   "Startup Cost": 0.00,                                                                                                                 +
                                   "Total Cost": 0.05,                                                                                                                   +
                                   "Plan Rows": 1,                                                                                                                       +
                                   "Plan Width": 4,                                                                                                                      +
                                   "Actual Startup Time": 0.054,                                                                                                         +
                                   "Actual Total Time": 0.060,                                                                                                           +
                                   "Actual Rows": 1,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Filter": "((info)::text = 'rating'::text)",                                                                                          +
                                   "Rows Removed by Filter": 112,                                                                                                        +
                                   "Shared Hit Blocks": 1,                                                                                                               +
                                   "Shared Read Blocks": 0,                                                                                                              +
                                   "Shared Dirtied Blocks": 0,                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                +
                                   "Temp Written Blocks": 0                                                                                                              +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         },                                                                                                                                              +
                         {                                                                                                                                               +
                           "Node Type": "Index Scan",                                                                                                                    +
                           "Parent Relationship": "Inner",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Scan Direction": "Forward",                                                                                                                  +
                           "Index Name": "title_idx_id",                                                                                                                 +
                           "Relation Name": "title",                                                                                                                     +
                           "Alias": "t",                                                                                                                                 +
                           "Startup Cost": 0.01,                                                                                                                         +
                           "Total Cost": 0.04,                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 25,                                                                                                                             +
                           "Actual Startup Time": 0.679,                                                                                                                 +
                           "Actual Total Time": 0.679,                                                                                                                   +
                           "Actual Rows": 0,                                                                                                                             +
                           "Actual Loops": 26920,                                                                                                                        +
                           "Index Cond": "(id = mk.movie_id)",                                                                                                           +
                           "Rows Removed by Index Recheck": 0,                                                                                                           +
                           "Filter": "(production_year > 2005)",                                                                                                         +
                           "Rows Removed by Filter": 1,                                                                                                                  +
                           "Shared Hit Blocks": 105482,                                                                                                                  +
                           "Shared Read Blocks": 2249,                                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                                      +
                         }                                                                                                                                               +
                       ]                                                                                                                                                 +
                     }                                                                                                                                                   +
                   ]                                                                                                                                                     +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             },                                                                                                                                                          +
             {                                                                                                                                                           +
               "Node Type": "Materialize",                                                                                                                               +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 0.00,                                                                                                                                     +
               "Total Cost": 0.05,                                                                                                                                       +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 4,                                                                                                                                          +
               "Actual Startup Time": 0.000,                                                                                                                             +
               "Actual Total Time": 0.000,                                                                                                                               +
               "Actual Rows": 1,                                                                                                                                         +
               "Actual Loops": 9489,                                                                                                                                     +
               "Shared Hit Blocks": 1,                                                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                                                  +
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
                   "Node Type": "Seq Scan",                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Relation Name": "info_type",                                                                                                                         +
                   "Alias": "it1",                                                                                                                                       +
                   "Startup Cost": 0.00,                                                                                                                                 +
                   "Total Cost": 0.05,                                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 0.029,                                                                                                                         +
                   "Actual Total Time": 0.074,                                                                                                                           +
                   "Actual Rows": 1,                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Filter": "((info)::text = 'countries'::text)",                                                                                                       +
                   "Rows Removed by Filter": 112,                                                                                                                        +
                   "Shared Hit Blocks": 1,                                                                                                                               +
                   "Shared Read Blocks": 0,                                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                                              +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 15191.748,                                                                                                                                         +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 184796.615                                                                                                                                        +
   }                                                                                                                                                                     +
 ]
(1 row)

