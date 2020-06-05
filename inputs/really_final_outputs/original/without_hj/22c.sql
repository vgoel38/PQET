                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                               +
   {                                                                                                                                                             +
     "Plan": {                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                  +
       "Startup Cost": 518.63,                                                                                                                                   +
       "Total Cost": 518.63,                                                                                                                                     +
       "Plan Rows": 1,                                                                                                                                           +
       "Plan Width": 96,                                                                                                                                         +
       "Actual Startup Time": 217492.896,                                                                                                                        +
       "Actual Total Time": 217492.897,                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                        +
       "Shared Hit Blocks": 834614,                                                                                                                              +
       "Shared Read Blocks": 159247,                                                                                                                             +
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
           "Startup Cost": 0.09,                                                                                                                                 +
           "Total Cost": 518.63,                                                                                                                                 +
           "Plan Rows": 1,                                                                                                                                       +
           "Plan Width": 42,                                                                                                                                     +
           "Actual Startup Time": 22378.117,                                                                                                                     +
           "Actual Total Time": 217452.203,                                                                                                                      +
           "Actual Rows": 21489,                                                                                                                                 +
           "Actual Loops": 1,                                                                                                                                    +
           "Inner Unique": false,                                                                                                                                +
           "Join Filter": "(t.kind_id = kt.id)",                                                                                                                 +
           "Rows Removed by Join Filter": 24905,                                                                                                                 +
           "Shared Hit Blocks": 834614,                                                                                                                          +
           "Shared Read Blocks": 159247,                                                                                                                         +
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
               "Node Type": "Seq Scan",                                                                                                                          +
               "Parent Relationship": "Outer",                                                                                                                   +
               "Parallel Aware": false,                                                                                                                          +
               "Relation Name": "kind_type",                                                                                                                     +
               "Alias": "kt",                                                                                                                                    +
               "Startup Cost": 0.00,                                                                                                                             +
               "Total Cost": 0.03,                                                                                                                               +
               "Plan Rows": 2,                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                  +
               "Actual Startup Time": 0.018,                                                                                                                     +
               "Actual Total Time": 0.023,                                                                                                                       +
               "Actual Rows": 2,                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                +
               "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                     +
               "Rows Removed by Filter": 5,                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                           +
               "Shared Read Blocks": 0,                                                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                                                       +
               "Shared Written Blocks": 0,                                                                                                                       +
               "Local Hit Blocks": 0,                                                                                                                            +
               "Local Read Blocks": 0,                                                                                                                           +
               "Local Dirtied Blocks": 0,                                                                                                                        +
               "Local Written Blocks": 0,                                                                                                                        +
               "Temp Read Blocks": 0,                                                                                                                            +
               "Temp Written Blocks": 0                                                                                                                          +
             },                                                                                                                                                  +
             {                                                                                                                                                   +
               "Node Type": "Materialize",                                                                                                                       +
               "Parent Relationship": "Inner",                                                                                                                   +
               "Parallel Aware": false,                                                                                                                          +
               "Startup Cost": 0.09,                                                                                                                             +
               "Total Cost": 518.60,                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                   +
               "Plan Width": 46,                                                                                                                                 +
               "Actual Startup Time": 215.620,                                                                                                                   +
               "Actual Total Time": 108718.007,                                                                                                                  +
               "Actual Rows": 23197,                                                                                                                             +
               "Actual Loops": 2,                                                                                                                                +
               "Shared Hit Blocks": 834613,                                                                                                                      +
               "Shared Read Blocks": 159247,                                                                                                                     +
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
                   "Total Cost": 518.60,                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                               +
                   "Plan Width": 46,                                                                                                                             +
                   "Actual Startup Time": 431.229,                                                                                                               +
                   "Actual Total Time": 217413.964,                                                                                                              +
                   "Actual Rows": 23197,                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                            +
                   "Inner Unique": true,                                                                                                                         +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                  +
                   "Rows Removed by Join Filter": 3340,                                                                                                          +
                   "Shared Hit Blocks": 834613,                                                                                                                  +
                   "Shared Read Blocks": 159247,                                                                                                                 +
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
                       "Total Cost": 518.55,                                                                                                                     +
                       "Plan Rows": 1,                                                                                                                           +
                       "Plan Width": 50,                                                                                                                         +
                       "Actual Startup Time": 431.180,                                                                                                           +
                       "Actual Total Time": 217381.499,                                                                                                          +
                       "Actual Rows": 26537,                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                        +
                       "Inner Unique": false,                                                                                                                    +
                       "Join Filter": "(mc.company_type_id = ct.id)",                                                                                            +
                       "Rows Removed by Join Filter": 79611,                                                                                                     +
                       "Shared Hit Blocks": 834612,                                                                                                              +
                       "Shared Read Blocks": 159247,                                                                                                             +
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
                           "Relation Name": "company_type",                                                                                                      +
                           "Alias": "ct",                                                                                                                        +
                           "Startup Cost": 0.00,                                                                                                                 +
                           "Total Cost": 0.03,                                                                                                                   +
                           "Plan Rows": 4,                                                                                                                       +
                           "Plan Width": 4,                                                                                                                      +
                           "Actual Startup Time": 0.005,                                                                                                         +
                           "Actual Total Time": 0.012,                                                                                                           +
                           "Actual Rows": 4,                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                    +
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
                         },                                                                                                                                      +
                         {                                                                                                                                       +
                           "Node Type": "Materialize",                                                                                                           +
                           "Parent Relationship": "Inner",                                                                                                       +
                           "Parallel Aware": false,                                                                                                              +
                           "Startup Cost": 0.09,                                                                                                                 +
                           "Total Cost": 518.51,                                                                                                                 +
                           "Plan Rows": 1,                                                                                                                       +
                           "Plan Width": 54,                                                                                                                     +
                           "Actual Startup Time": 107.792,                                                                                                       +
                           "Actual Total Time": 54338.056,                                                                                                       +
                           "Actual Rows": 26537,                                                                                                                 +
                           "Actual Loops": 4,                                                                                                                    +
                           "Shared Hit Blocks": 834611,                                                                                                          +
                           "Shared Read Blocks": 159247,                                                                                                         +
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
                               "Startup Cost": 0.09,                                                                                                             +
                               "Total Cost": 518.51,                                                                                                             +
                               "Plan Rows": 1,                                                                                                                   +
                               "Plan Width": 54,                                                                                                                 +
                               "Actual Startup Time": 431.159,                                                                                                   +
                               "Actual Total Time": 217310.185,                                                                                                  +
                               "Actual Rows": 26537,                                                                                                             +
                               "Actual Loops": 1,                                                                                                                +
                               "Inner Unique": true,                                                                                                             +
                               "Shared Hit Blocks": 834611,                                                                                                      +
                               "Shared Read Blocks": 159247,                                                                                                     +
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
                                   "Startup Cost": 0.08,                                                                                                         +
                                   "Total Cost": 518.04,                                                                                                         +
                                   "Plan Rows": 1,                                                                                                               +
                                   "Plan Width": 39,                                                                                                             +
                                   "Actual Startup Time": 386.462,                                                                                               +
                                   "Actual Total Time": 210704.202,                                                                                              +
                                   "Actual Rows": 28780,                                                                                                         +
                                   "Actual Loops": 1,                                                                                                            +
                                   "Inner Unique": false,                                                                                                        +
                                   "Join Filter": "(t.id = mc.movie_id)",                                                                                        +
                                   "Rows Removed by Join Filter": 0,                                                                                             +
                                   "Shared Hit Blocks": 720293,                                                                                                  +
                                   "Shared Read Blocks": 158218,                                                                                                 +
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
                                       "Total Cost": 517.88,                                                                                                     +
                                       "Plan Rows": 1,                                                                                                           +
                                       "Plan Width": 47,                                                                                                         +
                                       "Actual Startup Time": 140.812,                                                                                           +
                                       "Actual Total Time": 194273.859,                                                                                          +
                                       "Actual Rows": 5831,                                                                                                      +
                                       "Actual Loops": 1,                                                                                                        +
                                       "Inner Unique": true,                                                                                                     +
                                       "Join Filter": "(mi.movie_id = t.id)",                                                                                    +
                                       "Rows Removed by Join Filter": 0,                                                                                         +
                                       "Shared Hit Blocks": 697534,                                                                                              +
                                       "Shared Read Blocks": 151799,                                                                                             +
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
                                           "Total Cost": 517.79,                                                                                                 +
                                           "Plan Rows": 2,                                                                                                       +
                                           "Plan Width": 22,                                                                                                     +
                                           "Actual Startup Time": 115.336,                                                                                       +
                                           "Actual Total Time": 145130.915,                                                                                      +
                                           "Actual Rows": 30819,                                                                                                 +
                                           "Actual Loops": 1,                                                                                                    +
                                           "Inner Unique": false,                                                                                                +
                                           "Shared Hit Blocks": 586269,                                                                                          +
                                           "Shared Read Blocks": 139666,                                                                                         +
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
                                               "Total Cost": 517.33,                                                                                             +
                                               "Plan Rows": 3,                                                                                                   +
                                               "Plan Width": 14,                                                                                                 +
                                               "Actual Startup Time": 55.318,                                                                                    +
                                               "Actual Total Time": 18952.388,                                                                                   +
                                               "Actual Rows": 31800,                                                                                             +
                                               "Actual Loops": 1,                                                                                                +
                                               "Inner Unique": true,                                                                                             +
                                               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                  +
                                               "Rows Removed by Join Filter": 62852,                                                                             +
                                               "Shared Hit Blocks": 145689,                                                                                      +
                                               "Shared Read Blocks": 25403,                                                                                      +
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
                                                   "Total Cost": 517.19,                                                                                         +
                                                   "Plan Rows": 395,                                                                                             +
                                                   "Plan Width": 18,                                                                                             +
                                                   "Actual Startup Time": 55.233,                                                                                +
                                                   "Actual Total Time": 18813.098,                                                                               +
                                                   "Actual Rows": 94652,                                                                                         +
                                                   "Actual Loops": 1,                                                                                            +
                                                   "Inner Unique": false,                                                                                        +
                                                   "Shared Hit Blocks": 145688,                                                                                  +
                                                   "Shared Read Blocks": 25403,                                                                                  +
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
                                                       "Startup Cost": 0.03,                                                                                     +
                                                       "Total Cost": 514.14,                                                                                     +
                                                       "Plan Rows": 135,                                                                                         +
                                                       "Plan Width": 4,                                                                                          +
                                                       "Actual Startup Time": 54.665,                                                                            +
                                                       "Actual Total Time": 10969.665,                                                                           +
                                                       "Actual Rows": 37091,                                                                                     +
                                                       "Actual Loops": 1,                                                                                        +
                                                       "Inner Unique": false,                                                                                    +
                                                       "Shared Hit Blocks": 10145,                                                                               +
                                                       "Shared Read Blocks": 16297,                                                                              +
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
                                                           "Node Type": "Index Scan",                                                                            +
                                                           "Parent Relationship": "Outer",                                                                       +
                                                           "Parallel Aware": false,                                                                              +
                                                           "Scan Direction": "Forward",                                                                          +
                                                           "Index Name": "keyword_idx_keyword",                                                                  +
                                                           "Relation Name": "keyword",                                                                           +
                                                           "Alias": "k",                                                                                         +
                                                           "Startup Cost": 0.01,                                                                                 +
                                                           "Total Cost": 24.53,                                                                                  +
                                                           "Plan Rows": 4,                                                                                       +
                                                           "Plan Width": 4,                                                                                      +
                                                           "Actual Startup Time": 31.401,                                                                        +
                                                           "Actual Total Time": 102.929,                                                                         +
                                                           "Actual Rows": 3,                                                                                     +
                                                           "Actual Loops": 1,                                                                                    +
                                                           "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",                  +
                                                           "Rows Removed by Index Recheck": 0,                                                                   +
                                                           "Shared Hit Blocks": 8,                                                                               +
                                                           "Shared Read Blocks": 10,                                                                             +
                                                           "Shared Dirtied Blocks": 0,                                                                           +
                                                           "Shared Written Blocks": 0,                                                                           +
                                                           "Local Hit Blocks": 0,                                                                                +
                                                           "Local Read Blocks": 0,                                                                               +
                                                           "Local Dirtied Blocks": 0,                                                                            +
                                                           "Local Written Blocks": 0,                                                                            +
                                                           "Temp Read Blocks": 0,                                                                                +
                                                           "Temp Written Blocks": 0                                                                              +
                                                         },                                                                                                      +
                                                         {                                                                                                       +
                                                           "Node Type": "Index Scan",                                                                            +
                                                           "Parent Relationship": "Inner",                                                                       +
                                                           "Parallel Aware": false,                                                                              +
                                                           "Scan Direction": "Forward",                                                                          +
                                                           "Index Name": "keyword_id_movie_keyword",                                                             +
                                                           "Relation Name": "movie_keyword",                                                                     +
                                                           "Alias": "mk",                                                                                        +
                                                           "Startup Cost": 0.01,                                                                                 +
                                                           "Total Cost": 122.40,                                                                                 +
                                                           "Plan Rows": 39,                                                                                      +
                                                           "Plan Width": 8,                                                                                      +
                                                           "Actual Startup Time": 22.759,                                                                        +
                                                           "Actual Total Time": 3611.898,                                                                        +
                                                           "Actual Rows": 12364,                                                                                 +
                                                           "Actual Loops": 3,                                                                                    +
                                                           "Index Cond": "(keyword_id = k.id)",                                                                  +
                                                           "Rows Removed by Index Recheck": 0,                                                                   +
                                                           "Shared Hit Blocks": 10137,                                                                           +
                                                           "Shared Read Blocks": 16287,                                                                          +
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
                                                       "Node Type": "Index Scan",                                                                                +
                                                       "Parent Relationship": "Inner",                                                                           +
                                                       "Parallel Aware": false,                                                                                  +
                                                       "Scan Direction": "Forward",                                                                              +
                                                       "Index Name": "movie_id_movie_info_idx",                                                                  +
                                                       "Relation Name": "movie_info_idx",                                                                        +
                                                       "Alias": "mi_idx",                                                                                        +
                                                       "Startup Cost": 0.01,                                                                                     +
                                                       "Total Cost": 0.02,                                                                                       +
                                                       "Plan Rows": 3,                                                                                           +
                                                       "Plan Width": 14,                                                                                         +
                                                       "Actual Startup Time": 0.201,                                                                             +
                                                       "Actual Total Time": 0.208,                                                                               +
                                                       "Actual Rows": 3,                                                                                         +
                                                       "Actual Loops": 37091,                                                                                    +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                                       "Rows Removed by Index Recheck": 0,                                                                       +
                                                       "Filter": "(info < '8.5'::text)",                                                                         +
                                                       "Rows Removed by Filter": 0,                                                                              +
                                                       "Shared Hit Blocks": 135543,                                                                              +
                                                       "Shared Read Blocks": 9106,                                                                               +
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
                                                   "Node Type": "Materialize",                                                                                   +
                                                   "Parent Relationship": "Inner",                                                                               +
                                                   "Parallel Aware": false,                                                                                      +
                                                   "Startup Cost": 0.00,                                                                                         +
                                                   "Total Cost": 0.05,                                                                                           +
                                                   "Plan Rows": 1,                                                                                               +
                                                   "Plan Width": 4,                                                                                              +
                                                   "Actual Startup Time": 0.000,                                                                                 +
                                                   "Actual Total Time": 0.000,                                                                                   +
                                                   "Actual Rows": 1,                                                                                             +
                                                   "Actual Loops": 94652,                                                                                        +
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
                                                       "Relation Name": "info_type",                                                                             +
                                                       "Alias": "it2",                                                                                           +
                                                       "Startup Cost": 0.00,                                                                                     +
                                                       "Total Cost": 0.05,                                                                                       +
                                                       "Plan Rows": 1,                                                                                           +
                                                       "Plan Width": 4,                                                                                          +
                                                       "Actual Startup Time": 0.051,                                                                             +
                                                       "Actual Total Time": 0.056,                                                                               +
                                                       "Actual Rows": 1,                                                                                         +
                                                       "Actual Loops": 1,                                                                                        +
                                                       "Filter": "((info)::text = 'rating'::text)",                                                              +
                                                       "Rows Removed by Filter": 112,                                                                            +
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
                                               "Actual Startup Time": 3.548,                                                                                     +
                                               "Actual Total Time": 3.966,                                                                                       +
                                               "Actual Rows": 1,                                                                                                 +
                                               "Actual Loops": 31800,                                                                                            +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                                               "Rows Removed by Index Recheck": 0,                                                                               +
                                               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",+
                                               "Rows Removed by Filter": 60,                                                                                     +
                                               "Shared Hit Blocks": 440580,                                                                                      +
                                               "Shared Read Blocks": 114263,                                                                                     +
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
                                           "Index Name": "title_idx_id",                                                                                         +
                                           "Relation Name": "title",                                                                                             +
                                           "Alias": "t",                                                                                                         +
                                           "Startup Cost": 0.01,                                                                                                 +
                                           "Total Cost": 0.04,                                                                                                   +
                                           "Plan Rows": 1,                                                                                                       +
                                           "Plan Width": 25,                                                                                                     +
                                           "Actual Startup Time": 1.592,                                                                                         +
                                           "Actual Total Time": 1.592,                                                                                           +
                                           "Actual Rows": 0,                                                                                                     +
                                           "Actual Loops": 30819,                                                                                                +
                                           "Index Cond": "(id = mk.movie_id)",                                                                                   +
                                           "Rows Removed by Index Recheck": 0,                                                                                   +
                                           "Filter": "(production_year > 2005)",                                                                                 +
                                           "Rows Removed by Filter": 1,                                                                                          +
                                           "Shared Hit Blocks": 111265,                                                                                          +
                                           "Shared Read Blocks": 12133,                                                                                          +
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
                                     },                                                                                                                          +
                                     {                                                                                                                           +
                                       "Node Type": "Index Scan",                                                                                                +
                                       "Parent Relationship": "Inner",                                                                                           +
                                       "Parallel Aware": false,                                                                                                  +
                                       "Scan Direction": "Forward",                                                                                              +
                                       "Index Name": "movie_id_movie_companies",                                                                                 +
                                       "Relation Name": "movie_companies",                                                                                       +
                                       "Alias": "mc",                                                                                                            +
                                       "Startup Cost": 0.01,                                                                                                     +
                                       "Total Cost": 0.03,                                                                                                       +
                                       "Plan Rows": 1,                                                                                                           +
                                       "Plan Width": 12,                                                                                                         +
                                       "Actual Startup Time": 2.470,                                                                                             +
                                       "Actual Total Time": 2.812,                                                                                               +
                                       "Actual Rows": 5,                                                                                                         +
                                       "Actual Loops": 5831,                                                                                                     +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                 +
                                       "Rows Removed by Index Recheck": 0,                                                                                       +
                                       "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                                  +
                                       "Rows Removed by Filter": 9,                                                                                              +
                                       "Shared Hit Blocks": 22759,                                                                                               +
                                       "Shared Read Blocks": 6419,                                                                                               +
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
                                   "Index Name": "company_name_pkey",                                                                                            +
                                   "Relation Name": "company_name",                                                                                              +
                                   "Alias": "cn",                                                                                                                +
                                   "Startup Cost": 0.01,                                                                                                         +
                                   "Total Cost": 0.10,                                                                                                           +
                                   "Plan Rows": 1,                                                                                                               +
                                   "Plan Width": 23,                                                                                                             +
                                   "Actual Startup Time": 0.228,                                                                                                 +
                                   "Actual Total Time": 0.228,                                                                                                   +
                                   "Actual Rows": 1,                                                                                                             +
                                   "Actual Loops": 28780,                                                                                                        +
                                   "Index Cond": "(id = mc.company_id)",                                                                                         +
                                   "Rows Removed by Index Recheck": 0,                                                                                           +
                                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                           +
                                   "Rows Removed by Filter": 0,                                                                                                  +
                                   "Shared Hit Blocks": 114318,                                                                                                  +
                                   "Shared Read Blocks": 1029,                                                                                                   +
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
                             }                                                                                                                                   +
                           ]                                                                                                                                     +
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
                       "Actual Loops": 26537,                                                                                                                    +
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
                           "Alias": "it1",                                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                                 +
                           "Total Cost": 0.05,                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                       +
                           "Plan Width": 4,                                                                                                                      +
                           "Actual Startup Time": 0.025,                                                                                                         +
                           "Actual Total Time": 0.070,                                                                                                           +
                           "Actual Rows": 1,                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                    +
                           "Filter": "((info)::text = 'countries'::text)",                                                                                       +
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
                 }                                                                                                                                               +
               ]                                                                                                                                                 +
             }                                                                                                                                                   +
           ]                                                                                                                                                     +
         }                                                                                                                                                       +
       ]                                                                                                                                                         +
     },                                                                                                                                                          +
     "Planning Time": 9172.360,                                                                                                                                  +
     "Triggers": [                                                                                                                                               +
     ],                                                                                                                                                          +
     "Execution Time": 217519.132                                                                                                                                +
   }                                                                                                                                                             +
 ]
(1 row)
