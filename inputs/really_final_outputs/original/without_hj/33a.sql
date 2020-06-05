                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 794.24,                                                                                                       +
       "Total Cost": 794.24,                                                                                                         +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 192,                                                                                                            +
       "Actual Startup Time": 9384.536,                                                                                              +
       "Actual Total Time": 9384.537,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 55651,                                                                                                   +
       "Shared Read Blocks": 9503,                                                                                                   +
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
           "Startup Cost": 0.10,                                                                                                     +
           "Total Cost": 794.24,                                                                                                     +
           "Plan Rows": 1,                                                                                                           +
           "Plan Width": 84,                                                                                                         +
           "Actual Startup Time": 226.907,                                                                                           +
           "Actual Total Time": 9384.435,                                                                                            +
           "Actual Rows": 8,                                                                                                         +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Join Filter": "(t1.kind_id = kt1.id)",                                                                                   +
           "Rows Removed by Join Filter": 0,                                                                                         +
           "Shared Hit Blocks": 55651,                                                                                               +
           "Shared Read Blocks": 9503,                                                                                               +
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
               "Startup Cost": 0.10,                                                                                                 +
               "Total Cost": 794.21,                                                                                                 +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 88,                                                                                                     +
               "Actual Startup Time": 226.866,                                                                                       +
               "Actual Total Time": 9384.376,                                                                                        +
               "Actual Rows": 8,                                                                                                     +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Shared Hit Blocks": 55650,                                                                                           +
               "Shared Read Blocks": 9503,                                                                                           +
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
                   "Startup Cost": 0.09,                                                                                             +
                   "Total Cost": 794.12,                                                                                             +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 73,                                                                                                 +
                   "Actual Startup Time": 210.160,                                                                                   +
                   "Actual Total Time": 9137.619,                                                                                    +
                   "Actual Rows": 28,                                                                                                +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": true,                                                                                             +
                   "Join Filter": "(t2.kind_id = kt2.id)",                                                                           +
                   "Rows Removed by Join Filter": 0,                                                                                 +
                   "Shared Hit Blocks": 55555,                                                                                       +
                   "Shared Read Blocks": 9486,                                                                                       +
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
                       "Startup Cost": 0.09,                                                                                         +
                       "Total Cost": 794.09,                                                                                         +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 77,                                                                                             +
                       "Actual Startup Time": 210.120,                                                                               +
                       "Actual Total Time": 9137.507,                                                                                +
                       "Actual Rows": 28,                                                                                            +
                       "Actual Loops": 1,                                                                                            +
                       "Inner Unique": false,                                                                                        +
                       "Join Filter": "((t1.id = mi_idx1.movie_id) AND (it1.id = mi_idx1.info_type_id))",                            +
                       "Rows Removed by Join Filter": 56,                                                                            +
                       "Shared Hit Blocks": 55554,                                                                                   +
                       "Shared Read Blocks": 9486,                                                                                   +
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
                           "Startup Cost": 0.08,                                                                                     +
                           "Total Cost": 793.77,                                                                                     +
                           "Plan Rows": 11,                                                                                          +
                           "Plan Width": 87,                                                                                         +
                           "Actual Startup Time": 196.715,                                                                           +
                           "Actual Total Time": 9076.723,                                                                            +
                           "Actual Rows": 29,                                                                                        +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": false,                                                                                    +
                           "Shared Hit Blocks": 55445,                                                                               +
                           "Shared Read Blocks": 9480,                                                                               +
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
                               "Startup Cost": 0.06,                                                                                 +
                               "Total Cost": 793.27,                                                                                 +
                               "Plan Rows": 11,                                                                                      +
                               "Plan Width": 79,                                                                                     +
                               "Actual Startup Time": 186.693,                                                                       +
                               "Actual Total Time": 8948.684,                                                                        +
                               "Actual Rows": 11,                                                                                    +
                               "Actual Loops": 1,                                                                                    +
                               "Inner Unique": true,                                                                                 +
                               "Shared Hit Blocks": 55407,                                                                           +
                               "Shared Read Blocks": 9466,                                                                           +
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
                                   "Startup Cost": 0.05,                                                                             +
                                   "Total Cost": 761.58,                                                                             +
                                   "Plan Rows": 11,                                                                                  +
                                   "Plan Width": 54,                                                                                 +
                                   "Actual Startup Time": 165.736,                                                                   +
                                   "Actual Total Time": 8788.337,                                                                    +
                                   "Actual Rows": 11,                                                                                +
                                   "Actual Loops": 1,                                                                                +
                                   "Inner Unique": false,                                                                            +
                                   "Shared Hit Blocks": 55373,                                                                       +
                                   "Shared Read Blocks": 9456,                                                                       +
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
                                       "Startup Cost": 0.05,                                                                         +
                                       "Total Cost": 761.53,                                                                         +
                                       "Plan Rows": 11,                                                                              +
                                       "Plan Width": 50,                                                                             +
                                       "Actual Startup Time": 165.662,                                                               +
                                       "Actual Total Time": 8788.199,                                                                +
                                       "Actual Rows": 11,                                                                            +
                                       "Actual Loops": 1,                                                                            +
                                       "Inner Unique": true,                                                                         +
                                       "Shared Hit Blocks": 55372,                                                                   +
                                       "Shared Read Blocks": 9456,                                                                   +
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
                                           "Node Type": "Nested Loop",                                                               +
                                           "Parent Relationship": "Outer",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Join Type": "Inner",                                                                     +
                                           "Startup Cost": 0.04,                                                                     +
                                           "Total Cost": 761.33,                                                                     +
                                           "Plan Rows": 11,                                                                          +
                                           "Plan Width": 35,                                                                         +
                                           "Actual Startup Time": 146.863,                                                           +
                                           "Actual Total Time": 8614.573,                                                            +
                                           "Actual Rows": 11,                                                                        +
                                           "Actual Loops": 1,                                                                        +
                                           "Inner Unique": false,                                                                    +
                                           "Join Filter": "(t2.id = mc2.movie_id)",                                                  +
                                           "Rows Removed by Join Filter": 0,                                                         +
                                           "Shared Hit Blocks": 55340,                                                               +
                                           "Shared Read Blocks": 9444,                                                               +
                                           "Shared Dirtied Blocks": 0,                                                               +
                                           "Shared Written Blocks": 0,                                                               +
                                           "Local Hit Blocks": 0,                                                                    +
                                           "Local Read Blocks": 0,                                                                   +
                                           "Local Dirtied Blocks": 0,                                                                +
                                           "Local Written Blocks": 0,                                                                +
                                           "Temp Read Blocks": 0,                                                                    +
                                           "Temp Written Blocks": 0,                                                                 +
                                           "Plans": [                                                                                +
                                             {                                                                                       +
                                               "Node Type": "Nested Loop",                                                           +
                                               "Parent Relationship": "Outer",                                                       +
                                               "Parallel Aware": false,                                                              +
                                               "Join Type": "Inner",                                                                 +
                                               "Startup Cost": 0.02,                                                                 +
                                               "Total Cost": 759.85,                                                                 +
                                               "Plan Rows": 11,                                                                      +
                                               "Plan Width": 43,                                                                     +
                                               "Actual Startup Time": 114.674,                                                       +
                                               "Actual Total Time": 8509.297,                                                        +
                                               "Actual Rows": 6,                                                                     +
                                               "Actual Loops": 1,                                                                    +
                                               "Inner Unique": true,                                                                 +
                                               "Join Filter": "(ml.link_type_id = lt.id)",                                           +
                                               "Rows Removed by Join Filter": 699,                                                   +
                                               "Shared Hit Blocks": 55325,                                                           +
                                               "Shared Read Blocks": 9432,                                                           +
                                               "Shared Dirtied Blocks": 0,                                                           +
                                               "Shared Written Blocks": 0,                                                           +
                                               "Local Hit Blocks": 0,                                                                +
                                               "Local Read Blocks": 0,                                                               +
                                               "Local Dirtied Blocks": 0,                                                            +
                                               "Local Written Blocks": 0,                                                            +
                                               "Temp Read Blocks": 0,                                                                +
                                               "Temp Written Blocks": 0,                                                             +
                                               "Plans": [                                                                            +
                                                 {                                                                                   +
                                                   "Node Type": "Nested Loop",                                                       +
                                                   "Parent Relationship": "Outer",                                                   +
                                                   "Parallel Aware": false,                                                          +
                                                   "Join Type": "Inner",                                                             +
                                                   "Startup Cost": 0.02,                                                             +
                                                   "Total Cost": 759.77,                                                             +
                                                   "Plan Rows": 68,                                                                  +
                                                   "Plan Width": 47,                                                                 +
                                                   "Actual Startup Time": 57.377,                                                    +
                                                   "Actual Total Time": 8508.064,                                                    +
                                                   "Actual Rows": 353,                                                               +
                                                   "Actual Loops": 1,                                                                +
                                                   "Inner Unique": true,                                                             +
                                                   "Join Filter": "(ml.linked_movie_id = t2.id)",                                    +
                                                   "Rows Removed by Join Filter": 0,                                                 +
                                                   "Shared Hit Blocks": 55324,                                                       +
                                                   "Shared Read Blocks": 9432,                                                       +
                                                   "Shared Dirtied Blocks": 0,                                                       +
                                                   "Shared Written Blocks": 0,                                                       +
                                                   "Local Hit Blocks": 0,                                                            +
                                                   "Local Read Blocks": 0,                                                           +
                                                   "Local Dirtied Blocks": 0,                                                        +
                                                   "Local Written Blocks": 0,                                                        +
                                                   "Temp Read Blocks": 0,                                                            +
                                                   "Temp Written Blocks": 0,                                                         +
                                                   "Plans": [                                                                        +
                                                     {                                                                               +
                                                       "Node Type": "Nested Loop",                                                   +
                                                       "Parent Relationship": "Outer",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Join Type": "Inner",                                                         +
                                                       "Startup Cost": 0.01,                                                         +
                                                       "Total Cost": 677.18,                                                         +
                                                       "Plan Rows": 387,                                                             +
                                                       "Plan Width": 22,                                                             +
                                                       "Actual Startup Time": 3.626,                                                 +
                                                       "Actual Total Time": 2777.873,                                                +
                                                       "Actual Rows": 1085,                                                          +
                                                       "Actual Loops": 1,                                                            +
                                                       "Inner Unique": false,                                                        +
                                                       "Shared Hit Blocks": 51753,                                                   +
                                                       "Shared Read Blocks": 8662,                                                   +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0,                                                     +
                                                       "Plans": [                                                                    +
                                                         {                                                                           +
                                                           "Node Type": "Nested Loop",                                               +
                                                           "Parent Relationship": "Outer",                                           +
                                                           "Parallel Aware": false,                                                  +
                                                           "Join Type": "Inner",                                                     +
                                                           "Startup Cost": 0.00,                                                     +
                                                           "Total Cost": 615.50,                                                     +
                                                           "Plan Rows": 5826,                                                        +
                                                           "Plan Width": 10,                                                         +
                                                           "Actual Startup Time": 0.185,                                             +
                                                           "Actual Total Time": 2232.918,                                            +
                                                           "Actual Rows": 25591,                                                     +
                                                           "Actual Loops": 1,                                                        +
                                                           "Inner Unique": true,                                                     +
                                                           "Join Filter": "(mi_idx2.info_type_id = it2.id)",                         +
                                                           "Rows Removed by Join Filter": 632704,                                    +
                                                           "Shared Hit Blocks": 3,                                                   +
                                                           "Shared Read Blocks": 8451,                                               +
                                                           "Shared Dirtied Blocks": 0,                                               +
                                                           "Shared Written Blocks": 0,                                               +
                                                           "Local Hit Blocks": 0,                                                    +
                                                           "Local Read Blocks": 0,                                                   +
                                                           "Local Dirtied Blocks": 0,                                                +
                                                           "Local Written Blocks": 0,                                                +
                                                           "Temp Read Blocks": 0,                                                    +
                                                           "Temp Written Blocks": 0,                                                 +
                                                           "Plans": [                                                                +
                                                             {                                                                       +
                                                               "Node Type": "Seq Scan",                                              +
                                                               "Parent Relationship": "Outer",                                       +
                                                               "Parallel Aware": false,                                              +
                                                               "Relation Name": "movie_info_idx",                                    +
                                                               "Alias": "mi_idx2",                                                   +
                                                               "Startup Cost": 0.00,                                                 +
                                                               "Total Cost": 467.71,                                                 +
                                                               "Plan Rows": 658313,                                                  +
                                                               "Plan Width": 14,                                                     +
                                                               "Actual Startup Time": 0.022,                                         +
                                                               "Actual Total Time": 1656.903,                                        +
                                                               "Actual Rows": 658295,                                                +
                                                               "Actual Loops": 1,                                                    +
                                                               "Filter": "(info < '3.0'::text)",                                     +
                                                               "Rows Removed by Filter": 721740,                                     +
                                                               "Shared Hit Blocks": 2,                                               +
                                                               "Shared Read Blocks": 8451,                                           +
                                                               "Shared Dirtied Blocks": 0,                                           +
                                                               "Shared Written Blocks": 0,                                           +
                                                               "Local Hit Blocks": 0,                                                +
                                                               "Local Read Blocks": 0,                                               +
                                                               "Local Dirtied Blocks": 0,                                            +
                                                               "Local Written Blocks": 0,                                            +
                                                               "Temp Read Blocks": 0,                                                +
                                                               "Temp Written Blocks": 0                                              +
                                                             },                                                                      +
                                                             {                                                                       +
                                                               "Node Type": "Materialize",                                           +
                                                               "Parent Relationship": "Inner",                                       +
                                                               "Parallel Aware": false,                                              +
                                                               "Startup Cost": 0.00,                                                 +
                                                               "Total Cost": 0.05,                                                   +
                                                               "Plan Rows": 1,                                                       +
                                                               "Plan Width": 4,                                                      +
                                                               "Actual Startup Time": 0.000,                                         +
                                                               "Actual Total Time": 0.000,                                           +
                                                               "Actual Rows": 1,                                                     +
                                                               "Actual Loops": 658295,                                               +
                                                               "Shared Hit Blocks": 1,                                               +
                                                               "Shared Read Blocks": 0,                                              +
                                                               "Shared Dirtied Blocks": 0,                                           +
                                                               "Shared Written Blocks": 0,                                           +
                                                               "Local Hit Blocks": 0,                                                +
                                                               "Local Read Blocks": 0,                                               +
                                                               "Local Dirtied Blocks": 0,                                            +
                                                               "Local Written Blocks": 0,                                            +
                                                               "Temp Read Blocks": 0,                                                +
                                                               "Temp Written Blocks": 0,                                             +
                                                               "Plans": [                                                            +
                                                                 {                                                                   +
                                                                   "Node Type": "Seq Scan",                                          +
                                                                   "Parent Relationship": "Outer",                                   +
                                                                   "Parallel Aware": false,                                          +
                                                                   "Relation Name": "info_type",                                     +
                                                                   "Alias": "it2",                                                   +
                                                                   "Startup Cost": 0.00,                                             +
                                                                   "Total Cost": 0.05,                                               +
                                                                   "Plan Rows": 1,                                                   +
                                                                   "Plan Width": 4,                                                  +
                                                                   "Actual Startup Time": 0.046,                                     +
                                                                   "Actual Total Time": 0.052,                                       +
                                                                   "Actual Rows": 1,                                                 +
                                                                   "Actual Loops": 1,                                                +
                                                                   "Filter": "((info)::text = 'rating'::text)",                      +
                                                                   "Rows Removed by Filter": 112,                                    +
                                                                   "Shared Hit Blocks": 1,                                           +
                                                                   "Shared Read Blocks": 0,                                          +
                                                                   "Shared Dirtied Blocks": 0,                                       +
                                                                   "Shared Written Blocks": 0,                                       +
                                                                   "Local Hit Blocks": 0,                                            +
                                                                   "Local Read Blocks": 0,                                           +
                                                                   "Local Dirtied Blocks": 0,                                        +
                                                                   "Local Written Blocks": 0,                                        +
                                                                   "Temp Read Blocks": 0,                                            +
                                                                   "Temp Written Blocks": 0                                          +
                                                                 }                                                                   +
                                                               ]                                                                     +
                                                             }                                                                       +
                                                           ]                                                                         +
                                                         },                                                                          +
                                                         {                                                                           +
                                                           "Node Type": "Index Scan",                                                +
                                                           "Parent Relationship": "Inner",                                           +
                                                           "Parallel Aware": false,                                                  +
                                                           "Scan Direction": "Forward",                                              +
                                                           "Index Name": "linked_movie_id_movie_link",                               +
                                                           "Relation Name": "movie_link",                                            +
                                                           "Alias": "ml",                                                            +
                                                           "Startup Cost": 0.01,                                                     +
                                                           "Total Cost": 0.01,                                                       +
                                                           "Plan Rows": 2,                                                           +
                                                           "Plan Width": 12,                                                         +
                                                           "Actual Startup Time": 0.016,                                             +
                                                           "Actual Total Time": 0.020,                                               +
                                                           "Actual Rows": 0,                                                         +
                                                           "Actual Loops": 25591,                                                    +
                                                           "Index Cond": "(linked_movie_id = mi_idx2.movie_id)",                     +
                                                           "Rows Removed by Index Recheck": 0,                                       +
                                                           "Shared Hit Blocks": 51750,                                               +
                                                           "Shared Read Blocks": 211,                                                +
                                                           "Shared Dirtied Blocks": 0,                                               +
                                                           "Shared Written Blocks": 0,                                               +
                                                           "Local Hit Blocks": 0,                                                    +
                                                           "Local Read Blocks": 0,                                                   +
                                                           "Local Dirtied Blocks": 0,                                                +
                                                           "Local Written Blocks": 0,                                                +
                                                           "Temp Read Blocks": 0,                                                    +
                                                           "Temp Written Blocks": 0                                                  +
                                                         }                                                                           +
                                                       ]                                                                             +
                                                     },                                                                              +
                                                     {                                                                               +
                                                       "Node Type": "Index Scan",                                                    +
                                                       "Parent Relationship": "Inner",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Scan Direction": "Forward",                                                  +
                                                       "Index Name": "title_idx_id",                                                 +
                                                       "Relation Name": "title",                                                     +
                                                       "Alias": "t2",                                                                +
                                                       "Startup Cost": 0.01,                                                         +
                                                       "Total Cost": 0.21,                                                           +
                                                       "Plan Rows": 1,                                                               +
                                                       "Plan Width": 25,                                                             +
                                                       "Actual Startup Time": 5.279,                                                 +
                                                       "Actual Total Time": 5.279,                                                   +
                                                       "Actual Rows": 0,                                                             +
                                                       "Actual Loops": 1085,                                                         +
                                                       "Index Cond": "(id = mi_idx2.movie_id)",                                      +
                                                       "Rows Removed by Index Recheck": 0,                                           +
                                                       "Filter": "((production_year >= 2005) AND (production_year <= 2008))",        +
                                                       "Rows Removed by Filter": 1,                                                  +
                                                       "Shared Hit Blocks": 3571,                                                    +
                                                       "Shared Read Blocks": 770,                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0                                                      +
                                                     }                                                                               +
                                                   ]                                                                                 +
                                                 },                                                                                  +
                                                 {                                                                                   +
                                                   "Node Type": "Materialize",                                                       +
                                                   "Parent Relationship": "Inner",                                                   +
                                                   "Parallel Aware": false,                                                          +
                                                   "Startup Cost": 0.00,                                                             +
                                                   "Total Cost": 0.04,                                                               +
                                                   "Plan Rows": 3,                                                                   +
                                                   "Plan Width": 4,                                                                  +
                                                   "Actual Startup Time": 0.001,                                                     +
                                                   "Actual Total Time": 0.001,                                                       +
                                                   "Actual Rows": 2,                                                                 +
                                                   "Actual Loops": 353,                                                              +
                                                   "Shared Hit Blocks": 1,                                                           +
                                                   "Shared Read Blocks": 0,                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                       +
                                                   "Shared Written Blocks": 0,                                                       +
                                                   "Local Hit Blocks": 0,                                                            +
                                                   "Local Read Blocks": 0,                                                           +
                                                   "Local Dirtied Blocks": 0,                                                        +
                                                   "Local Written Blocks": 0,                                                        +
                                                   "Temp Read Blocks": 0,                                                            +
                                                   "Temp Written Blocks": 0,                                                         +
                                                   "Plans": [                                                                        +
                                                     {                                                                               +
                                                       "Node Type": "Seq Scan",                                                      +
                                                       "Parent Relationship": "Outer",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Relation Name": "link_type",                                                 +
                                                       "Alias": "lt",                                                                +
                                                       "Startup Cost": 0.00,                                                         +
                                                       "Total Cost": 0.03,                                                           +
                                                       "Plan Rows": 3,                                                               +
                                                       "Plan Width": 4,                                                              +
                                                       "Actual Startup Time": 0.021,                                                 +
                                                       "Actual Total Time": 0.049,                                                   +
                                                       "Actual Rows": 2,                                                             +
                                                       "Actual Loops": 1,                                                            +
                                                       "Filter": "((link)::text = ANY ('{sequel,follows,\"followed by\"}'::text[]))",+
                                                       "Rows Removed by Filter": 16,                                                 +
                                                       "Shared Hit Blocks": 1,                                                       +
                                                       "Shared Read Blocks": 0,                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0                                                      +
                                                     }                                                                               +
                                                   ]                                                                                 +
                                                 }                                                                                   +
                                               ]                                                                                     +
                                             },                                                                                      +
                                             {                                                                                       +
                                               "Node Type": "Index Scan",                                                            +
                                               "Parent Relationship": "Inner",                                                       +
                                               "Parallel Aware": false,                                                              +
                                               "Scan Direction": "Forward",                                                          +
                                               "Index Name": "movie_id_movie_companies",                                             +
                                               "Relation Name": "movie_companies",                                                   +
                                               "Alias": "mc2",                                                                       +
                                               "Startup Cost": 0.01,                                                                 +
                                               "Total Cost": 0.13,                                                                   +
                                               "Plan Rows": 2,                                                                       +
                                               "Plan Width": 8,                                                                      +
                                               "Actual Startup Time": 16.542,                                                        +
                                               "Actual Total Time": 17.534,                                                          +
                                               "Actual Rows": 2,                                                                     +
                                               "Actual Loops": 6,                                                                    +
                                               "Index Cond": "(movie_id = mi_idx2.movie_id)",                                        +
                                               "Rows Removed by Index Recheck": 0,                                                   +
                                               "Shared Hit Blocks": 15,                                                              +
                                               "Shared Read Blocks": 12,                                                             +
                                               "Shared Dirtied Blocks": 0,                                                           +
                                               "Shared Written Blocks": 0,                                                           +
                                               "Local Hit Blocks": 0,                                                                +
                                               "Local Read Blocks": 0,                                                               +
                                               "Local Dirtied Blocks": 0,                                                            +
                                               "Local Written Blocks": 0,                                                            +
                                               "Temp Read Blocks": 0,                                                                +
                                               "Temp Written Blocks": 0                                                              +
                                             }                                                                                       +
                                           ]                                                                                         +
                                         },                                                                                          +
                                         {                                                                                           +
                                           "Node Type": "Index Scan",                                                                +
                                           "Parent Relationship": "Inner",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Scan Direction": "Forward",                                                              +
                                           "Index Name": "company_name_pkey",                                                        +
                                           "Relation Name": "company_name",                                                          +
                                           "Alias": "cn2",                                                                           +
                                           "Startup Cost": 0.01,                                                                     +
                                           "Total Cost": 0.02,                                                                       +
                                           "Plan Rows": 1,                                                                           +
                                           "Plan Width": 23,                                                                         +
                                           "Actual Startup Time": 15.775,                                                            +
                                           "Actual Total Time": 15.775,                                                              +
                                           "Actual Rows": 1,                                                                         +
                                           "Actual Loops": 11,                                                                       +
                                           "Index Cond": "(id = mc2.company_id)",                                                    +
                                           "Rows Removed by Index Recheck": 0,                                                       +
                                           "Shared Hit Blocks": 32,                                                                  +
                                           "Shared Read Blocks": 12,                                                                 +
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
                                       "Node Type": "Materialize",                                                                   +
                                       "Parent Relationship": "Inner",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Startup Cost": 0.00,                                                                         +
                                       "Total Cost": 0.05,                                                                           +
                                       "Plan Rows": 1,                                                                               +
                                       "Plan Width": 4,                                                                              +
                                       "Actual Startup Time": 0.007,                                                                 +
                                       "Actual Total Time": 0.009,                                                                   +
                                       "Actual Rows": 1,                                                                             +
                                       "Actual Loops": 11,                                                                           +
                                       "Shared Hit Blocks": 1,                                                                       +
                                       "Shared Read Blocks": 0,                                                                      +
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
                                           "Node Type": "Seq Scan",                                                                  +
                                           "Parent Relationship": "Outer",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Relation Name": "info_type",                                                             +
                                           "Alias": "it1",                                                                           +
                                           "Startup Cost": 0.00,                                                                     +
                                           "Total Cost": 0.05,                                                                       +
                                           "Plan Rows": 1,                                                                           +
                                           "Plan Width": 4,                                                                          +
                                           "Actual Startup Time": 0.053,                                                             +
                                           "Actual Total Time": 0.063,                                                               +
                                           "Actual Rows": 1,                                                                         +
                                           "Actual Loops": 1,                                                                        +
                                           "Filter": "((info)::text = 'rating'::text)",                                              +
                                           "Rows Removed by Filter": 112,                                                            +
                                           "Shared Hit Blocks": 1,                                                                   +
                                           "Shared Read Blocks": 0,                                                                  +
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
                                     }                                                                                               +
                                   ]                                                                                                 +
                                 },                                                                                                  +
                                 {                                                                                                   +
                                   "Node Type": "Index Scan",                                                                        +
                                   "Parent Relationship": "Inner",                                                                   +
                                   "Parallel Aware": false,                                                                          +
                                   "Scan Direction": "Forward",                                                                      +
                                   "Index Name": "title_idx_id",                                                                     +
                                   "Relation Name": "title",                                                                         +
                                   "Alias": "t1",                                                                                    +
                                   "Startup Cost": 0.01,                                                                             +
                                   "Total Cost": 2.88,                                                                               +
                                   "Plan Rows": 1,                                                                                   +
                                   "Plan Width": 25,                                                                                 +
                                   "Actual Startup Time": 14.568,                                                                    +
                                   "Actual Total Time": 14.568,                                                                      +
                                   "Actual Rows": 1,                                                                                 +
                                   "Actual Loops": 11,                                                                               +
                                   "Index Cond": "(id = ml.movie_id)",                                                               +
                                   "Rows Removed by Index Recheck": 0,                                                               +
                                   "Shared Hit Blocks": 34,                                                                          +
                                   "Shared Read Blocks": 10,                                                                         +
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
                               "Index Name": "movie_id_movie_companies",                                                             +
                               "Relation Name": "movie_companies",                                                                   +
                               "Alias": "mc1",                                                                                       +
                               "Startup Cost": 0.01,                                                                                 +
                               "Total Cost": 0.05,                                                                                   +
                               "Plan Rows": 2,                                                                                       +
                               "Plan Width": 8,                                                                                      +
                               "Actual Startup Time": 10.349,                                                                        +
                               "Actual Total Time": 11.629,                                                                          +
                               "Actual Rows": 3,                                                                                     +
                               "Actual Loops": 11,                                                                                   +
                               "Index Cond": "(movie_id = t1.id)",                                                                   +
                               "Rows Removed by Index Recheck": 0,                                                                   +
                               "Shared Hit Blocks": 38,                                                                              +
                               "Shared Read Blocks": 14,                                                                             +
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
                           "Alias": "mi_idx1",                                                                                       +
                           "Startup Cost": 0.01,                                                                                     +
                           "Total Cost": 0.03,                                                                                       +
                           "Plan Rows": 3,                                                                                           +
                           "Plan Width": 14,                                                                                         +
                           "Actual Startup Time": 2.086,                                                                             +
                           "Actual Total Time": 2.088,                                                                               +
                           "Actual Rows": 3,                                                                                         +
                           "Actual Loops": 29,                                                                                       +
                           "Index Cond": "(movie_id = mc1.movie_id)",                                                                +
                           "Rows Removed by Index Recheck": 0,                                                                       +
                           "Shared Hit Blocks": 109,                                                                                 +
                           "Shared Read Blocks": 6,                                                                                  +
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
                       "Total Cost": 0.03,                                                                                           +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 4,                                                                                              +
                       "Actual Startup Time": 0.002,                                                                                 +
                       "Actual Total Time": 0.002,                                                                                   +
                       "Actual Rows": 1,                                                                                             +
                       "Actual Loops": 28,                                                                                           +
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
                           "Relation Name": "kind_type",                                                                             +
                           "Alias": "kt2",                                                                                           +
                           "Startup Cost": 0.00,                                                                                     +
                           "Total Cost": 0.03,                                                                                       +
                           "Plan Rows": 1,                                                                                           +
                           "Plan Width": 4,                                                                                          +
                           "Actual Startup Time": 0.016,                                                                             +
                           "Actual Total Time": 0.016,                                                                               +
                           "Actual Rows": 1,                                                                                         +
                           "Actual Loops": 1,                                                                                        +
                           "Filter": "((kind)::text = 'tv series'::text)",                                                           +
                           "Rows Removed by Filter": 1,                                                                              +
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
                   "Index Name": "company_name_pkey",                                                                                +
                   "Relation Name": "company_name",                                                                                  +
                   "Alias": "cn1",                                                                                                   +
                   "Startup Cost": 0.01,                                                                                             +
                   "Total Cost": 0.02,                                                                                               +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 23,                                                                                                 +
                   "Actual Startup Time": 8.810,                                                                                     +
                   "Actual Total Time": 8.810,                                                                                       +
                   "Actual Rows": 0,                                                                                                 +
                   "Actual Loops": 28,                                                                                               +
                   "Index Cond": "(id = mc1.company_id)",                                                                            +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                +
                   "Rows Removed by Filter": 1,                                                                                      +
                   "Shared Hit Blocks": 95,                                                                                          +
                   "Shared Read Blocks": 17,                                                                                         +
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
               "Total Cost": 0.03,                                                                                                   +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 4,                                                                                                      +
               "Actual Startup Time": 0.004,                                                                                         +
               "Actual Total Time": 0.004,                                                                                           +
               "Actual Rows": 1,                                                                                                     +
               "Actual Loops": 8,                                                                                                    +
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
                   "Relation Name": "kind_type",                                                                                     +
                   "Alias": "kt1",                                                                                                   +
                   "Startup Cost": 0.00,                                                                                             +
                   "Total Cost": 0.03,                                                                                               +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 4,                                                                                                  +
                   "Actual Startup Time": 0.021,                                                                                     +
                   "Actual Total Time": 0.021,                                                                                       +
                   "Actual Rows": 1,                                                                                                 +
                   "Actual Loops": 1,                                                                                                +
                   "Filter": "((kind)::text = 'tv series'::text)",                                                                   +
                   "Rows Removed by Filter": 1,                                                                                      +
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
     },                                                                                                                              +
     "Planning Time": 6360.210,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 9407.240                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)

