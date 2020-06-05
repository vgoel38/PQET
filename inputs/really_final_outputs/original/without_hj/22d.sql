                                                                      QUERY PLAN                                                                      
------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                   +
   {                                                                                                                                                 +
     "Plan": {                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                     +
       "Strategy": "Plain",                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                     +
       "Parallel Aware": false,                                                                                                                      +
       "Startup Cost": 518.09,                                                                                                                       +
       "Total Cost": 518.09,                                                                                                                         +
       "Plan Rows": 1,                                                                                                                               +
       "Plan Width": 96,                                                                                                                             +
       "Actual Startup Time": 221352.549,                                                                                                            +
       "Actual Total Time": 221352.549,                                                                                                              +
       "Actual Rows": 1,                                                                                                                             +
       "Actual Loops": 1,                                                                                                                            +
       "Shared Hit Blocks": 1947289,                                                                                                                 +
       "Shared Read Blocks": 94618,                                                                                                                  +
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
           "Total Cost": 518.09,                                                                                                                     +
           "Plan Rows": 1,                                                                                                                           +
           "Plan Width": 42,                                                                                                                         +
           "Actual Startup Time": 20641.542,                                                                                                         +
           "Actual Total Time": 221275.846,                                                                                                          +
           "Actual Rows": 46281,                                                                                                                     +
           "Actual Loops": 1,                                                                                                                        +
           "Inner Unique": false,                                                                                                                    +
           "Join Filter": "(t.kind_id = kt.id)",                                                                                                     +
           "Rows Removed by Join Filter": 53535,                                                                                                     +
           "Shared Hit Blocks": 1947289,                                                                                                             +
           "Shared Read Blocks": 94618,                                                                                                              +
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
               "Relation Name": "kind_type",                                                                                                         +
               "Alias": "kt",                                                                                                                        +
               "Startup Cost": 0.00,                                                                                                                 +
               "Total Cost": 0.03,                                                                                                                   +
               "Plan Rows": 2,                                                                                                                       +
               "Plan Width": 4,                                                                                                                      +
               "Actual Startup Time": 0.018,                                                                                                         +
               "Actual Total Time": 0.023,                                                                                                           +
               "Actual Rows": 2,                                                                                                                     +
               "Actual Loops": 1,                                                                                                                    +
               "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                         +
               "Rows Removed by Filter": 5,                                                                                                          +
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
               "Total Cost": 518.06,                                                                                                                 +
               "Plan Rows": 1,                                                                                                                       +
               "Plan Width": 46,                                                                                                                     +
               "Actual Startup Time": 66.021,                                                                                                        +
               "Actual Total Time": 110621.103,                                                                                                      +
               "Actual Rows": 49908,                                                                                                                 +
               "Actual Loops": 2,                                                                                                                    +
               "Shared Hit Blocks": 1947288,                                                                                                         +
               "Shared Read Blocks": 94618,                                                                                                          +
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
                   "Total Cost": 518.06,                                                                                                             +
                   "Plan Rows": 1,                                                                                                                   +
                   "Plan Width": 46,                                                                                                                 +
                   "Actual Startup Time": 132.035,                                                                                                   +
                   "Actual Total Time": 221194.932,                                                                                                  +
                   "Actual Rows": 49908,                                                                                                             +
                   "Actual Loops": 1,                                                                                                                +
                   "Inner Unique": false,                                                                                                            +
                   "Join Filter": "(mc.company_type_id = ct.id)",                                                                                    +
                   "Rows Removed by Join Filter": 149724,                                                                                            +
                   "Shared Hit Blocks": 1947288,                                                                                                     +
                   "Shared Read Blocks": 94618,                                                                                                      +
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
                       "Actual Startup Time": 0.006,                                                                                                 +
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
                       "Startup Cost": 0.09,                                                                                                         +
                       "Total Cost": 518.03,                                                                                                         +
                       "Plan Rows": 1,                                                                                                               +
                       "Plan Width": 50,                                                                                                             +
                       "Actual Startup Time": 33.006,                                                                                                +
                       "Actual Total Time": 55283.827,                                                                                               +
                       "Actual Rows": 49908,                                                                                                         +
                       "Actual Loops": 4,                                                                                                            +
                       "Shared Hit Blocks": 1947287,                                                                                                 +
                       "Shared Read Blocks": 94618,                                                                                                  +
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
                           "Startup Cost": 0.09,                                                                                                     +
                           "Total Cost": 518.03,                                                                                                     +
                           "Plan Rows": 1,                                                                                                           +
                           "Plan Width": 50,                                                                                                         +
                           "Actual Startup Time": 132.012,                                                                                           +
                           "Actual Total Time": 221061.210,                                                                                          +
                           "Actual Rows": 49908,                                                                                                     +
                           "Actual Loops": 1,                                                                                                        +
                           "Inner Unique": true,                                                                                                     +
                           "Join Filter": "(mi.info_type_id = it1.id)",                                                                              +
                           "Rows Removed by Join Filter": 8877,                                                                                      +
                           "Shared Hit Blocks": 1947287,                                                                                             +
                           "Shared Read Blocks": 94618,                                                                                              +
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
                               "Startup Cost": 0.09,                                                                                                 +
                               "Total Cost": 517.98,                                                                                                 +
                               "Plan Rows": 2,                                                                                                       +
                               "Plan Width": 54,                                                                                                     +
                               "Actual Startup Time": 131.969,                                                                                       +
                               "Actual Total Time": 220985.946,                                                                                      +
                               "Actual Rows": 58785,                                                                                                 +
                               "Actual Loops": 1,                                                                                                    +
                               "Inner Unique": false,                                                                                                +
                               "Join Filter": "(t.id = mi.movie_id)",                                                                                +
                               "Rows Removed by Join Filter": 0,                                                                                     +
                               "Shared Hit Blocks": 1947286,                                                                                         +
                               "Shared Read Blocks": 94618,                                                                                          +
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
                                   "Startup Cost": 0.08,                                                                                             +
                                   "Total Cost": 517.67,                                                                                             +
                                   "Plan Rows": 2,                                                                                                   +
                                   "Plan Width": 66,                                                                                                 +
                                   "Actual Startup Time": 84.596,                                                                                    +
                                   "Actual Total Time": 103577.225,                                                                                  +
                                   "Actual Rows": 61121,                                                                                             +
                                   "Actual Loops": 1,                                                                                                +
                                   "Inner Unique": true,                                                                                             +
                                   "Shared Hit Blocks": 616211,                                                                                      +
                                   "Shared Read Blocks": 53618,                                                                                      +
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
                                       "Startup Cost": 0.07,                                                                                         +
                                       "Total Cost": 517.61,                                                                                         +
                                       "Plan Rows": 3,                                                                                               +
                                       "Plan Width": 51,                                                                                             +
                                       "Actual Startup Time": 74.380,                                                                                +
                                       "Actual Total Time": 84390.362,                                                                               +
                                       "Actual Rows": 83779,                                                                                         +
                                       "Actual Loops": 1,                                                                                            +
                                       "Inner Unique": false,                                                                                        +
                                       "Join Filter": "(t.id = mc.movie_id)",                                                                        +
                                       "Rows Removed by Join Filter": 0,                                                                             +
                                       "Shared Hit Blocks": 284202,                                                                                  +
                                       "Shared Read Blocks": 50030,                                                                                  +
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
                                           "Startup Cost": 0.05,                                                                                     +
                                           "Total Cost": 517.45,                                                                                     +
                                           "Plan Rows": 1,                                                                                           +
                                           "Plan Width": 39,                                                                                         +
                                           "Actual Startup Time": 74.144,                                                                            +
                                           "Actual Total Time": 65532.762,                                                                           +
                                           "Actual Rows": 7271,                                                                                      +
                                           "Actual Loops": 1,                                                                                        +
                                           "Inner Unique": true,                                                                                     +
                                           "Shared Hit Blocks": 257487,                                                                              +
                                           "Shared Read Blocks": 40944,                                                                              +
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
                                               "Startup Cost": 0.04,                                                                                 +
                                               "Total Cost": 517.33,                                                                                 +
                                               "Plan Rows": 3,                                                                                       +
                                               "Plan Width": 14,                                                                                     +
                                               "Actual Startup Time": 63.531,                                                                        +
                                               "Actual Total Time": 18222.527,                                                                       +
                                               "Actual Rows": 31800,                                                                                 +
                                               "Actual Loops": 1,                                                                                    +
                                               "Inner Unique": true,                                                                                 +
                                               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                      +
                                               "Rows Removed by Join Filter": 62852,                                                                 +
                                               "Shared Hit Blocks": 145689,                                                                          +
                                               "Shared Read Blocks": 25403,                                                                          +
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
                                                   "Node Type": "Nested Loop",                                                                       +
                                                   "Parent Relationship": "Outer",                                                                   +
                                                   "Parallel Aware": false,                                                                          +
                                                   "Join Type": "Inner",                                                                             +
                                                   "Startup Cost": 0.04,                                                                             +
                                                   "Total Cost": 517.19,                                                                             +
                                                   "Plan Rows": 395,                                                                                 +
                                                   "Plan Width": 18,                                                                                 +
                                                   "Actual Startup Time": 63.451,                                                                    +
                                                   "Actual Total Time": 18088.222,                                                                   +
                                                   "Actual Rows": 94652,                                                                             +
                                                   "Actual Loops": 1,                                                                                +
                                                   "Inner Unique": false,                                                                            +
                                                   "Shared Hit Blocks": 145688,                                                                      +
                                                   "Shared Read Blocks": 25403,                                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                                       +
                                                   "Shared Written Blocks": 0,                                                                       +
                                                   "Local Hit Blocks": 0,                                                                            +
                                                   "Local Read Blocks": 0,                                                                           +
                                                   "Local Dirtied Blocks": 0,                                                                        +
                                                   "Local Written Blocks": 0,                                                                        +
                                                   "Temp Read Blocks": 0,                                                                            +
                                                   "Temp Written Blocks": 0,                                                                         +
                                                   "Plans": [                                                                                        +
                                                     {                                                                                               +
                                                       "Node Type": "Nested Loop",                                                                   +
                                                       "Parent Relationship": "Outer",                                                               +
                                                       "Parallel Aware": false,                                                                      +
                                                       "Join Type": "Inner",                                                                         +
                                                       "Startup Cost": 0.03,                                                                         +
                                                       "Total Cost": 514.14,                                                                         +
                                                       "Plan Rows": 135,                                                                             +
                                                       "Plan Width": 4,                                                                              +
                                                       "Actual Startup Time": 62.981,                                                                +
                                                       "Actual Total Time": 9624.890,                                                                +
                                                       "Actual Rows": 37091,                                                                         +
                                                       "Actual Loops": 1,                                                                            +
                                                       "Inner Unique": false,                                                                        +
                                                       "Shared Hit Blocks": 10145,                                                                   +
                                                       "Shared Read Blocks": 16297,                                                                  +
                                                       "Shared Dirtied Blocks": 0,                                                                   +
                                                       "Shared Written Blocks": 0,                                                                   +
                                                       "Local Hit Blocks": 0,                                                                        +
                                                       "Local Read Blocks": 0,                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                    +
                                                       "Local Written Blocks": 0,                                                                    +
                                                       "Temp Read Blocks": 0,                                                                        +
                                                       "Temp Written Blocks": 0,                                                                     +
                                                       "Plans": [                                                                                    +
                                                         {                                                                                           +
                                                           "Node Type": "Index Scan",                                                                +
                                                           "Parent Relationship": "Outer",                                                           +
                                                           "Parallel Aware": false,                                                                  +
                                                           "Scan Direction": "Forward",                                                              +
                                                           "Index Name": "keyword_idx_keyword",                                                      +
                                                           "Relation Name": "keyword",                                                               +
                                                           "Alias": "k",                                                                             +
                                                           "Startup Cost": 0.01,                                                                     +
                                                           "Total Cost": 24.53,                                                                      +
                                                           "Plan Rows": 4,                                                                           +
                                                           "Plan Width": 4,                                                                          +
                                                           "Actual Startup Time": 39.754,                                                            +
                                                           "Actual Total Time": 102.762,                                                             +
                                                           "Actual Rows": 3,                                                                         +
                                                           "Actual Loops": 1,                                                                        +
                                                           "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",      +
                                                           "Rows Removed by Index Recheck": 0,                                                       +
                                                           "Shared Hit Blocks": 8,                                                                   +
                                                           "Shared Read Blocks": 10,                                                                 +
                                                           "Shared Dirtied Blocks": 0,                                                               +
                                                           "Shared Written Blocks": 0,                                                               +
                                                           "Local Hit Blocks": 0,                                                                    +
                                                           "Local Read Blocks": 0,                                                                   +
                                                           "Local Dirtied Blocks": 0,                                                                +
                                                           "Local Written Blocks": 0,                                                                +
                                                           "Temp Read Blocks": 0,                                                                    +
                                                           "Temp Written Blocks": 0                                                                  +
                                                         },                                                                                          +
                                                         {                                                                                           +
                                                           "Node Type": "Index Scan",                                                                +
                                                           "Parent Relationship": "Inner",                                                           +
                                                           "Parallel Aware": false,                                                                  +
                                                           "Scan Direction": "Forward",                                                              +
                                                           "Index Name": "keyword_id_movie_keyword",                                                 +
                                                           "Relation Name": "movie_keyword",                                                         +
                                                           "Alias": "mk",                                                                            +
                                                           "Startup Cost": 0.01,                                                                     +
                                                           "Total Cost": 122.40,                                                                     +
                                                           "Plan Rows": 39,                                                                          +
                                                           "Plan Width": 8,                                                                          +
                                                           "Actual Startup Time": 22.751,                                                            +
                                                           "Actual Total Time": 3164.506,                                                            +
                                                           "Actual Rows": 12364,                                                                     +
                                                           "Actual Loops": 3,                                                                        +
                                                           "Index Cond": "(keyword_id = k.id)",                                                      +
                                                           "Rows Removed by Index Recheck": 0,                                                       +
                                                           "Shared Hit Blocks": 10137,                                                               +
                                                           "Shared Read Blocks": 16287,                                                              +
                                                           "Shared Dirtied Blocks": 0,                                                               +
                                                           "Shared Written Blocks": 0,                                                               +
                                                           "Local Hit Blocks": 0,                                                                    +
                                                           "Local Read Blocks": 0,                                                                   +
                                                           "Local Dirtied Blocks": 0,                                                                +
                                                           "Local Written Blocks": 0,                                                                +
                                                           "Temp Read Blocks": 0,                                                                    +
                                                           "Temp Written Blocks": 0                                                                  +
                                                         }                                                                                           +
                                                       ]                                                                                             +
                                                     },                                                                                              +
                                                     {                                                                                               +
                                                       "Node Type": "Index Scan",                                                                    +
                                                       "Parent Relationship": "Inner",                                                               +
                                                       "Parallel Aware": false,                                                                      +
                                                       "Scan Direction": "Forward",                                                                  +
                                                       "Index Name": "movie_id_movie_info_idx",                                                      +
                                                       "Relation Name": "movie_info_idx",                                                            +
                                                       "Alias": "mi_idx",                                                                            +
                                                       "Startup Cost": 0.01,                                                                         +
                                                       "Total Cost": 0.02,                                                                           +
                                                       "Plan Rows": 3,                                                                               +
                                                       "Plan Width": 14,                                                                             +
                                                       "Actual Startup Time": 0.218,                                                                 +
                                                       "Actual Total Time": 0.225,                                                                   +
                                                       "Actual Rows": 3,                                                                             +
                                                       "Actual Loops": 37091,                                                                        +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                     +
                                                       "Rows Removed by Index Recheck": 0,                                                           +
                                                       "Filter": "(info < '8.5'::text)",                                                             +
                                                       "Rows Removed by Filter": 0,                                                                  +
                                                       "Shared Hit Blocks": 135543,                                                                  +
                                                       "Shared Read Blocks": 9106,                                                                   +
                                                       "Shared Dirtied Blocks": 0,                                                                   +
                                                       "Shared Written Blocks": 0,                                                                   +
                                                       "Local Hit Blocks": 0,                                                                        +
                                                       "Local Read Blocks": 0,                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                    +
                                                       "Local Written Blocks": 0,                                                                    +
                                                       "Temp Read Blocks": 0,                                                                        +
                                                       "Temp Written Blocks": 0                                                                      +
                                                     }                                                                                               +
                                                   ]                                                                                                 +
                                                 },                                                                                                  +
                                                 {                                                                                                   +
                                                   "Node Type": "Materialize",                                                                       +
                                                   "Parent Relationship": "Inner",                                                                   +
                                                   "Parallel Aware": false,                                                                          +
                                                   "Startup Cost": 0.00,                                                                             +
                                                   "Total Cost": 0.05,                                                                               +
                                                   "Plan Rows": 1,                                                                                   +
                                                   "Plan Width": 4,                                                                                  +
                                                   "Actual Startup Time": 0.000,                                                                     +
                                                   "Actual Total Time": 0.000,                                                                       +
                                                   "Actual Rows": 1,                                                                                 +
                                                   "Actual Loops": 94652,                                                                            +
                                                   "Shared Hit Blocks": 1,                                                                           +
                                                   "Shared Read Blocks": 0,                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                       +
                                                   "Shared Written Blocks": 0,                                                                       +
                                                   "Local Hit Blocks": 0,                                                                            +
                                                   "Local Read Blocks": 0,                                                                           +
                                                   "Local Dirtied Blocks": 0,                                                                        +
                                                   "Local Written Blocks": 0,                                                                        +
                                                   "Temp Read Blocks": 0,                                                                            +
                                                   "Temp Written Blocks": 0,                                                                         +
                                                   "Plans": [                                                                                        +
                                                     {                                                                                               +
                                                       "Node Type": "Seq Scan",                                                                      +
                                                       "Parent Relationship": "Outer",                                                               +
                                                       "Parallel Aware": false,                                                                      +
                                                       "Relation Name": "info_type",                                                                 +
                                                       "Alias": "it2",                                                                               +
                                                       "Startup Cost": 0.00,                                                                         +
                                                       "Total Cost": 0.05,                                                                           +
                                                       "Plan Rows": 1,                                                                               +
                                                       "Plan Width": 4,                                                                              +
                                                       "Actual Startup Time": 0.049,                                                                 +
                                                       "Actual Total Time": 0.055,                                                                   +
                                                       "Actual Rows": 1,                                                                             +
                                                       "Actual Loops": 1,                                                                            +
                                                       "Filter": "((info)::text = 'rating'::text)",                                                  +
                                                       "Rows Removed by Filter": 112,                                                                +
                                                       "Shared Hit Blocks": 1,                                                                       +
                                                       "Shared Read Blocks": 0,                                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                                   +
                                                       "Shared Written Blocks": 0,                                                                   +
                                                       "Local Hit Blocks": 0,                                                                        +
                                                       "Local Read Blocks": 0,                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                    +
                                                       "Local Written Blocks": 0,                                                                    +
                                                       "Temp Read Blocks": 0,                                                                        +
                                                       "Temp Written Blocks": 0                                                                      +
                                                     }                                                                                               +
                                                   ]                                                                                                 +
                                                 }                                                                                                   +
                                               ]                                                                                                     +
                                             },                                                                                                      +
                                             {                                                                                                       +
                                               "Node Type": "Index Scan",                                                                            +
                                               "Parent Relationship": "Inner",                                                                       +
                                               "Parallel Aware": false,                                                                              +
                                               "Scan Direction": "Forward",                                                                          +
                                               "Index Name": "title_idx_id",                                                                         +
                                               "Relation Name": "title",                                                                             +
                                               "Alias": "t",                                                                                         +
                                               "Startup Cost": 0.01,                                                                                 +
                                               "Total Cost": 0.04,                                                                                   +
                                               "Plan Rows": 1,                                                                                       +
                                               "Plan Width": 25,                                                                                     +
                                               "Actual Startup Time": 1.486,                                                                         +
                                               "Actual Total Time": 1.486,                                                                           +
                                               "Actual Rows": 0,                                                                                     +
                                               "Actual Loops": 31800,                                                                                +
                                               "Index Cond": "(id = mk.movie_id)",                                                                   +
                                               "Rows Removed by Index Recheck": 0,                                                                   +
                                               "Filter": "(production_year > 2005)",                                                                 +
                                               "Rows Removed by Filter": 1,                                                                          +
                                               "Shared Hit Blocks": 111798,                                                                          +
                                               "Shared Read Blocks": 15541,                                                                          +
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
                                           "Index Name": "movie_id_movie_companies",                                                                 +
                                           "Relation Name": "movie_companies",                                                                       +
                                           "Alias": "mc",                                                                                            +
                                           "Startup Cost": 0.01,                                                                                     +
                                           "Total Cost": 0.03,                                                                                       +
                                           "Plan Rows": 2,                                                                                           +
                                           "Plan Width": 12,                                                                                         +
                                           "Actual Startup Time": 1.867,                                                                             +
                                           "Actual Total Time": 2.579,                                                                               +
                                           "Actual Rows": 12,                                                                                        +
                                           "Actual Loops": 7271,                                                                                     +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                           "Rows Removed by Index Recheck": 0,                                                                       +
                                           "Shared Hit Blocks": 26715,                                                                               +
                                           "Shared Read Blocks": 9086,                                                                               +
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
                                       "Index Name": "company_name_pkey",                                                                            +
                                       "Relation Name": "company_name",                                                                              +
                                       "Alias": "cn",                                                                                                +
                                       "Startup Cost": 0.01,                                                                                         +
                                       "Total Cost": 0.02,                                                                                           +
                                       "Plan Rows": 1,                                                                                               +
                                       "Plan Width": 23,                                                                                             +
                                       "Actual Startup Time": 0.227,                                                                                 +
                                       "Actual Total Time": 0.227,                                                                                   +
                                       "Actual Rows": 1,                                                                                             +
                                       "Actual Loops": 83779,                                                                                        +
                                       "Index Cond": "(id = mc.company_id)",                                                                         +
                                       "Rows Removed by Index Recheck": 0,                                                                           +
                                       "Filter": "((country_code)::text <> '[us]'::text)",                                                           +
                                       "Rows Removed by Filter": 0,                                                                                  +
                                       "Shared Hit Blocks": 332009,                                                                                  +
                                       "Shared Read Blocks": 3588,                                                                                   +
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
                                   "Index Name": "movie_id_movie_info",                                                                              +
                                   "Relation Name": "movie_info",                                                                                    +
                                   "Alias": "mi",                                                                                                    +
                                   "Startup Cost": 0.01,                                                                                             +
                                   "Total Cost": 0.16,                                                                                               +
                                   "Plan Rows": 1,                                                                                                   +
                                   "Plan Width": 8,                                                                                                  +
                                   "Actual Startup Time": 1.699,                                                                                     +
                                   "Actual Total Time": 1.919,                                                                                       +
                                   "Actual Rows": 1,                                                                                                 +
                                   "Actual Loops": 61121,                                                                                            +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                                   "Rows Removed by Index Recheck": 0,                                                                               +
                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",+
                                   "Rows Removed by Filter": 145,                                                                                    +
                                   "Shared Hit Blocks": 1331075,                                                                                     +
                                   "Shared Read Blocks": 41000,                                                                                      +
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
                               "Actual Loops": 58785,                                                                                                +
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
                                   "Alias": "it1",                                                                                                   +
                                   "Startup Cost": 0.00,                                                                                             +
                                   "Total Cost": 0.05,                                                                                               +
                                   "Plan Rows": 1,                                                                                                   +
                                   "Plan Width": 4,                                                                                                  +
                                   "Actual Startup Time": 0.021,                                                                                     +
                                   "Actual Total Time": 0.046,                                                                                       +
                                   "Actual Rows": 1,                                                                                                 +
                                   "Actual Loops": 1,                                                                                                +
                                   "Filter": "((info)::text = 'countries'::text)",                                                                   +
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
                         }                                                                                                                           +
                       ]                                                                                                                             +
                     }                                                                                                                               +
                   ]                                                                                                                                 +
                 }                                                                                                                                   +
               ]                                                                                                                                     +
             }                                                                                                                                       +
           ]                                                                                                                                         +
         }                                                                                                                                           +
       ]                                                                                                                                             +
     },                                                                                                                                              +
     "Planning Time": 9153.166,                                                                                                                      +
     "Triggers": [                                                                                                                                   +
     ],                                                                                                                                              +
     "Execution Time": 221374.214                                                                                                                    +
   }                                                                                                                                                 +
 ]
(1 row)

