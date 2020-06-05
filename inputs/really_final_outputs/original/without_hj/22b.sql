                                                                   QUERY PLAN                                                                   
------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                             +
   {                                                                                                                                           +
     "Plan": {                                                                                                                                 +
       "Node Type": "Aggregate",                                                                                                               +
       "Strategy": "Plain",                                                                                                                    +
       "Partial Mode": "Simple",                                                                                                               +
       "Parallel Aware": false,                                                                                                                +
       "Startup Cost": 518.61,                                                                                                                 +
       "Total Cost": 518.61,                                                                                                                   +
       "Plan Rows": 1,                                                                                                                         +
       "Plan Width": 96,                                                                                                                       +
       "Actual Startup Time": 195044.260,                                                                                                      +
       "Actual Total Time": 195044.260,                                                                                                        +
       "Actual Rows": 1,                                                                                                                       +
       "Actual Loops": 1,                                                                                                                      +
       "Shared Hit Blocks": 546525,                                                                                                            +
       "Shared Read Blocks": 134524,                                                                                                           +
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
           "Total Cost": 518.61,                                                                                                               +
           "Plan Rows": 1,                                                                                                                     +
           "Plan Width": 42,                                                                                                                   +
           "Actual Startup Time": 17591.578,                                                                                                   +
           "Actual Total Time": 195044.060,                                                                                                    +
           "Actual Rows": 31,                                                                                                                  +
           "Actual Loops": 1,                                                                                                                  +
           "Inner Unique": false,                                                                                                              +
           "Join Filter": "(t.kind_id = kt.id)",                                                                                               +
           "Rows Removed by Join Filter": 33,                                                                                                  +
           "Shared Hit Blocks": 546525,                                                                                                        +
           "Shared Read Blocks": 134524,                                                                                                       +
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
               "Node Type": "Seq Scan",                                                                                                        +
               "Parent Relationship": "Outer",                                                                                                 +
               "Parallel Aware": false,                                                                                                        +
               "Relation Name": "kind_type",                                                                                                   +
               "Alias": "kt",                                                                                                                  +
               "Startup Cost": 0.00,                                                                                                           +
               "Total Cost": 0.03,                                                                                                             +
               "Plan Rows": 2,                                                                                                                 +
               "Plan Width": 4,                                                                                                                +
               "Actual Startup Time": 0.017,                                                                                                   +
               "Actual Total Time": 0.021,                                                                                                     +
               "Actual Rows": 2,                                                                                                               +
               "Actual Loops": 1,                                                                                                              +
               "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                   +
               "Rows Removed by Filter": 5,                                                                                                    +
               "Shared Hit Blocks": 1,                                                                                                         +
               "Shared Read Blocks": 0,                                                                                                        +
               "Shared Dirtied Blocks": 0,                                                                                                     +
               "Shared Written Blocks": 0,                                                                                                     +
               "Local Hit Blocks": 0,                                                                                                          +
               "Local Read Blocks": 0,                                                                                                         +
               "Local Dirtied Blocks": 0,                                                                                                      +
               "Local Written Blocks": 0,                                                                                                      +
               "Temp Read Blocks": 0,                                                                                                          +
               "Temp Written Blocks": 0                                                                                                        +
             },                                                                                                                                +
             {                                                                                                                                 +
               "Node Type": "Materialize",                                                                                                     +
               "Parent Relationship": "Inner",                                                                                                 +
               "Parallel Aware": false,                                                                                                        +
               "Startup Cost": 0.09,                                                                                                           +
               "Total Cost": 518.58,                                                                                                           +
               "Plan Rows": 1,                                                                                                                 +
               "Plan Width": 46,                                                                                                               +
               "Actual Startup Time": 8795.777,                                                                                                +
               "Actual Total Time": 97521.990,                                                                                                 +
               "Actual Rows": 32,                                                                                                              +
               "Actual Loops": 2,                                                                                                              +
               "Shared Hit Blocks": 546524,                                                                                                    +
               "Shared Read Blocks": 134524,                                                                                                   +
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
                   "Startup Cost": 0.09,                                                                                                       +
                   "Total Cost": 518.58,                                                                                                       +
                   "Plan Rows": 1,                                                                                                             +
                   "Plan Width": 46,                                                                                                           +
                   "Actual Startup Time": 17591.546,                                                                                           +
                   "Actual Total Time": 195043.912,                                                                                            +
                   "Actual Rows": 32,                                                                                                          +
                   "Actual Loops": 1,                                                                                                          +
                   "Inner Unique": true,                                                                                                       +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                                +
                   "Rows Removed by Join Filter": 3,                                                                                           +
                   "Shared Hit Blocks": 546524,                                                                                                +
                   "Shared Read Blocks": 134524,                                                                                               +
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
                       "Total Cost": 518.53,                                                                                                   +
                       "Plan Rows": 1,                                                                                                         +
                       "Plan Width": 50,                                                                                                       +
                       "Actual Startup Time": 17591.485,                                                                                       +
                       "Actual Total Time": 195043.678,                                                                                        +
                       "Actual Rows": 35,                                                                                                      +
                       "Actual Loops": 1,                                                                                                      +
                       "Inner Unique": false,                                                                                                  +
                       "Join Filter": "(mc.company_type_id = ct.id)",                                                                          +
                       "Rows Removed by Join Filter": 105,                                                                                     +
                       "Shared Hit Blocks": 546523,                                                                                            +
                       "Shared Read Blocks": 134524,                                                                                           +
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
                           "Relation Name": "company_type",                                                                                    +
                           "Alias": "ct",                                                                                                      +
                           "Startup Cost": 0.00,                                                                                               +
                           "Total Cost": 0.03,                                                                                                 +
                           "Plan Rows": 4,                                                                                                     +
                           "Plan Width": 4,                                                                                                    +
                           "Actual Startup Time": 0.006,                                                                                       +
                           "Actual Total Time": 0.009,                                                                                         +
                           "Actual Rows": 4,                                                                                                   +
                           "Actual Loops": 1,                                                                                                  +
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
                           "Startup Cost": 0.09,                                                                                               +
                           "Total Cost": 518.50,                                                                                               +
                           "Plan Rows": 1,                                                                                                     +
                           "Plan Width": 54,                                                                                                   +
                           "Actual Startup Time": 4397.868,                                                                                    +
                           "Actual Total Time": 48760.897,                                                                                     +
                           "Actual Rows": 35,                                                                                                  +
                           "Actual Loops": 4,                                                                                                  +
                           "Shared Hit Blocks": 546522,                                                                                        +
                           "Shared Read Blocks": 134524,                                                                                       +
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
                               "Startup Cost": 0.09,                                                                                           +
                               "Total Cost": 518.50,                                                                                           +
                               "Plan Rows": 1,                                                                                                 +
                               "Plan Width": 54,                                                                                               +
                               "Actual Startup Time": 17591.459,                                                                               +
                               "Actual Total Time": 195043.427,                                                                                +
                               "Actual Rows": 35,                                                                                              +
                               "Actual Loops": 1,                                                                                              +
                               "Inner Unique": true,                                                                                           +
                               "Shared Hit Blocks": 546522,                                                                                    +
                               "Shared Read Blocks": 134524,                                                                                   +
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
                                   "Startup Cost": 0.08,                                                                                       +
                                   "Total Cost": 518.02,                                                                                       +
                                   "Plan Rows": 1,                                                                                             +
                                   "Plan Width": 39,                                                                                           +
                                   "Actual Startup Time": 17549.629,                                                                           +
                                   "Actual Total Time": 194132.725,                                                                            +
                                   "Actual Rows": 45,                                                                                          +
                                   "Actual Loops": 1,                                                                                          +
                                   "Inner Unique": false,                                                                                      +
                                   "Join Filter": "(t.id = mc.movie_id)",                                                                      +
                                   "Rows Removed by Join Filter": 0,                                                                           +
                                   "Shared Hit Blocks": 546386,                                                                                +
                                   "Shared Read Blocks": 134479,                                                                               +
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
                                       "Total Cost": 517.86,                                                                                   +
                                       "Plan Rows": 1,                                                                                         +
                                       "Plan Width": 47,                                                                                       +
                                       "Actual Startup Time": 350.101,                                                                         +
                                       "Actual Total Time": 183453.918,                                                                        +
                                       "Actual Rows": 1303,                                                                                    +
                                       "Actual Loops": 1,                                                                                      +
                                       "Inner Unique": true,                                                                                   +
                                       "Join Filter": "(mi.movie_id = t.id)",                                                                  +
                                       "Rows Removed by Join Filter": 0,                                                                       +
                                       "Shared Hit Blocks": 541965,                                                                            +
                                       "Shared Read Blocks": 132466,                                                                           +
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
                                           "Total Cost": 517.78,                                                                               +
                                           "Plan Rows": 2,                                                                                     +
                                           "Plan Width": 22,                                                                                   +
                                           "Actual Startup Time": 115.337,                                                                     +
                                           "Actual Total Time": 143047.302,                                                                    +
                                           "Actual Rows": 21446,                                                                               +
                                           "Actual Loops": 1,                                                                                  +
                                           "Inner Unique": false,                                                                              +
                                           "Shared Hit Blocks": 466190,                                                                        +
                                           "Shared Read Blocks": 122375,                                                                       +
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
                                               "Total Cost": 517.31,                                                                           +
                                               "Plan Rows": 3,                                                                                 +
                                               "Plan Width": 14,                                                                               +
                                               "Actual Startup Time": 55.242,                                                                  +
                                               "Actual Total Time": 18461.860,                                                                 +
                                               "Actual Rows": 24800,                                                                           +
                                               "Actual Loops": 1,                                                                              +
                                               "Inner Unique": true,                                                                           +
                                               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                +
                                               "Rows Removed by Join Filter": 60258,                                                           +
                                               "Shared Hit Blocks": 145689,                                                                    +
                                               "Shared Read Blocks": 25403,                                                                    +
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
                                                   "Total Cost": 517.19,                                                                       +
                                                   "Plan Rows": 345,                                                                           +
                                                   "Plan Width": 18,                                                                           +
                                                   "Actual Startup Time": 55.163,                                                              +
                                                   "Actual Total Time": 18328.194,                                                             +
                                                   "Actual Rows": 85058,                                                                       +
                                                   "Actual Loops": 1,                                                                          +
                                                   "Inner Unique": false,                                                                      +
                                                   "Shared Hit Blocks": 145688,                                                                +
                                                   "Shared Read Blocks": 25403,                                                                +
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
                                                       "Actual Startup Time": 54.658,                                                          +
                                                       "Actual Total Time": 10792.536,                                                         +
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
                                                           "Actual Startup Time": 31.407,                                                      +
                                                           "Actual Total Time": 107.794,                                                       +
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
                                                           "Actual Startup Time": 22.763,                                                      +
                                                           "Actual Total Time": 3550.701,                                                      +
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
                                                       "Index Name": "movie_id_movie_info_idx",                                                +
                                                       "Relation Name": "movie_info_idx",                                                      +
                                                       "Alias": "mi_idx",                                                                      +
                                                       "Startup Cost": 0.01,                                                                   +
                                                       "Total Cost": 0.02,                                                                     +
                                                       "Plan Rows": 3,                                                                         +
                                                       "Plan Width": 14,                                                                       +
                                                       "Actual Startup Time": 0.194,                                                           +
                                                       "Actual Total Time": 0.200,                                                             +
                                                       "Actual Rows": 2,                                                                       +
                                                       "Actual Loops": 37091,                                                                  +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                               +
                                                       "Rows Removed by Index Recheck": 0,                                                     +
                                                       "Filter": "(info < '7.0'::text)",                                                       +
                                                       "Rows Removed by Filter": 0,                                                            +
                                                       "Shared Hit Blocks": 135543,                                                            +
                                                       "Shared Read Blocks": 9106,                                                             +
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
                                                   "Total Cost": 0.05,                                                                         +
                                                   "Plan Rows": 1,                                                                             +
                                                   "Plan Width": 4,                                                                            +
                                                   "Actual Startup Time": 0.000,                                                               +
                                                   "Actual Total Time": 0.000,                                                                 +
                                                   "Actual Rows": 1,                                                                           +
                                                   "Actual Loops": 85058,                                                                      +
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
                                                       "Relation Name": "info_type",                                                           +
                                                       "Alias": "it2",                                                                         +
                                                       "Startup Cost": 0.00,                                                                   +
                                                       "Total Cost": 0.05,                                                                     +
                                                       "Plan Rows": 1,                                                                         +
                                                       "Plan Width": 4,                                                                        +
                                                       "Actual Startup Time": 0.058,                                                           +
                                                       "Actual Total Time": 0.061,                                                             +
                                                       "Actual Rows": 1,                                                                       +
                                                       "Actual Loops": 1,                                                                      +
                                                       "Filter": "((info)::text = 'rating'::text)",                                            +
                                                       "Rows Removed by Filter": 112,                                                          +
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
                                               "Index Name": "movie_id_movie_info",                                                            +
                                               "Relation Name": "movie_info",                                                                  +
                                               "Alias": "mi",                                                                                  +
                                               "Startup Cost": 0.01,                                                                           +
                                               "Total Cost": 0.15,                                                                             +
                                               "Plan Rows": 1,                                                                                 +
                                               "Plan Width": 8,                                                                                +
                                               "Actual Startup Time": 4.581,                                                                   +
                                               "Actual Total Time": 5.021,                                                                     +
                                               "Actual Rows": 1,                                                                               +
                                               "Actual Loops": 24800,                                                                          +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                       +
                                               "Rows Removed by Index Recheck": 0,                                                             +
                                               "Filter": "(info = ANY ('{Germany,German,USA,American}'::text[]))",                             +
                                               "Rows Removed by Filter": 49,                                                                   +
                                               "Shared Hit Blocks": 320501,                                                                    +
                                               "Shared Read Blocks": 96972,                                                                    +
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
                                           "Index Name": "title_idx_id",                                                                       +
                                           "Relation Name": "title",                                                                           +
                                           "Alias": "t",                                                                                       +
                                           "Startup Cost": 0.01,                                                                               +
                                           "Total Cost": 0.04,                                                                                 +
                                           "Plan Rows": 1,                                                                                     +
                                           "Plan Width": 25,                                                                                   +
                                           "Actual Startup Time": 1.882,                                                                       +
                                           "Actual Total Time": 1.882,                                                                         +
                                           "Actual Rows": 0,                                                                                   +
                                           "Actual Loops": 21446,                                                                              +
                                           "Index Cond": "(id = mk.movie_id)",                                                                 +
                                           "Rows Removed by Index Recheck": 0,                                                                 +
                                           "Filter": "(production_year > 2009)",                                                               +
                                           "Rows Removed by Filter": 1,                                                                        +
                                           "Shared Hit Blocks": 75775,                                                                         +
                                           "Shared Read Blocks": 10091,                                                                        +
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
                                       "Index Name": "movie_id_movie_companies",                                                               +
                                       "Relation Name": "movie_companies",                                                                     +
                                       "Alias": "mc",                                                                                          +
                                       "Startup Cost": 0.01,                                                                                   +
                                       "Total Cost": 0.03,                                                                                     +
                                       "Plan Rows": 1,                                                                                         +
                                       "Plan Width": 12,                                                                                       +
                                       "Actual Startup Time": 8.177,                                                                           +
                                       "Actual Total Time": 8.192,                                                                             +
                                       "Actual Rows": 0,                                                                                       +
                                       "Actual Loops": 1303,                                                                                   +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                               +
                                       "Rows Removed by Index Recheck": 0,                                                                     +
                                       "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                +
                                       "Rows Removed by Filter": 13,                                                                           +
                                       "Shared Hit Blocks": 4421,                                                                              +
                                       "Shared Read Blocks": 2013,                                                                             +
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
                                 },                                                                                                            +
                                 {                                                                                                             +
                                   "Node Type": "Index Scan",                                                                                  +
                                   "Parent Relationship": "Inner",                                                                             +
                                   "Parallel Aware": false,                                                                                    +
                                   "Scan Direction": "Forward",                                                                                +
                                   "Index Name": "company_name_pkey",                                                                          +
                                   "Relation Name": "company_name",                                                                            +
                                   "Alias": "cn",                                                                                              +
                                   "Startup Cost": 0.01,                                                                                       +
                                   "Total Cost": 0.10,                                                                                         +
                                   "Plan Rows": 1,                                                                                             +
                                   "Plan Width": 23,                                                                                           +
                                   "Actual Startup Time": 20.232,                                                                              +
                                   "Actual Total Time": 20.232,                                                                                +
                                   "Actual Rows": 1,                                                                                           +
                                   "Actual Loops": 45,                                                                                         +
                                   "Index Cond": "(id = mc.company_id)",                                                                       +
                                   "Rows Removed by Index Recheck": 0,                                                                         +
                                   "Filter": "((country_code)::text <> '[us]'::text)",                                                         +
                                   "Rows Removed by Filter": 0,                                                                                +
                                   "Shared Hit Blocks": 136,                                                                                   +
                                   "Shared Read Blocks": 45,                                                                                   +
                                   "Shared Dirtied Blocks": 0,                                                                                 +
                                   "Shared Written Blocks": 0,                                                                                 +
                                   "Local Hit Blocks": 0,                                                                                      +
                                   "Local Read Blocks": 0,                                                                                     +
                                   "Local Dirtied Blocks": 0,                                                                                  +
                                   "Local Written Blocks": 0,                                                                                  +
                                   "Temp Read Blocks": 0,                                                                                      +
                                   "Temp Written Blocks": 0                                                                                    +
                                 }                                                                                                             +
                               ]                                                                                                               +
                             }                                                                                                                 +
                           ]                                                                                                                   +
                         }                                                                                                                     +
                       ]                                                                                                                       +
                     },                                                                                                                        +
                     {                                                                                                                         +
                       "Node Type": "Materialize",                                                                                             +
                       "Parent Relationship": "Inner",                                                                                         +
                       "Parallel Aware": false,                                                                                                +
                       "Startup Cost": 0.00,                                                                                                   +
                       "Total Cost": 0.05,                                                                                                     +
                       "Plan Rows": 1,                                                                                                         +
                       "Plan Width": 4,                                                                                                        +
                       "Actual Startup Time": 0.003,                                                                                           +
                       "Actual Total Time": 0.004,                                                                                             +
                       "Actual Rows": 1,                                                                                                       +
                       "Actual Loops": 35,                                                                                                     +
                       "Shared Hit Blocks": 1,                                                                                                 +
                       "Shared Read Blocks": 0,                                                                                                +
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
                           "Relation Name": "info_type",                                                                                       +
                           "Alias": "it1",                                                                                                     +
                           "Startup Cost": 0.00,                                                                                               +
                           "Total Cost": 0.05,                                                                                                 +
                           "Plan Rows": 1,                                                                                                     +
                           "Plan Width": 4,                                                                                                    +
                           "Actual Startup Time": 0.030,                                                                                       +
                           "Actual Total Time": 0.076,                                                                                         +
                           "Actual Rows": 1,                                                                                                   +
                           "Actual Loops": 1,                                                                                                  +
                           "Filter": "((info)::text = 'countries'::text)",                                                                     +
                           "Rows Removed by Filter": 112,                                                                                      +
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
                         }                                                                                                                     +
                       ]                                                                                                                       +
                     }                                                                                                                         +
                   ]                                                                                                                           +
                 }                                                                                                                             +
               ]                                                                                                                               +
             }                                                                                                                                 +
           ]                                                                                                                                   +
         }                                                                                                                                     +
       ]                                                                                                                                       +
     },                                                                                                                                        +
     "Planning Time": 9214.034,                                                                                                                +
     "Triggers": [                                                                                                                             +
     ],                                                                                                                                        +
     "Execution Time": 195075.190                                                                                                              +
   }                                                                                                                                           +
 ]
(1 row)

