                                            QUERY PLAN                                             
---------------------------------------------------------------------------------------------------
 [                                                                                                +
   {                                                                                              +
     "Plan": {                                                                                    +
       "Node Type": "Aggregate",                                                                  +
       "Strategy": "Plain",                                                                       +
       "Partial Mode": "Simple",                                                                  +
       "Parallel Aware": false,                                                                   +
       "Startup Cost": 7468.47,                                                                   +
       "Total Cost": 7468.47,                                                                     +
       "Plan Rows": 1,                                                                            +
       "Plan Width": 64,                                                                          +
       "Actual Startup Time": 39636.318,                                                          +
       "Actual Total Time": 39636.319,                                                            +
       "Actual Rows": 1,                                                                          +
       "Actual Loops": 1,                                                                         +
       "Shared Hit Blocks": 91111,                                                                +
       "Shared Read Blocks": 167063,                                                              +
       "Shared Dirtied Blocks": 0,                                                                +
       "Shared Written Blocks": 0,                                                                +
       "Local Hit Blocks": 0,                                                                     +
       "Local Read Blocks": 0,                                                                    +
       "Local Dirtied Blocks": 0,                                                                 +
       "Local Written Blocks": 0,                                                                 +
       "Temp Read Blocks": 0,                                                                     +
       "Temp Written Blocks": 0,                                                                  +
       "Plans": [                                                                                 +
         {                                                                                        +
           "Node Type": "Nested Loop",                                                            +
           "Parent Relationship": "Outer",                                                        +
           "Parallel Aware": false,                                                               +
           "Join Type": "Inner",                                                                  +
           "Startup Cost": 0.08,                                                                  +
           "Total Cost": 7468.40,                                                                 +
           "Plan Rows": 414,                                                                      +
           "Plan Width": 38,                                                                      +
           "Actual Startup Time": 1672.622,                                                       +
           "Actual Total Time": 39612.446,                                                        +
           "Actual Rows": 11347,                                                                  +
           "Actual Loops": 1,                                                                     +
           "Inner Unique": true,                                                                  +
           "Shared Hit Blocks": 91111,                                                            +
           "Shared Read Blocks": 167063,                                                          +
           "Shared Dirtied Blocks": 0,                                                            +
           "Shared Written Blocks": 0,                                                            +
           "Local Hit Blocks": 0,                                                                 +
           "Local Read Blocks": 0,                                                                +
           "Local Dirtied Blocks": 0,                                                             +
           "Local Written Blocks": 0,                                                             +
           "Temp Read Blocks": 0,                                                                 +
           "Temp Written Blocks": 0,                                                              +
           "Plans": [                                                                             +
             {                                                                                    +
               "Node Type": "Nested Loop",                                                        +
               "Parent Relationship": "Outer",                                                    +
               "Parallel Aware": false,                                                           +
               "Join Type": "Inner",                                                              +
               "Startup Cost": 0.07,                                                              +
               "Total Cost": 7462.52,                                                             +
               "Plan Rows": 414,                                                                  +
               "Plan Width": 42,                                                                  +
               "Actual Startup Time": 1652.740,                                                   +
               "Actual Total Time": 36693.557,                                                    +
               "Actual Rows": 11347,                                                              +
               "Actual Loops": 1,                                                                 +
               "Inner Unique": false,                                                             +
               "Join Filter": "(t.id = mk.movie_id)",                                             +
               "Rows Removed by Join Filter": 0,                                                  +
               "Shared Hit Blocks": 46442,                                                        +
               "Shared Read Blocks": 166322,                                                      +
               "Shared Dirtied Blocks": 0,                                                        +
               "Shared Written Blocks": 0,                                                        +
               "Local Hit Blocks": 0,                                                             +
               "Local Read Blocks": 0,                                                            +
               "Local Dirtied Blocks": 0,                                                         +
               "Local Written Blocks": 0,                                                         +
               "Temp Read Blocks": 0,                                                             +
               "Temp Written Blocks": 0,                                                          +
               "Plans": [                                                                         +
                 {                                                                                +
                   "Node Type": "Nested Loop",                                                    +
                   "Parent Relationship": "Outer",                                                +
                   "Parallel Aware": false,                                                       +
                   "Join Type": "Inner",                                                          +
                   "Startup Cost": 0.05,                                                          +
                   "Total Cost": 7460.71,                                                         +
                   "Plan Rows": 30,                                                               +
                   "Plan Width": 54,                                                              +
                   "Actual Startup Time": 1617.636,                                               +
                   "Actual Total Time": 33025.092,                                                +
                   "Actual Rows": 875,                                                            +
                   "Actual Loops": 1,                                                             +
                   "Inner Unique": true,                                                          +
                   "Join Filter": "(mc.company_type_id = ct.id)",                                 +
                   "Rows Removed by Join Filter": 382,                                            +
                   "Shared Hit Blocks": 43506,                                                    +
                   "Shared Read Blocks": 165890,                                                  +
                   "Shared Dirtied Blocks": 0,                                                    +
                   "Shared Written Blocks": 0,                                                    +
                   "Local Hit Blocks": 0,                                                         +
                   "Local Read Blocks": 0,                                                        +
                   "Local Dirtied Blocks": 0,                                                     +
                   "Local Written Blocks": 0,                                                     +
                   "Temp Read Blocks": 0,                                                         +
                   "Temp Written Blocks": 0,                                                      +
                   "Plans": [                                                                     +
                     {                                                                            +
                       "Node Type": "Nested Loop",                                                +
                       "Parent Relationship": "Outer",                                            +
                       "Parallel Aware": false,                                                   +
                       "Join Type": "Inner",                                                      +
                       "Startup Cost": 0.05,                                                      +
                       "Total Cost": 7460.66,                                                     +
                       "Plan Rows": 30,                                                           +
                       "Plan Width": 58,                                                          +
                       "Actual Startup Time": 1617.605,                                           +
                       "Actual Total Time": 33021.949,                                            +
                       "Actual Rows": 875,                                                        +
                       "Actual Loops": 1,                                                         +
                       "Inner Unique": true,                                                      +
                       "Join Filter": "(at.movie_id = t.id)",                                     +
                       "Rows Removed by Join Filter": 0,                                          +
                       "Shared Hit Blocks": 43505,                                                +
                       "Shared Read Blocks": 165890,                                              +
                       "Shared Dirtied Blocks": 0,                                                +
                       "Shared Written Blocks": 0,                                                +
                       "Local Hit Blocks": 0,                                                     +
                       "Local Read Blocks": 0,                                                    +
                       "Local Dirtied Blocks": 0,                                                 +
                       "Local Written Blocks": 0,                                                 +
                       "Temp Read Blocks": 0,                                                     +
                       "Temp Written Blocks": 0,                                                  +
                       "Plans": [                                                                 +
                         {                                                                        +
                           "Node Type": "Nested Loop",                                            +
                           "Parent Relationship": "Outer",                                        +
                           "Parallel Aware": false,                                               +
                           "Join Type": "Inner",                                                  +
                           "Startup Cost": 0.04,                                                  +
                           "Total Cost": 7457.84,                                                 +
                           "Plan Rows": 44,                                                       +
                           "Plan Width": 37,                                                      +
                           "Actual Startup Time": 1574.281,                                       +
                           "Actual Total Time": 27660.427,                                        +
                           "Actual Rows": 896,                                                    +
                           "Actual Loops": 1,                                                     +
                           "Inner Unique": true,                                                  +
                           "Shared Hit Blocks": 40403,                                            +
                           "Shared Read Blocks": 165406,                                          +
                           "Shared Dirtied Blocks": 0,                                            +
                           "Shared Written Blocks": 0,                                            +
                           "Local Hit Blocks": 0,                                                 +
                           "Local Read Blocks": 0,                                                +
                           "Local Dirtied Blocks": 0,                                             +
                           "Local Written Blocks": 0,                                             +
                           "Temp Read Blocks": 0,                                                 +
                           "Temp Written Blocks": 0,                                              +
                           "Plans": [                                                             +
                             {                                                                    +
                               "Node Type": "Nested Loop",                                        +
                               "Parent Relationship": "Outer",                                    +
                               "Parallel Aware": false,                                           +
                               "Join Type": "Inner",                                              +
                               "Startup Cost": 0.03,                                              +
                               "Total Cost": 7455.66,                                             +
                               "Plan Rows": 122,                                                  +
                               "Plan Width": 41,                                                  +
                               "Actual Startup Time": 1569.427,                                   +
                               "Actual Total Time": 18512.776,                                    +
                               "Actual Rows": 2130,                                               +
                               "Actual Loops": 1,                                                 +
                               "Inner Unique": false,                                             +
                               "Shared Hit Blocks": 32904,                                        +
                               "Shared Read Blocks": 164373,                                      +
                               "Shared Dirtied Blocks": 0,                                        +
                               "Shared Written Blocks": 0,                                        +
                               "Local Hit Blocks": 0,                                             +
                               "Local Read Blocks": 0,                                            +
                               "Local Dirtied Blocks": 0,                                         +
                               "Local Written Blocks": 0,                                         +
                               "Temp Read Blocks": 0,                                             +
                               "Temp Written Blocks": 0,                                          +
                               "Plans": [                                                         +
                                 {                                                                +
                                   "Node Type": "Nested Loop",                                    +
                                   "Parent Relationship": "Outer",                                +
                                   "Parallel Aware": false,                                       +
                                   "Join Type": "Inner",                                          +
                                   "Startup Cost": 0.01,                                          +
                                   "Total Cost": 7446.55,                                         +
                                   "Plan Rows": 39,                                               +
                                   "Plan Width": 29,                                              +
                                   "Actual Startup Time": 1533.578,                               +
                                   "Actual Total Time": 13446.755,                                +
                                   "Actual Rows": 591,                                            +
                                   "Actual Loops": 1,                                             +
                                   "Inner Unique": false,                                         +
                                   "Shared Hit Blocks": 31175,                                    +
                                   "Shared Read Blocks": 163369,                                  +
                                   "Shared Dirtied Blocks": 0,                                    +
                                   "Shared Written Blocks": 0,                                    +
                                   "Local Hit Blocks": 0,                                         +
                                   "Local Read Blocks": 0,                                        +
                                   "Local Dirtied Blocks": 0,                                     +
                                   "Local Written Blocks": 0,                                     +
                                   "Temp Read Blocks": 0,                                         +
                                   "Temp Written Blocks": 0,                                      +
                                   "Plans": [                                                     +
                                     {                                                            +
                                       "Node Type": "Nested Loop",                                +
                                       "Parent Relationship": "Outer",                            +
                                       "Parallel Aware": false,                                   +
                                       "Join Type": "Inner",                                      +
                                       "Startup Cost": 0.00,                                      +
                                       "Total Cost": 7258.22,                                     +
                                       "Plan Rows": 98,                                           +
                                       "Plan Width": 4,                                           +
                                       "Actual Startup Time": 1522.552,                           +
                                       "Actual Total Time": 10239.738,                            +
                                       "Actual Rows": 10679,                                      +
                                       "Actual Loops": 1,                                         +
                                       "Inner Unique": true,                                      +
                                       "Join Filter": "(it1.id = mi.info_type_id)",               +
                                       "Rows Removed by Join Filter": 131,                        +
                                       "Shared Hit Blocks": 3,                                    +
                                       "Shared Read Blocks": 161890,                              +
                                       "Shared Dirtied Blocks": 0,                                +
                                       "Shared Written Blocks": 0,                                +
                                       "Local Hit Blocks": 0,                                     +
                                       "Local Read Blocks": 0,                                    +
                                       "Local Dirtied Blocks": 0,                                 +
                                       "Local Written Blocks": 0,                                 +
                                       "Temp Read Blocks": 0,                                     +
                                       "Temp Written Blocks": 0,                                  +
                                       "Plans": [                                                 +
                                         {                                                        +
                                           "Node Type": "Seq Scan",                               +
                                           "Parent Relationship": "Outer",                        +
                                           "Parallel Aware": false,                               +
                                           "Relation Name": "movie_info",                         +
                                           "Alias": "mi",                                         +
                                           "Startup Cost": 0.00,                                  +
                                           "Total Cost": 7255.68,                                 +
                                           "Plan Rows": 11124,                                    +
                                           "Plan Width": 8,                                       +
                                           "Actual Startup Time": 127.334,                        +
                                           "Actual Total Time": 10226.630,                        +
                                           "Actual Rows": 10810,                                  +
                                           "Actual Loops": 1,                                     +
                                           "Filter": "(note ~~ '%internet%'::text)",              +
                                           "Rows Removed by Filter": 14824910,                    +
                                           "Shared Hit Blocks": 2,                                +
                                           "Shared Read Blocks": 161890,                          +
                                           "Shared Dirtied Blocks": 0,                            +
                                           "Shared Written Blocks": 0,                            +
                                           "Local Hit Blocks": 0,                                 +
                                           "Local Read Blocks": 0,                                +
                                           "Local Dirtied Blocks": 0,                             +
                                           "Local Written Blocks": 0,                             +
                                           "Temp Read Blocks": 0,                                 +
                                           "Temp Written Blocks": 0                               +
                                         },                                                       +
                                         {                                                        +
                                           "Node Type": "Materialize",                            +
                                           "Parent Relationship": "Inner",                        +
                                           "Parallel Aware": false,                               +
                                           "Startup Cost": 0.00,                                  +
                                           "Total Cost": 0.05,                                    +
                                           "Plan Rows": 1,                                        +
                                           "Plan Width": 4,                                       +
                                           "Actual Startup Time": 0.000,                          +
                                           "Actual Total Time": 0.000,                            +
                                           "Actual Rows": 1,                                      +
                                           "Actual Loops": 10810,                                 +
                                           "Shared Hit Blocks": 1,                                +
                                           "Shared Read Blocks": 0,                               +
                                           "Shared Dirtied Blocks": 0,                            +
                                           "Shared Written Blocks": 0,                            +
                                           "Local Hit Blocks": 0,                                 +
                                           "Local Read Blocks": 0,                                +
                                           "Local Dirtied Blocks": 0,                             +
                                           "Local Written Blocks": 0,                             +
                                           "Temp Read Blocks": 0,                                 +
                                           "Temp Written Blocks": 0,                              +
                                           "Plans": [                                             +
                                             {                                                    +
                                               "Node Type": "Seq Scan",                           +
                                               "Parent Relationship": "Outer",                    +
                                               "Parallel Aware": false,                           +
                                               "Relation Name": "info_type",                      +
                                               "Alias": "it1",                                    +
                                               "Startup Cost": 0.00,                              +
                                               "Total Cost": 0.05,                                +
                                               "Plan Rows": 1,                                    +
                                               "Plan Width": 4,                                   +
                                               "Actual Startup Time": 0.012,                      +
                                               "Actual Total Time": 0.021,                        +
                                               "Actual Rows": 1,                                  +
                                               "Actual Loops": 1,                                 +
                                               "Filter": "((info)::text = 'release dates'::text)",+
                                               "Rows Removed by Filter": 112,                     +
                                               "Shared Hit Blocks": 1,                            +
                                               "Shared Read Blocks": 0,                           +
                                               "Shared Dirtied Blocks": 0,                        +
                                               "Shared Written Blocks": 0,                        +
                                               "Local Hit Blocks": 0,                             +
                                               "Local Read Blocks": 0,                            +
                                               "Local Dirtied Blocks": 0,                         +
                                               "Local Written Blocks": 0,                         +
                                               "Temp Read Blocks": 0,                             +
                                               "Temp Written Blocks": 0                           +
                                             }                                                    +
                                           ]                                                      +
                                         }                                                        +
                                       ]                                                          +
                                     },                                                           +
                                     {                                                            +
                                       "Node Type": "Index Scan",                                 +
                                       "Parent Relationship": "Inner",                            +
                                       "Parallel Aware": false,                                   +
                                       "Scan Direction": "Forward",                               +
                                       "Index Name": "movie_id_aka_title",                        +
                                       "Relation Name": "aka_title",                              +
                                       "Alias": "at",                                             +
                                       "Startup Cost": 0.01,                                      +
                                       "Total Cost": 1.92,                                        +
                                       "Plan Rows": 2,                                            +
                                       "Plan Width": 25,                                          +
                                       "Actual Startup Time": 0.238,                              +
                                       "Actual Total Time": 0.299,                                +
                                       "Actual Rows": 0,                                          +
                                       "Actual Loops": 10679,                                     +
                                       "Index Cond": "(movie_id = mi.movie_id)",                  +
                                       "Rows Removed by Index Recheck": 0,                        +
                                       "Shared Hit Blocks": 31172,                                +
                                       "Shared Read Blocks": 1479,                                +
                                       "Shared Dirtied Blocks": 0,                                +
                                       "Shared Written Blocks": 0,                                +
                                       "Local Hit Blocks": 0,                                     +
                                       "Local Read Blocks": 0,                                    +
                                       "Local Dirtied Blocks": 0,                                 +
                                       "Local Written Blocks": 0,                                 +
                                       "Temp Read Blocks": 0,                                     +
                                       "Temp Written Blocks": 0                                   +
                                     }                                                            +
                                   ]                                                              +
                                 },                                                               +
                                 {                                                                +
                                   "Node Type": "Index Scan",                                     +
                                   "Parent Relationship": "Inner",                                +
                                   "Parallel Aware": false,                                       +
                                   "Scan Direction": "Forward",                                   +
                                   "Index Name": "movie_id_movie_companies",                      +
                                   "Relation Name": "movie_companies",                            +
                                   "Alias": "mc",                                                 +
                                   "Startup Cost": 0.01,                                          +
                                   "Total Cost": 0.23,                                            +
                                   "Plan Rows": 2,                                                +
                                   "Plan Width": 12,                                              +
                                   "Actual Startup Time": 6.934,                                  +
                                   "Actual Total Time": 8.562,                                    +
                                   "Actual Rows": 4,                                              +
                                   "Actual Loops": 591,                                           +
                                   "Index Cond": "(movie_id = at.movie_id)",                      +
                                   "Rows Removed by Index Recheck": 0,                            +
                                   "Shared Hit Blocks": 1729,                                     +
                                   "Shared Read Blocks": 1004,                                    +
                                   "Shared Dirtied Blocks": 0,                                    +
                                   "Shared Written Blocks": 0,                                    +
                                   "Local Hit Blocks": 0,                                         +
                                   "Local Read Blocks": 0,                                        +
                                   "Local Dirtied Blocks": 0,                                     +
                                   "Local Written Blocks": 0,                                     +
                                   "Temp Read Blocks": 0,                                         +
                                   "Temp Written Blocks": 0                                       +
                                 }                                                                +
                               ]                                                                  +
                             },                                                                   +
                             {                                                                    +
                               "Node Type": "Index Scan",                                         +
                               "Parent Relationship": "Inner",                                    +
                               "Parallel Aware": false,                                           +
                               "Scan Direction": "Forward",                                       +
                               "Index Name": "company_name_pkey",                                 +
                               "Relation Name": "company_name",                                   +
                               "Alias": "cn",                                                     +
                               "Startup Cost": 0.01,                                              +
                               "Total Cost": 0.02,                                                +
                               "Plan Rows": 1,                                                    +
                               "Plan Width": 4,                                                   +
                               "Actual Startup Time": 4.291,                                      +
                               "Actual Total Time": 4.291,                                        +
                               "Actual Rows": 0,                                                  +
                               "Actual Loops": 2130,                                              +
                               "Index Cond": "(id = mc.company_id)",                              +
                               "Rows Removed by Index Recheck": 0,                                +
                               "Filter": "((country_code)::text = '[us]'::text)",                 +
                               "Rows Removed by Filter": 1,                                       +
                               "Shared Hit Blocks": 7499,                                         +
                               "Shared Read Blocks": 1033,                                        +
                               "Shared Dirtied Blocks": 0,                                        +
                               "Shared Written Blocks": 0,                                        +
                               "Local Hit Blocks": 0,                                             +
                               "Local Read Blocks": 0,                                            +
                               "Local Dirtied Blocks": 0,                                         +
                               "Local Written Blocks": 0,                                         +
                               "Temp Read Blocks": 0,                                             +
                               "Temp Written Blocks": 0                                           +
                             }                                                                    +
                           ]                                                                      +
                         },                                                                       +
                         {                                                                        +
                           "Node Type": "Index Scan",                                             +
                           "Parent Relationship": "Inner",                                        +
                           "Parallel Aware": false,                                               +
                           "Scan Direction": "Forward",                                           +
                           "Index Name": "title_idx_id",                                          +
                           "Relation Name": "title",                                              +
                           "Alias": "t",                                                          +
                           "Startup Cost": 0.01,                                                  +
                           "Total Cost": 0.06,                                                    +
                           "Plan Rows": 1,                                                        +
                           "Plan Width": 21,                                                      +
                           "Actual Startup Time": 5.979,                                          +
                           "Actual Total Time": 5.979,                                            +
                           "Actual Rows": 1,                                                      +
                           "Actual Loops": 896,                                                   +
                           "Index Cond": "(id = mc.movie_id)",                                    +
                           "Rows Removed by Index Recheck": 0,                                    +
                           "Filter": "(production_year > 1990)",                                  +
                           "Rows Removed by Filter": 0,                                           +
                           "Shared Hit Blocks": 3102,                                             +
                           "Shared Read Blocks": 484,                                             +
                           "Shared Dirtied Blocks": 0,                                            +
                           "Shared Written Blocks": 0,                                            +
                           "Local Hit Blocks": 0,                                                 +
                           "Local Read Blocks": 0,                                                +
                           "Local Dirtied Blocks": 0,                                             +
                           "Local Written Blocks": 0,                                             +
                           "Temp Read Blocks": 0,                                                 +
                           "Temp Written Blocks": 0                                               +
                         }                                                                        +
                       ]                                                                          +
                     },                                                                           +
                     {                                                                            +
                       "Node Type": "Materialize",                                                +
                       "Parent Relationship": "Inner",                                            +
                       "Parallel Aware": false,                                                   +
                       "Startup Cost": 0.00,                                                      +
                       "Total Cost": 0.03,                                                        +
                       "Plan Rows": 4,                                                            +
                       "Plan Width": 4,                                                           +
                       "Actual Startup Time": 0.001,                                              +
                       "Actual Total Time": 0.001,                                                +
                       "Actual Rows": 1,                                                          +
                       "Actual Loops": 875,                                                       +
                       "Shared Hit Blocks": 1,                                                    +
                       "Shared Read Blocks": 0,                                                   +
                       "Shared Dirtied Blocks": 0,                                                +
                       "Shared Written Blocks": 0,                                                +
                       "Local Hit Blocks": 0,                                                     +
                       "Local Read Blocks": 0,                                                    +
                       "Local Dirtied Blocks": 0,                                                 +
                       "Local Written Blocks": 0,                                                 +
                       "Temp Read Blocks": 0,                                                     +
                       "Temp Written Blocks": 0,                                                  +
                       "Plans": [                                                                 +
                         {                                                                        +
                           "Node Type": "Seq Scan",                                               +
                           "Parent Relationship": "Outer",                                        +
                           "Parallel Aware": false,                                               +
                           "Relation Name": "company_type",                                       +
                           "Alias": "ct",                                                         +
                           "Startup Cost": 0.00,                                                  +
                           "Total Cost": 0.03,                                                    +
                           "Plan Rows": 4,                                                        +
                           "Plan Width": 4,                                                       +
                           "Actual Startup Time": 0.014,                                          +
                           "Actual Total Time": 0.016,                                            +
                           "Actual Rows": 2,                                                      +
                           "Actual Loops": 1,                                                     +
                           "Shared Hit Blocks": 1,                                                +
                           "Shared Read Blocks": 0,                                               +
                           "Shared Dirtied Blocks": 0,                                            +
                           "Shared Written Blocks": 0,                                            +
                           "Local Hit Blocks": 0,                                                 +
                           "Local Read Blocks": 0,                                                +
                           "Local Dirtied Blocks": 0,                                             +
                           "Local Written Blocks": 0,                                             +
                           "Temp Read Blocks": 0,                                                 +
                           "Temp Written Blocks": 0                                               +
                         }                                                                        +
                       ]                                                                          +
                     }                                                                            +
                   ]                                                                              +
                 },                                                                               +
                 {                                                                                +
                   "Node Type": "Index Scan",                                                     +
                   "Parent Relationship": "Inner",                                                +
                   "Parallel Aware": false,                                                       +
                   "Scan Direction": "Forward",                                                   +
                   "Index Name": "movie_id_movie_keyword",                                        +
                   "Relation Name": "movie_keyword",                                              +
                   "Alias": "mk",                                                                 +
                   "Startup Cost": 0.01,                                                          +
                   "Total Cost": 0.06,                                                            +
                   "Plan Rows": 11,                                                               +
                   "Plan Width": 8,                                                               +
                   "Actual Startup Time": 4.167,                                                  +
                   "Actual Total Time": 4.178,                                                    +
                   "Actual Rows": 13,                                                             +
                   "Actual Loops": 875,                                                           +
                   "Index Cond": "(movie_id = mc.movie_id)",                                      +
                   "Rows Removed by Index Recheck": 0,                                            +
                   "Shared Hit Blocks": 2936,                                                     +
                   "Shared Read Blocks": 432,                                                     +
                   "Shared Dirtied Blocks": 0,                                                    +
                   "Shared Written Blocks": 0,                                                    +
                   "Local Hit Blocks": 0,                                                         +
                   "Local Read Blocks": 0,                                                        +
                   "Local Dirtied Blocks": 0,                                                     +
                   "Local Written Blocks": 0,                                                     +
                   "Temp Read Blocks": 0,                                                         +
                   "Temp Written Blocks": 0                                                       +
                 }                                                                                +
               ]                                                                                  +
             },                                                                                   +
             {                                                                                    +
               "Node Type": "Index Scan",                                                         +
               "Parent Relationship": "Inner",                                                    +
               "Parallel Aware": false,                                                           +
               "Scan Direction": "Forward",                                                       +
               "Index Name": "keyword_pkey",                                                      +
               "Relation Name": "keyword",                                                        +
               "Alias": "k",                                                                      +
               "Startup Cost": 0.01,                                                              +
               "Total Cost": 0.01,                                                                +
               "Plan Rows": 1,                                                                    +
               "Plan Width": 4,                                                                   +
               "Actual Startup Time": 0.255,                                                      +
               "Actual Total Time": 0.255,                                                        +
               "Actual Rows": 1,                                                                  +
               "Actual Loops": 11347,                                                             +
               "Index Cond": "(id = mk.keyword_id)",                                              +
               "Rows Removed by Index Recheck": 0,                                                +
               "Shared Hit Blocks": 44669,                                                        +
               "Shared Read Blocks": 741,                                                         +
               "Shared Dirtied Blocks": 0,                                                        +
               "Shared Written Blocks": 0,                                                        +
               "Local Hit Blocks": 0,                                                             +
               "Local Read Blocks": 0,                                                            +
               "Local Dirtied Blocks": 0,                                                         +
               "Local Written Blocks": 0,                                                         +
               "Temp Read Blocks": 0,                                                             +
               "Temp Written Blocks": 0                                                           +
             }                                                                                    +
           ]                                                                                      +
         }                                                                                        +
       ]                                                                                          +
     },                                                                                           +
     "Planning Time": 9172.721,                                                                   +
     "Triggers": [                                                                                +
     ],                                                                                           +
     "Execution Time": 39725.008                                                                  +
   }                                                                                              +
 ]
(1 row)
