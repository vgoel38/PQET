                                                                      QUERY PLAN                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                    +
   {                                                                                                                                                  +
     "Plan": {                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                      +
       "Strategy": "Plain",                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                      +
       "Parallel Aware": false,                                                                                                                       +
       "Startup Cost": 518.02,                                                                                                                        +
       "Total Cost": 518.02,                                                                                                                          +
       "Plan Rows": 1,                                                                                                                                +
       "Plan Width": 96,                                                                                                                              +
       "Actual Startup Time": 288238.872,                                                                                                             +
       "Actual Total Time": 288238.872,                                                                                                               +
       "Actual Rows": 1,                                                                                                                              +
       "Actual Loops": 1,                                                                                                                             +
       "Shared Hit Blocks": 123830,                                                                                                                   +
       "Shared Read Blocks": 52973,                                                                                                                   +
       "Shared Dirtied Blocks": 0,                                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                                         +
       "Local Read Blocks": 0,                                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                                     +
       "Local Written Blocks": 0,                                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                                      +
       "Plans": [                                                                                                                                     +
         {                                                                                                                                            +
           "Node Type": "Nested Loop",                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                            +
           "Parallel Aware": false,                                                                                                                   +
           "Join Type": "Inner",                                                                                                                      +
           "Startup Cost": 0.11,                                                                                                                      +
           "Total Cost": 518.02,                                                                                                                      +
           "Plan Rows": 1,                                                                                                                            +
           "Plan Width": 39,                                                                                                                          +
           "Actual Startup Time": 35898.689,                                                                                                          +
           "Actual Total Time": 288238.510,                                                                                                           +
           "Actual Rows": 93,                                                                                                                         +
           "Actual Loops": 1,                                                                                                                         +
           "Inner Unique": true,                                                                                                                      +
           "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                                           +
           "Rows Removed by Join Filter": 133,                                                                                                        +
           "Shared Hit Blocks": 123830,                                                                                                               +
           "Shared Read Blocks": 52973,                                                                                                               +
           "Shared Dirtied Blocks": 0,                                                                                                                +
           "Shared Written Blocks": 0,                                                                                                                +
           "Local Hit Blocks": 0,                                                                                                                     +
           "Local Read Blocks": 0,                                                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                                                 +
           "Local Written Blocks": 0,                                                                                                                 +
           "Temp Read Blocks": 0,                                                                                                                     +
           "Temp Written Blocks": 0,                                                                                                                  +
           "Plans": [                                                                                                                                 +
             {                                                                                                                                        +
               "Node Type": "Nested Loop",                                                                                                            +
               "Parent Relationship": "Outer",                                                                                                        +
               "Parallel Aware": false,                                                                                                               +
               "Join Type": "Inner",                                                                                                                  +
               "Startup Cost": 0.11,                                                                                                                  +
               "Total Cost": 517.97,                                                                                                                  +
               "Plan Rows": 1,                                                                                                                        +
               "Plan Width": 43,                                                                                                                      +
               "Actual Startup Time": 35898.577,                                                                                                      +
               "Actual Total Time": 288237.718,                                                                                                       +
               "Actual Rows": 226,                                                                                                                    +
               "Actual Loops": 1,                                                                                                                     +
               "Inner Unique": false,                                                                                                                 +
               "Join Filter": "(t.id = mi_idx.movie_id)",                                                                                             +
               "Rows Removed by Join Filter": 0,                                                                                                      +
               "Shared Hit Blocks": 123829,                                                                                                           +
               "Shared Read Blocks": 52973,                                                                                                           +
               "Shared Dirtied Blocks": 0,                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                             +
               "Local Written Blocks": 0,                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                 +
               "Temp Written Blocks": 0,                                                                                                              +
               "Plans": [                                                                                                                             +
                 {                                                                                                                                    +
                   "Node Type": "Nested Loop",                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                    +
                   "Parallel Aware": false,                                                                                                           +
                   "Join Type": "Inner",                                                                                                              +
                   "Startup Cost": 0.10,                                                                                                              +
                   "Total Cost": 517.90,                                                                                                              +
                   "Plan Rows": 1,                                                                                                                    +
                   "Plan Width": 49,                                                                                                                  +
                   "Actual Startup Time": 3346.607,                                                                                                   +
                   "Actual Total Time": 281802.312,                                                                                                   +
                   "Actual Rows": 1262,                                                                                                               +
                   "Actual Loops": 1,                                                                                                                 +
                   "Inner Unique": true,                                                                                                              +
                   "Shared Hit Blocks": 119061,                                                                                                       +
                   "Shared Read Blocks": 52591,                                                                                                       +
                   "Shared Dirtied Blocks": 0,                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                             +
                   "Temp Written Blocks": 0,                                                                                                          +
                   "Plans": [                                                                                                                         +
                     {                                                                                                                                +
                       "Node Type": "Nested Loop",                                                                                                    +
                       "Parent Relationship": "Outer",                                                                                                +
                       "Parallel Aware": false,                                                                                                       +
                       "Join Type": "Inner",                                                                                                          +
                       "Startup Cost": 0.08,                                                                                                          +
                       "Total Cost": 517.80,                                                                                                          +
                       "Plan Rows": 1,                                                                                                                +
                       "Plan Width": 53,                                                                                                              +
                       "Actual Startup Time": 3330.190,                                                                                               +
                       "Actual Total Time": 269309.953,                                                                                               +
                       "Actual Rows": 1262,                                                                                                           +
                       "Actual Loops": 1,                                                                                                             +
                       "Inner Unique": true,                                                                                                          +
                       "Shared Hit Blocks": 115832,                                                                                                   +
                       "Shared Read Blocks": 50760,                                                                                                   +
                       "Shared Dirtied Blocks": 0,                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                      +
                       "Plans": [                                                                                                                     +
                         {                                                                                                                            +
                           "Node Type": "Nested Loop",                                                                                                +
                           "Parent Relationship": "Outer",                                                                                            +
                           "Parallel Aware": false,                                                                                                   +
                           "Join Type": "Inner",                                                                                                      +
                           "Startup Cost": 0.07,                                                                                                      +
                           "Total Cost": 517.55,                                                                                                      +
                           "Plan Rows": 14,                                                                                                           +
                           "Plan Width": 41,                                                                                                          +
                           "Actual Startup Time": 1770.940,                                                                                           +
                           "Actual Total Time": 190503.347,                                                                                           +
                           "Actual Rows": 44986,                                                                                                      +
                           "Actual Loops": 1,                                                                                                         +
                           "Inner Unique": false,                                                                                                     +
                           "Join Filter": "(t.id = ci.movie_id)",                                                                                     +
                           "Rows Removed by Join Filter": 0,                                                                                          +
                           "Shared Hit Blocks": 59470,                                                                                                +
                           "Shared Read Blocks": 37786,                                                                                               +
                           "Shared Dirtied Blocks": 0,                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                     +
                           "Temp Written Blocks": 0,                                                                                                  +
                           "Plans": [                                                                                                                 +
                             {                                                                                                                        +
                               "Node Type": "Nested Loop",                                                                                            +
                               "Parent Relationship": "Outer",                                                                                        +
                               "Parallel Aware": false,                                                                                               +
                               "Join Type": "Inner",                                                                                                  +
                               "Startup Cost": 0.05,                                                                                                  +
                               "Total Cost": 516.24,                                                                                                  +
                               "Plan Rows": 1,                                                                                                        +
                               "Plan Width": 29,                                                                                                      +
                               "Actual Startup Time": 1742.948,                                                                                       +
                               "Actual Total Time": 33646.392,                                                                                        +
                               "Actual Rows": 269,                                                                                                    +
                               "Actual Loops": 1,                                                                                                     +
                               "Inner Unique": false,                                                                                                 +
                               "Join Filter": "(kt.id = t.kind_id)",                                                                                  +
                               "Rows Removed by Join Filter": 98,                                                                                     +
                               "Shared Hit Blocks": 40913,                                                                                            +
                               "Shared Read Blocks": 11465,                                                                                           +
                               "Shared Dirtied Blocks": 0,                                                                                            +
                               "Shared Written Blocks": 0,                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                             +
                               "Local Written Blocks": 0,                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                              +
                               "Plans": [                                                                                                             +
                                 {                                                                                                                    +
                                   "Node Type": "Seq Scan",                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                    +
                                   "Parallel Aware": false,                                                                                           +
                                   "Relation Name": "kind_type",                                                                                      +
                                   "Alias": "kt",                                                                                                     +
                                   "Startup Cost": 0.00,                                                                                              +
                                   "Total Cost": 0.03,                                                                                                +
                                   "Plan Rows": 1,                                                                                                    +
                                   "Plan Width": 4,                                                                                                   +
                                   "Actual Startup Time": 0.015,                                                                                      +
                                   "Actual Total Time": 0.021,                                                                                        +
                                   "Actual Rows": 1,                                                                                                  +
                                   "Actual Loops": 1,                                                                                                 +
                                   "Filter": "((kind)::text = 'movie'::text)",                                                                        +
                                   "Rows Removed by Filter": 6,                                                                                       +
                                   "Shared Hit Blocks": 1,                                                                                            +
                                   "Shared Read Blocks": 0,                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                             +
                                   "Local Read Blocks": 0,                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                         +
                                   "Local Written Blocks": 0,                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                             +
                                   "Temp Written Blocks": 0                                                                                           +
                                 },                                                                                                                   +
                                 {                                                                                                                    +
                                   "Node Type": "Materialize",                                                                                        +
                                   "Parent Relationship": "Inner",                                                                                    +
                                   "Parallel Aware": false,                                                                                           +
                                   "Startup Cost": 0.05,                                                                                              +
                                   "Total Cost": 516.20,                                                                                              +
                                   "Plan Rows": 1,                                                                                                    +
                                   "Plan Width": 33,                                                                                                  +
                                   "Actual Startup Time": 1742.924,                                                                                   +
                                   "Actual Total Time": 33645.517,                                                                                    +
                                   "Actual Rows": 367,                                                                                                +
                                   "Actual Loops": 1,                                                                                                 +
                                   "Shared Hit Blocks": 40912,                                                                                        +
                                   "Shared Read Blocks": 11465,                                                                                       +
                                   "Shared Dirtied Blocks": 0,                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                             +
                                   "Local Read Blocks": 0,                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                         +
                                   "Local Written Blocks": 0,                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                             +
                                   "Temp Written Blocks": 0,                                                                                          +
                                   "Plans": [                                                                                                         +
                                     {                                                                                                                +
                                       "Node Type": "Nested Loop",                                                                                    +
                                       "Parent Relationship": "Outer",                                                                                +
                                       "Parallel Aware": false,                                                                                       +
                                       "Join Type": "Inner",                                                                                          +
                                       "Startup Cost": 0.05,                                                                                          +
                                       "Total Cost": 516.20,                                                                                          +
                                       "Plan Rows": 1,                                                                                                +
                                       "Plan Width": 33,                                                                                              +
                                       "Actual Startup Time": 1742.912,                                                                               +
                                       "Actual Total Time": 33643.519,                                                                                +
                                       "Actual Rows": 367,                                                                                            +
                                       "Actual Loops": 1,                                                                                             +
                                       "Inner Unique": true,                                                                                          +
                                       "Shared Hit Blocks": 40912,                                                                                    +
                                       "Shared Read Blocks": 11465,                                                                                   +
                                       "Shared Dirtied Blocks": 0,                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                         +
                                       "Local Read Blocks": 0,                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                     +
                                       "Local Written Blocks": 0,                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                      +
                                       "Plans": [                                                                                                     +
                                         {                                                                                                            +
                                           "Node Type": "Nested Loop",                                                                                +
                                           "Parent Relationship": "Outer",                                                                            +
                                           "Parallel Aware": false,                                                                                   +
                                           "Join Type": "Inner",                                                                                      +
                                           "Startup Cost": 0.04,                                                                                      +
                                           "Total Cost": 516.12,                                                                                      +
                                           "Plan Rows": 2,                                                                                            +
                                           "Plan Width": 8,                                                                                           +
                                           "Actual Startup Time": 113.447,                                                                            +
                                           "Actual Total Time": 12149.838,                                                                            +
                                           "Actual Rows": 2667,                                                                                       +
                                           "Actual Loops": 1,                                                                                         +
                                           "Inner Unique": true,                                                                                      +
                                           "Join Filter": "(cc.subject_id = cct1.id)",                                                                +
                                           "Rows Removed by Join Filter": 1307,                                                                       +
                                           "Shared Hit Blocks": 33956,                                                                                +
                                           "Shared Read Blocks": 7749,                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                +
                                           "Shared Written Blocks": 0,                                                                                +
                                           "Local Hit Blocks": 0,                                                                                     +
                                           "Local Read Blocks": 0,                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                 +
                                           "Local Written Blocks": 0,                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                     +
                                           "Temp Written Blocks": 0,                                                                                  +
                                           "Plans": [                                                                                                 +
                                             {                                                                                                        +
                                               "Node Type": "Nested Loop",                                                                            +
                                               "Parent Relationship": "Outer",                                                                        +
                                               "Parallel Aware": false,                                                                               +
                                               "Join Type": "Inner",                                                                                  +
                                               "Startup Cost": 0.04,                                                                                  +
                                               "Total Cost": 516.08,                                                                                  +
                                               "Plan Rows": 10,                                                                                       +
                                               "Plan Width": 12,                                                                                      +
                                               "Actual Startup Time": 113.436,                                                                        +
                                               "Actual Total Time": 12141.511,                                                                        +
                                               "Actual Rows": 3974,                                                                                   +
                                               "Actual Loops": 1,                                                                                     +
                                               "Inner Unique": true,                                                                                  +
                                               "Join Filter": "(cc.status_id = cct2.id)",                                                             +
                                               "Rows Removed by Join Filter": 1858,                                                                   +
                                               "Shared Hit Blocks": 33955,                                                                            +
                                               "Shared Read Blocks": 7749,                                                                            +
                                               "Shared Dirtied Blocks": 0,                                                                            +
                                               "Shared Written Blocks": 0,                                                                            +
                                               "Local Hit Blocks": 0,                                                                                 +
                                               "Local Read Blocks": 0,                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                             +
                                               "Local Written Blocks": 0,                                                                             +
                                               "Temp Read Blocks": 0,                                                                                 +
                                               "Temp Written Blocks": 0,                                                                              +
                                               "Plans": [                                                                                             +
                                                 {                                                                                                    +
                                                   "Node Type": "Nested Loop",                                                                        +
                                                   "Parent Relationship": "Outer",                                                                    +
                                                   "Parallel Aware": false,                                                                           +
                                                   "Join Type": "Inner",                                                                              +
                                                   "Startup Cost": 0.04,                                                                              +
                                                   "Total Cost": 516.04,                                                                              +
                                                   "Plan Rows": 41,                                                                                   +
                                                   "Plan Width": 16,                                                                                  +
                                                   "Actual Startup Time": 113.411,                                                                    +
                                                   "Actual Total Time": 12127.455,                                                                    +
                                                   "Actual Rows": 3974,                                                                               +
                                                   "Actual Loops": 1,                                                                                 +
                                                   "Inner Unique": false,                                                                             +
                                                   "Shared Hit Blocks": 33954,                                                                        +
                                                   "Shared Read Blocks": 7749,                                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                                        +
                                                   "Shared Written Blocks": 0,                                                                        +
                                                   "Local Hit Blocks": 0,                                                                             +
                                                   "Local Read Blocks": 0,                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                         +
                                                   "Local Written Blocks": 0,                                                                         +
                                                   "Temp Read Blocks": 0,                                                                             +
                                                   "Temp Written Blocks": 0,                                                                          +
                                                   "Plans": [                                                                                         +
                                                     {                                                                                                +
                                                       "Node Type": "Nested Loop",                                                                    +
                                                       "Parent Relationship": "Outer",                                                                +
                                                       "Parallel Aware": false,                                                                       +
                                                       "Join Type": "Inner",                                                                          +
                                                       "Startup Cost": 0.03,                                                                          +
                                                       "Total Cost": 514.14,                                                                          +
                                                       "Plan Rows": 135,                                                                              +
                                                       "Plan Width": 4,                                                                               +
                                                       "Actual Startup Time": 45.761,                                                                 +
                                                       "Actual Total Time": 9675.790,                                                                 +
                                                       "Actual Rows": 9984,                                                                           +
                                                       "Actual Loops": 1,                                                                             +
                                                       "Inner Unique": false,                                                                         +
                                                       "Shared Hit Blocks": 1003,                                                                     +
                                                       "Shared Read Blocks": 6741,                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                    +
                                                       "Shared Written Blocks": 0,                                                                    +
                                                       "Local Hit Blocks": 0,                                                                         +
                                                       "Local Read Blocks": 0,                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                     +
                                                       "Local Written Blocks": 0,                                                                     +
                                                       "Temp Read Blocks": 0,                                                                         +
                                                       "Temp Written Blocks": 0,                                                                      +
                                                       "Plans": [                                                                                     +
                                                         {                                                                                            +
                                                           "Node Type": "Index Scan",                                                                 +
                                                           "Parent Relationship": "Outer",                                                            +
                                                           "Parallel Aware": false,                                                                   +
                                                           "Scan Direction": "Forward",                                                               +
                                                           "Index Name": "keyword_idx_keyword",                                                       +
                                                           "Relation Name": "keyword",                                                                +
                                                           "Alias": "k",                                                                              +
                                                           "Startup Cost": 0.01,                                                                      +
                                                           "Total Cost": 24.53,                                                                       +
                                                           "Plan Rows": 4,                                                                            +
                                                           "Plan Width": 4,                                                                           +
                                                           "Actual Startup Time": 18.709,                                                             +
                                                           "Actual Total Time": 116.376,                                                              +
                                                           "Actual Rows": 4,                                                                          +
                                                           "Actual Loops": 1,                                                                         +
                                                           "Index Cond": "(keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))",+
                                                           "Rows Removed by Index Recheck": 0,                                                        +
                                                           "Shared Hit Blocks": 7,                                                                    +
                                                           "Shared Read Blocks": 12,                                                                  +
                                                           "Shared Dirtied Blocks": 0,                                                                +
                                                           "Shared Written Blocks": 0,                                                                +
                                                           "Local Hit Blocks": 0,                                                                     +
                                                           "Local Read Blocks": 0,                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                 +
                                                           "Local Written Blocks": 0,                                                                 +
                                                           "Temp Read Blocks": 0,                                                                     +
                                                           "Temp Written Blocks": 0                                                                   +
                                                         },                                                                                           +
                                                         {                                                                                            +
                                                           "Node Type": "Index Scan",                                                                 +
                                                           "Parent Relationship": "Inner",                                                            +
                                                           "Parallel Aware": false,                                                                   +
                                                           "Scan Direction": "Forward",                                                               +
                                                           "Index Name": "keyword_id_movie_keyword",                                                  +
                                                           "Relation Name": "movie_keyword",                                                          +
                                                           "Alias": "mk",                                                                             +
                                                           "Startup Cost": 0.01,                                                                      +
                                                           "Total Cost": 122.40,                                                                      +
                                                           "Plan Rows": 39,                                                                           +
                                                           "Plan Width": 8,                                                                           +
                                                           "Actual Startup Time": 27.938,                                                             +
                                                           "Actual Total Time": 2386.923,                                                             +
                                                           "Actual Rows": 2496,                                                                       +
                                                           "Actual Loops": 4,                                                                         +
                                                           "Index Cond": "(keyword_id = k.id)",                                                       +
                                                           "Rows Removed by Index Recheck": 0,                                                        +
                                                           "Shared Hit Blocks": 996,                                                                  +
                                                           "Shared Read Blocks": 6729,                                                                +
                                                           "Shared Dirtied Blocks": 0,                                                                +
                                                           "Shared Written Blocks": 0,                                                                +
                                                           "Local Hit Blocks": 0,                                                                     +
                                                           "Local Read Blocks": 0,                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                 +
                                                           "Local Written Blocks": 0,                                                                 +
                                                           "Temp Read Blocks": 0,                                                                     +
                                                           "Temp Written Blocks": 0                                                                   +
                                                         }                                                                                            +
                                                       ]                                                                                              +
                                                     },                                                                                               +
                                                     {                                                                                                +
                                                       "Node Type": "Index Scan",                                                                     +
                                                       "Parent Relationship": "Inner",                                                                +
                                                       "Parallel Aware": false,                                                                       +
                                                       "Scan Direction": "Forward",                                                                   +
                                                       "Index Name": "movie_id_complete_cast",                                                        +
                                                       "Relation Name": "complete_cast",                                                              +
                                                       "Alias": "cc",                                                                                 +
                                                       "Startup Cost": 0.01,                                                                          +
                                                       "Total Cost": 0.01,                                                                            +
                                                       "Plan Rows": 1,                                                                                +
                                                       "Plan Width": 12,                                                                              +
                                                       "Actual Startup Time": 0.157,                                                                  +
                                                       "Actual Total Time": 0.242,                                                                    +
                                                       "Actual Rows": 0,                                                                              +
                                                       "Actual Loops": 9984,                                                                          +
                                                       "Index Cond": "(movie_id = mk.movie_id)",                                                      +
                                                       "Rows Removed by Index Recheck": 0,                                                            +
                                                       "Shared Hit Blocks": 32951,                                                                    +
                                                       "Shared Read Blocks": 1008,                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                    +
                                                       "Shared Written Blocks": 0,                                                                    +
                                                       "Local Hit Blocks": 0,                                                                         +
                                                       "Local Read Blocks": 0,                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                     +
                                                       "Local Written Blocks": 0,                                                                     +
                                                       "Temp Read Blocks": 0,                                                                         +
                                                       "Temp Written Blocks": 0                                                                       +
                                                     }                                                                                                +
                                                   ]                                                                                                  +
                                                 },                                                                                                   +
                                                 {                                                                                                    +
                                                   "Node Type": "Materialize",                                                                        +
                                                   "Parent Relationship": "Inner",                                                                    +
                                                   "Parallel Aware": false,                                                                           +
                                                   "Startup Cost": 0.00,                                                                              +
                                                   "Total Cost": 0.03,                                                                                +
                                                   "Plan Rows": 1,                                                                                    +
                                                   "Plan Width": 4,                                                                                   +
                                                   "Actual Startup Time": 0.001,                                                                      +
                                                   "Actual Total Time": 0.001,                                                                        +
                                                   "Actual Rows": 1,                                                                                  +
                                                   "Actual Loops": 3974,                                                                              +
                                                   "Shared Hit Blocks": 1,                                                                            +
                                                   "Shared Read Blocks": 0,                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                        +
                                                   "Shared Written Blocks": 0,                                                                        +
                                                   "Local Hit Blocks": 0,                                                                             +
                                                   "Local Read Blocks": 0,                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                         +
                                                   "Local Written Blocks": 0,                                                                         +
                                                   "Temp Read Blocks": 0,                                                                             +
                                                   "Temp Written Blocks": 0,                                                                          +
                                                   "Plans": [                                                                                         +
                                                     {                                                                                                +
                                                       "Node Type": "Seq Scan",                                                                       +
                                                       "Parent Relationship": "Outer",                                                                +
                                                       "Parallel Aware": false,                                                                       +
                                                       "Relation Name": "comp_cast_type",                                                             +
                                                       "Alias": "cct2",                                                                               +
                                                       "Startup Cost": 0.00,                                                                          +
                                                       "Total Cost": 0.03,                                                                            +
                                                       "Plan Rows": 1,                                                                                +
                                                       "Plan Width": 4,                                                                               +
                                                       "Actual Startup Time": 0.012,                                                                  +
                                                       "Actual Total Time": 0.013,                                                                    +
                                                       "Actual Rows": 2,                                                                              +
                                                       "Actual Loops": 1,                                                                             +
                                                       "Filter": "((kind)::text ~~ '%complete%'::text)",                                              +
                                                       "Rows Removed by Filter": 2,                                                                   +
                                                       "Shared Hit Blocks": 1,                                                                        +
                                                       "Shared Read Blocks": 0,                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                    +
                                                       "Shared Written Blocks": 0,                                                                    +
                                                       "Local Hit Blocks": 0,                                                                         +
                                                       "Local Read Blocks": 0,                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                     +
                                                       "Local Written Blocks": 0,                                                                     +
                                                       "Temp Read Blocks": 0,                                                                         +
                                                       "Temp Written Blocks": 0                                                                       +
                                                     }                                                                                                +
                                                   ]                                                                                                  +
                                                 }                                                                                                    +
                                               ]                                                                                                      +
                                             },                                                                                                       +
                                             {                                                                                                        +
                                               "Node Type": "Materialize",                                                                            +
                                               "Parent Relationship": "Inner",                                                                        +
                                               "Parallel Aware": false,                                                                               +
                                               "Startup Cost": 0.00,                                                                                  +
                                               "Total Cost": 0.03,                                                                                    +
                                               "Plan Rows": 1,                                                                                        +
                                               "Plan Width": 4,                                                                                       +
                                               "Actual Startup Time": 0.000,                                                                          +
                                               "Actual Total Time": 0.000,                                                                            +
                                               "Actual Rows": 1,                                                                                      +
                                               "Actual Loops": 3974,                                                                                  +
                                               "Shared Hit Blocks": 1,                                                                                +
                                               "Shared Read Blocks": 0,                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                            +
                                               "Shared Written Blocks": 0,                                                                            +
                                               "Local Hit Blocks": 0,                                                                                 +
                                               "Local Read Blocks": 0,                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                             +
                                               "Local Written Blocks": 0,                                                                             +
                                               "Temp Read Blocks": 0,                                                                                 +
                                               "Temp Written Blocks": 0,                                                                              +
                                               "Plans": [                                                                                             +
                                                 {                                                                                                    +
                                                   "Node Type": "Seq Scan",                                                                           +
                                                   "Parent Relationship": "Outer",                                                                    +
                                                   "Parallel Aware": false,                                                                           +
                                                   "Relation Name": "comp_cast_type",                                                                 +
                                                   "Alias": "cct1",                                                                                   +
                                                   "Startup Cost": 0.00,                                                                              +
                                                   "Total Cost": 0.03,                                                                                +
                                                   "Plan Rows": 1,                                                                                    +
                                                   "Plan Width": 4,                                                                                   +
                                                   "Actual Startup Time": 0.004,                                                                      +
                                                   "Actual Total Time": 0.011,                                                                        +
                                                   "Actual Rows": 1,                                                                                  +
                                                   "Actual Loops": 1,                                                                                 +
                                                   "Filter": "((kind)::text = 'cast'::text)",                                                         +
                                                   "Rows Removed by Filter": 3,                                                                       +
                                                   "Shared Hit Blocks": 1,                                                                            +
                                                   "Shared Read Blocks": 0,                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                        +
                                                   "Shared Written Blocks": 0,                                                                        +
                                                   "Local Hit Blocks": 0,                                                                             +
                                                   "Local Read Blocks": 0,                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                         +
                                                   "Local Written Blocks": 0,                                                                         +
                                                   "Temp Read Blocks": 0,                                                                             +
                                                   "Temp Written Blocks": 0                                                                           +
                                                 }                                                                                                    +
                                               ]                                                                                                      +
                                             }                                                                                                        +
                                           ]                                                                                                          +
                                         },                                                                                                           +
                                         {                                                                                                            +
                                           "Node Type": "Index Scan",                                                                                 +
                                           "Parent Relationship": "Inner",                                                                            +
                                           "Parallel Aware": false,                                                                                   +
                                           "Scan Direction": "Forward",                                                                               +
                                           "Index Name": "title_idx_id",                                                                              +
                                           "Relation Name": "title",                                                                                  +
                                           "Alias": "t",                                                                                              +
                                           "Startup Cost": 0.01,                                                                                      +
                                           "Total Cost": 0.04,                                                                                        +
                                           "Plan Rows": 1,                                                                                            +
                                           "Plan Width": 25,                                                                                          +
                                           "Actual Startup Time": 8.056,                                                                              +
                                           "Actual Total Time": 8.056,                                                                                +
                                           "Actual Rows": 0,                                                                                          +
                                           "Actual Loops": 2667,                                                                                      +
                                           "Index Cond": "(id = mk.movie_id)",                                                                        +
                                           "Rows Removed by Index Recheck": 0,                                                                        +
                                           "Filter": "(production_year > 2005)",                                                                      +
                                           "Rows Removed by Filter": 1,                                                                               +
                                           "Shared Hit Blocks": 6956,                                                                                 +
                                           "Shared Read Blocks": 3716,                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                +
                                           "Shared Written Blocks": 0,                                                                                +
                                           "Local Hit Blocks": 0,                                                                                     +
                                           "Local Read Blocks": 0,                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                 +
                                           "Local Written Blocks": 0,                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                     +
                                           "Temp Written Blocks": 0                                                                                   +
                                         }                                                                                                            +
                                       ]                                                                                                              +
                                     }                                                                                                                +
                                   ]                                                                                                                  +
                                 }                                                                                                                    +
                               ]                                                                                                                      +
                             },                                                                                                                       +
                             {                                                                                                                        +
                               "Node Type": "Index Scan",                                                                                             +
                               "Parent Relationship": "Inner",                                                                                        +
                               "Parallel Aware": false,                                                                                               +
                               "Scan Direction": "Forward",                                                                                           +
                               "Index Name": "movie_id_cast_info",                                                                                    +
                               "Relation Name": "cast_info",                                                                                          +
                               "Alias": "ci",                                                                                                         +
                               "Startup Cost": 0.02,                                                                                                  +
                               "Total Cost": 0.26,                                                                                                    +
                               "Plan Rows": 23,                                                                                                       +
                               "Plan Width": 12,                                                                                                      +
                               "Actual Startup Time": 25.776,                                                                                         +
                               "Actual Total Time": 582.548,                                                                                          +
                               "Actual Rows": 167,                                                                                                    +
                               "Actual Loops": 269,                                                                                                   +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                              +
                               "Rows Removed by Index Recheck": 0,                                                                                    +
                               "Shared Hit Blocks": 18557,                                                                                            +
                               "Shared Read Blocks": 26321,                                                                                           +
                               "Shared Dirtied Blocks": 0,                                                                                            +
                               "Shared Written Blocks": 0,                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                             +
                               "Local Written Blocks": 0,                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                 +
                               "Temp Written Blocks": 0                                                                                               +
                             }                                                                                                                        +
                           ]                                                                                                                          +
                         },                                                                                                                           +
                         {                                                                                                                            +
                           "Node Type": "Index Scan",                                                                                                 +
                           "Parent Relationship": "Inner",                                                                                            +
                           "Parallel Aware": false,                                                                                                   +
                           "Scan Direction": "Forward",                                                                                               +
                           "Index Name": "char_name_pkey",                                                                                            +
                           "Relation Name": "char_name",                                                                                              +
                           "Alias": "chn",                                                                                                            +
                           "Startup Cost": 0.01,                                                                                                      +
                           "Total Cost": 0.02,                                                                                                        +
                           "Plan Rows": 1,                                                                                                            +
                           "Plan Width": 20,                                                                                                          +
                           "Actual Startup Time": 1.747,                                                                                              +
                           "Actual Total Time": 1.747,                                                                                                +
                           "Actual Rows": 0,                                                                                                          +
                           "Actual Loops": 44986,                                                                                                     +
                           "Index Cond": "(id = ci.person_role_id)",                                                                                  +
                           "Rows Removed by Index Recheck": 0,                                                                                        +
                           "Filter": "((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))",                                 +
                           "Rows Removed by Filter": 0,                                                                                               +
                           "Shared Hit Blocks": 56362,                                                                                                +
                           "Shared Read Blocks": 12974,                                                                                               +
                           "Shared Dirtied Blocks": 0,                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                     +
                           "Temp Written Blocks": 0                                                                                                   +
                         }                                                                                                                            +
                       ]                                                                                                                              +
                     },                                                                                                                               +
                     {                                                                                                                                +
                       "Node Type": "Index Scan",                                                                                                     +
                       "Parent Relationship": "Inner",                                                                                                +
                       "Parallel Aware": false,                                                                                                       +
                       "Scan Direction": "Forward",                                                                                                   +
                       "Index Name": "name_pkey",                                                                                                     +
                       "Relation Name": "name",                                                                                                       +
                       "Alias": "n",                                                                                                                  +
                       "Startup Cost": 0.01,                                                                                                          +
                       "Total Cost": 0.02,                                                                                                            +
                       "Plan Rows": 1,                                                                                                                +
                       "Plan Width": 4,                                                                                                               +
                       "Actual Startup Time": 9.892,                                                                                                  +
                       "Actual Total Time": 9.892,                                                                                                    +
                       "Actual Rows": 1,                                                                                                              +
                       "Actual Loops": 1262,                                                                                                          +
                       "Index Cond": "(id = ci.person_id)",                                                                                           +
                       "Rows Removed by Index Recheck": 0,                                                                                            +
                       "Shared Hit Blocks": 3229,                                                                                                     +
                       "Shared Read Blocks": 1831,                                                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                         +
                       "Temp Written Blocks": 0                                                                                                       +
                     }                                                                                                                                +
                   ]                                                                                                                                  +
                 },                                                                                                                                   +
                 {                                                                                                                                    +
                   "Node Type": "Index Scan",                                                                                                         +
                   "Parent Relationship": "Inner",                                                                                                    +
                   "Parallel Aware": false,                                                                                                           +
                   "Scan Direction": "Forward",                                                                                                       +
                   "Index Name": "movie_id_movie_info_idx",                                                                                           +
                   "Relation Name": "movie_info_idx",                                                                                                 +
                   "Alias": "mi_idx",                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                              +
                   "Total Cost": 0.02,                                                                                                                +
                   "Plan Rows": 1,                                                                                                                    +
                   "Plan Width": 14,                                                                                                                  +
                   "Actual Startup Time": 5.086,                                                                                                      +
                   "Actual Total Time": 5.094,                                                                                                        +
                   "Actual Rows": 0,                                                                                                                  +
                   "Actual Loops": 1262,                                                                                                              +
                   "Index Cond": "(movie_id = ci.movie_id)",                                                                                          +
                   "Rows Removed by Index Recheck": 0,                                                                                                +
                   "Filter": "(info > '8.0'::text)",                                                                                                  +
                   "Rows Removed by Filter": 3,                                                                                                       +
                   "Shared Hit Blocks": 4768,                                                                                                         +
                   "Shared Read Blocks": 382,                                                                                                         +
                   "Shared Dirtied Blocks": 0,                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                             +
                   "Temp Written Blocks": 0                                                                                                           +
                 }                                                                                                                                    +
               ]                                                                                                                                      +
             },                                                                                                                                       +
             {                                                                                                                                        +
               "Node Type": "Materialize",                                                                                                            +
               "Parent Relationship": "Inner",                                                                                                        +
               "Parallel Aware": false,                                                                                                               +
               "Startup Cost": 0.00,                                                                                                                  +
               "Total Cost": 0.05,                                                                                                                    +
               "Plan Rows": 1,                                                                                                                        +
               "Plan Width": 4,                                                                                                                       +
               "Actual Startup Time": 0.001,                                                                                                          +
               "Actual Total Time": 0.001,                                                                                                            +
               "Actual Rows": 1,                                                                                                                      +
               "Actual Loops": 226,                                                                                                                   +
               "Shared Hit Blocks": 1,                                                                                                                +
               "Shared Read Blocks": 0,                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                             +
               "Local Written Blocks": 0,                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                 +
               "Temp Written Blocks": 0,                                                                                                              +
               "Plans": [                                                                                                                             +
                 {                                                                                                                                    +
                   "Node Type": "Seq Scan",                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                    +
                   "Parallel Aware": false,                                                                                                           +
                   "Relation Name": "info_type",                                                                                                      +
                   "Alias": "it2",                                                                                                                    +
                   "Startup Cost": 0.00,                                                                                                              +
                   "Total Cost": 0.05,                                                                                                                +
                   "Plan Rows": 1,                                                                                                                    +
                   "Plan Width": 4,                                                                                                                   +
                   "Actual Startup Time": 0.064,                                                                                                      +
                   "Actual Total Time": 0.071,                                                                                                        +
                   "Actual Rows": 1,                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                 +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                       +
                   "Rows Removed by Filter": 112,                                                                                                     +
                   "Shared Hit Blocks": 1,                                                                                                            +
                   "Shared Read Blocks": 0,                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                             +
                   "Temp Written Blocks": 0                                                                                                           +
                 }                                                                                                                                    +
               ]                                                                                                                                      +
             }                                                                                                                                        +
           ]                                                                                                                                          +
         }                                                                                                                                            +
       ]                                                                                                                                              +
     },                                                                                                                                               +
     "Planning Time": 10493.467,                                                                                                                      +
     "Triggers": [                                                                                                                                    +
     ],                                                                                                                                               +
     "Execution Time": 288256.431                                                                                                                     +
   }                                                                                                                                                  +
 ]
(1 row)

