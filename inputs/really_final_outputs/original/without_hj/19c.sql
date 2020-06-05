                                                                            QUERY PLAN                                                                             
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                +
   {                                                                                                                                                              +
     "Plan": {                                                                                                                                                    +
       "Node Type": "Aggregate",                                                                                                                                  +
       "Strategy": "Plain",                                                                                                                                       +
       "Partial Mode": "Simple",                                                                                                                                  +
       "Parallel Aware": false,                                                                                                                                   +
       "Startup Cost": 11119.86,                                                                                                                                  +
       "Total Cost": 11119.86,                                                                                                                                    +
       "Plan Rows": 1,                                                                                                                                            +
       "Plan Width": 64,                                                                                                                                          +
       "Actual Startup Time": 1313214.536,                                                                                                                        +
       "Actual Total Time": 1313214.536,                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                          +
       "Actual Loops": 1,                                                                                                                                         +
       "Shared Hit Blocks": 27269535,                                                                                                                             +
       "Shared Read Blocks": 488678,                                                                                                                              +
       "Shared Dirtied Blocks": 0,                                                                                                                                +
       "Shared Written Blocks": 0,                                                                                                                                +
       "Local Hit Blocks": 0,                                                                                                                                     +
       "Local Read Blocks": 0,                                                                                                                                    +
       "Local Dirtied Blocks": 0,                                                                                                                                 +
       "Local Written Blocks": 0,                                                                                                                                 +
       "Temp Read Blocks": 0,                                                                                                                                     +
       "Temp Written Blocks": 0,                                                                                                                                  +
       "Plans": [                                                                                                                                                 +
         {                                                                                                                                                        +
           "Node Type": "Nested Loop",                                                                                                                            +
           "Parent Relationship": "Outer",                                                                                                                        +
           "Parallel Aware": false,                                                                                                                               +
           "Join Type": "Inner",                                                                                                                                  +
           "Startup Cost": 0.10,                                                                                                                                  +
           "Total Cost": 11119.86,                                                                                                                                +
           "Plan Rows": 1,                                                                                                                                        +
           "Plan Width": 32,                                                                                                                                      +
           "Actual Startup Time": 89596.692,                                                                                                                      +
           "Actual Total Time": 1313199.487,                                                                                                                      +
           "Actual Rows": 3575,                                                                                                                                   +
           "Actual Loops": 1,                                                                                                                                     +
           "Inner Unique": true,                                                                                                                                  +
           "Shared Hit Blocks": 27269535,                                                                                                                         +
           "Shared Read Blocks": 488678,                                                                                                                          +
           "Shared Dirtied Blocks": 0,                                                                                                                            +
           "Shared Written Blocks": 0,                                                                                                                            +
           "Local Hit Blocks": 0,                                                                                                                                 +
           "Local Read Blocks": 0,                                                                                                                                +
           "Local Dirtied Blocks": 0,                                                                                                                             +
           "Local Written Blocks": 0,                                                                                                                             +
           "Temp Read Blocks": 0,                                                                                                                                 +
           "Temp Written Blocks": 0,                                                                                                                              +
           "Plans": [                                                                                                                                             +
             {                                                                                                                                                    +
               "Node Type": "Nested Loop",                                                                                                                        +
               "Parent Relationship": "Outer",                                                                                                                    +
               "Parallel Aware": false,                                                                                                                           +
               "Join Type": "Inner",                                                                                                                              +
               "Startup Cost": 0.08,                                                                                                                              +
               "Total Cost": 11118.95,                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                    +
               "Plan Width": 36,                                                                                                                                  +
               "Actual Startup Time": 89583.232,                                                                                                                  +
               "Actual Total Time": 1310315.717,                                                                                                                  +
               "Actual Rows": 3744,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                 +
               "Inner Unique": false,                                                                                                                             +
               "Join Filter": "(n.id = an.person_id)",                                                                                                            +
               "Rows Removed by Join Filter": 0,                                                                                                                  +
               "Shared Hit Blocks": 27255617,                                                                                                                     +
               "Shared Read Blocks": 488266,                                                                                                                      +
               "Shared Dirtied Blocks": 0,                                                                                                                        +
               "Shared Written Blocks": 0,                                                                                                                        +
               "Local Hit Blocks": 0,                                                                                                                             +
               "Local Read Blocks": 0,                                                                                                                            +
               "Local Dirtied Blocks": 0,                                                                                                                         +
               "Local Written Blocks": 0,                                                                                                                         +
               "Temp Read Blocks": 0,                                                                                                                             +
               "Temp Written Blocks": 0,                                                                                                                          +
               "Plans": [                                                                                                                                         +
                 {                                                                                                                                                +
                   "Node Type": "Nested Loop",                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                                +
                   "Parallel Aware": false,                                                                                                                       +
                   "Join Type": "Inner",                                                                                                                          +
                   "Startup Cost": 0.07,                                                                                                                          +
                   "Total Cost": 11118.63,                                                                                                                        +
                   "Plan Rows": 1,                                                                                                                                +
                   "Plan Width": 44,                                                                                                                              +
                   "Actual Startup Time": 89553.953,                                                                                                              +
                   "Actual Total Time": 1306090.187,                                                                                                              +
                   "Actual Rows": 2830,                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                             +
                   "Inner Unique": true,                                                                                                                          +
                   "Shared Hit Blocks": 27245205,                                                                                                                 +
                   "Shared Read Blocks": 487967,                                                                                                                  +
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
                       "Startup Cost": 0.06,                                                                                                                      +
                       "Total Cost": 11079.33,                                                                                                                    +
                       "Plan Rows": 149,                                                                                                                          +
                       "Plan Width": 25,                                                                                                                          +
                       "Actual Startup Time": 5076.660,                                                                                                           +
                       "Actual Total Time": 1249953.168,                                                                                                          +
                       "Actual Rows": 132216,                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                         +
                       "Inner Unique": true,                                                                                                                      +
                       "Join Filter": "(ci.role_id = rt.id)",                                                                                                     +
                       "Rows Removed by Join Filter": 304713,                                                                                                     +
                       "Shared Hit Blocks": 26723820,                                                                                                             +
                       "Shared Read Blocks": 479543,                                                                                                              +
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
                           "Startup Cost": 0.06,                                                                                                                  +
                           "Total Cost": 11078.90,                                                                                                                +
                           "Plan Rows": 1788,                                                                                                                     +
                           "Plan Width": 29,                                                                                                                      +
                           "Actual Startup Time": 4120.617,                                                                                                       +
                           "Actual Total Time": 1249465.636,                                                                                                      +
                           "Actual Rows": 436929,                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                     +
                           "Inner Unique": false,                                                                                                                 +
                           "Join Filter": "(t.id = ci.movie_id)",                                                                                                 +
                           "Rows Removed by Join Filter": 0,                                                                                                      +
                           "Shared Hit Blocks": 26723819,                                                                                                         +
                           "Shared Read Blocks": 479543,                                                                                                          +
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
                               "Startup Cost": 0.04,                                                                                                              +
                               "Total Cost": 9848.61,                                                                                                             +
                               "Plan Rows": 2806,                                                                                                                 +
                               "Plan Width": 29,                                                                                                                  +
                               "Actual Startup Time": 1543.710,                                                                                                   +
                               "Actual Total Time": 147949.429,                                                                                                   +
                               "Actual Rows": 391371,                                                                                                             +
                               "Actual Loops": 1,                                                                                                                 +
                               "Inner Unique": true,                                                                                                              +
                               "Join Filter": "(mi.movie_id = t.id)",                                                                                             +
                               "Rows Removed by Join Filter": 0,                                                                                                  +
                               "Shared Hit Blocks": 6923190,                                                                                                      +
                               "Shared Read Blocks": 229099,                                                                                                      +
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
                                   "Startup Cost": 0.03,                                                                                                          +
                                   "Total Cost": 9519.35,                                                                                                         +
                                   "Plan Rows": 5135,                                                                                                             +
                                   "Plan Width": 8,                                                                                                               +
                                   "Actual Startup Time": 1536.317,                                                                                               +
                                   "Actual Total Time": 52075.126,                                                                                                +
                                   "Actual Rows": 424729,                                                                                                         +
                                   "Actual Loops": 1,                                                                                                             +
                                   "Inner Unique": true,                                                                                                          +
                                   "Shared Hit Blocks": 5262199,                                                                                                  +
                                   "Shared Read Blocks": 190100,                                                                                                  +
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
                                       "Startup Cost": 0.01,                                                                                                      +
                                       "Total Cost": 9265.95,                                                                                                     +
                                       "Plan Rows": 14224,                                                                                                        +
                                       "Plan Width": 12,                                                                                                          +
                                       "Actual Startup Time": 1536.301,                                                                                           +
                                       "Actual Total Time": 20681.410,                                                                                            +
                                       "Actual Rows": 890059,                                                                                                     +
                                       "Actual Loops": 1,                                                                                                         +
                                       "Inner Unique": false,                                                                                                     +
                                       "Shared Hit Blocks": 1699035,                                                                                              +
                                       "Shared Read Blocks": 186265,                                                                                              +
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
                                           "Startup Cost": 0.00,                                                                                                  +
                                           "Total Cost": 8508.21,                                                                                                 +
                                           "Plan Rows": 3969,                                                                                                     +
                                           "Plan Width": 4,                                                                                                       +
                                           "Actual Startup Time": 1536.275,                                                                                       +
                                           "Actual Total Time": 11282.019,                                                                                        +
                                           "Actual Rows": 451039,                                                                                                 +
                                           "Actual Loops": 1,                                                                                                     +
                                           "Inner Unique": true,                                                                                                  +
                                           "Join Filter": "(it.id = mi.info_type_id)",                                                                            +
                                           "Rows Removed by Join Filter": 65,                                                                                     +
                                           "Shared Hit Blocks": 6673,                                                                                             +
                                           "Shared Read Blocks": 162311,                                                                                          +
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
                                               "Relation Name": "movie_info",                                                                                     +
                                               "Alias": "mi",                                                                                                     +
                                               "Startup Cost": 0.00,                                                                                              +
                                               "Total Cost": 8407.52,                                                                                             +
                                               "Plan Rows": 448472,                                                                                               +
                                               "Plan Width": 8,                                                                                                   +
                                               "Actual Startup Time": 700.289,                                                                                    +
                                               "Actual Total Time": 10687.257,                                                                                    +
                                               "Actual Rows": 451104,                                                                                             +
                                               "Actual Loops": 1,                                                                                                 +
                                               "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))",               +
                                               "Rows Removed by Filter": 14384616,                                                                                +
                                               "Shared Hit Blocks": 6672,                                                                                         +
                                               "Shared Read Blocks": 162311,                                                                                      +
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
                                               "Startup Cost": 0.00,                                                                                              +
                                               "Total Cost": 0.05,                                                                                                +
                                               "Plan Rows": 1,                                                                                                    +
                                               "Plan Width": 4,                                                                                                   +
                                               "Actual Startup Time": 0.000,                                                                                      +
                                               "Actual Total Time": 0.000,                                                                                        +
                                               "Actual Rows": 1,                                                                                                  +
                                               "Actual Loops": 451104,                                                                                            +
                                               "Shared Hit Blocks": 1,                                                                                            +
                                               "Shared Read Blocks": 0,                                                                                           +
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
                                                   "Node Type": "Seq Scan",                                                                                       +
                                                   "Parent Relationship": "Outer",                                                                                +
                                                   "Parallel Aware": false,                                                                                       +
                                                   "Relation Name": "info_type",                                                                                  +
                                                   "Alias": "it",                                                                                                 +
                                                   "Startup Cost": 0.00,                                                                                          +
                                                   "Total Cost": 0.05,                                                                                            +
                                                   "Plan Rows": 1,                                                                                                +
                                                   "Plan Width": 4,                                                                                               +
                                                   "Actual Startup Time": 0.015,                                                                                  +
                                                   "Actual Total Time": 0.030,                                                                                    +
                                                   "Actual Rows": 1,                                                                                              +
                                                   "Actual Loops": 1,                                                                                             +
                                                   "Filter": "((info)::text = 'release dates'::text)",                                                            +
                                                   "Rows Removed by Filter": 112,                                                                                 +
                                                   "Shared Hit Blocks": 1,                                                                                        +
                                                   "Shared Read Blocks": 0,                                                                                       +
                                                   "Shared Dirtied Blocks": 0,                                                                                    +
                                                   "Shared Written Blocks": 0,                                                                                    +
                                                   "Local Hit Blocks": 0,                                                                                         +
                                                   "Local Read Blocks": 0,                                                                                        +
                                                   "Local Dirtied Blocks": 0,                                                                                     +
                                                   "Local Written Blocks": 0,                                                                                     +
                                                   "Temp Read Blocks": 0,                                                                                         +
                                                   "Temp Written Blocks": 0                                                                                       +
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
                                           "Index Name": "movie_id_movie_companies",                                                                              +
                                           "Relation Name": "movie_companies",                                                                                    +
                                           "Alias": "mc",                                                                                                         +
                                           "Startup Cost": 0.01,                                                                                                  +
                                           "Total Cost": 0.19,                                                                                                    +
                                           "Plan Rows": 2,                                                                                                        +
                                           "Plan Width": 8,                                                                                                       +
                                           "Actual Startup Time": 0.015,                                                                                          +
                                           "Actual Total Time": 0.019,                                                                                            +
                                           "Actual Rows": 2,                                                                                                      +
                                           "Actual Loops": 451039,                                                                                                +
                                           "Index Cond": "(movie_id = mi.movie_id)",                                                                              +
                                           "Rows Removed by Index Recheck": 0,                                                                                    +
                                           "Shared Hit Blocks": 1692362,                                                                                          +
                                           "Shared Read Blocks": 23954,                                                                                           +
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
                                       "Index Name": "company_name_pkey",                                                                                         +
                                       "Relation Name": "company_name",                                                                                           +
                                       "Alias": "cn",                                                                                                             +
                                       "Startup Cost": 0.01,                                                                                                      +
                                       "Total Cost": 0.02,                                                                                                        +
                                       "Plan Rows": 1,                                                                                                            +
                                       "Plan Width": 4,                                                                                                           +
                                       "Actual Startup Time": 0.034,                                                                                              +
                                       "Actual Total Time": 0.034,                                                                                                +
                                       "Actual Rows": 0,                                                                                                          +
                                       "Actual Loops": 890059,                                                                                                    +
                                       "Index Cond": "(id = mc.company_id)",                                                                                      +
                                       "Rows Removed by Index Recheck": 0,                                                                                        +
                                       "Filter": "((country_code)::text = '[us]'::text)",                                                                         +
                                       "Rows Removed by Filter": 1,                                                                                               +
                                       "Shared Hit Blocks": 3563164,                                                                                              +
                                       "Shared Read Blocks": 3835,                                                                                                +
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
                                   "Index Name": "title_idx_id",                                                                                                  +
                                   "Relation Name": "title",                                                                                                      +
                                   "Alias": "t",                                                                                                                  +
                                   "Startup Cost": 0.01,                                                                                                          +
                                   "Total Cost": 0.06,                                                                                                            +
                                   "Plan Rows": 1,                                                                                                                +
                                   "Plan Width": 21,                                                                                                              +
                                   "Actual Startup Time": 0.224,                                                                                                  +
                                   "Actual Total Time": 0.224,                                                                                                    +
                                   "Actual Rows": 1,                                                                                                              +
                                   "Actual Loops": 424729,                                                                                                        +
                                   "Index Cond": "(id = mc.movie_id)",                                                                                            +
                                   "Rows Removed by Index Recheck": 0,                                                                                            +
                                   "Filter": "(production_year > 2000)",                                                                                          +
                                   "Rows Removed by Filter": 0,                                                                                                   +
                                   "Shared Hit Blocks": 1660991,                                                                                                  +
                                   "Shared Read Blocks": 38999,                                                                                                   +
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
                               "Index Name": "movie_id_cast_info",                                                                                                +
                               "Relation Name": "cast_info",                                                                                                      +
                               "Alias": "ci",                                                                                                                     +
                               "Startup Cost": 0.02,                                                                                                              +
                               "Total Cost": 0.44,                                                                                                                +
                               "Plan Rows": 1,                                                                                                                    +
                               "Plan Width": 16,                                                                                                                  +
                               "Actual Startup Time": 2.524,                                                                                                      +
                               "Actual Total Time": 2.812,                                                                                                        +
                               "Actual Rows": 1,                                                                                                                  +
                               "Actual Loops": 391371,                                                                                                            +
                               "Index Cond": "(movie_id = mc.movie_id)",                                                                                          +
                               "Rows Removed by Index Recheck": 0,                                                                                                +
                               "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                               "Rows Removed by Filter": 48,                                                                                                      +
                               "Shared Hit Blocks": 19800629,                                                                                                     +
                               "Shared Read Blocks": 250444,                                                                                                      +
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
                           "Total Cost": 0.03,                                                                                                                    +
                           "Plan Rows": 1,                                                                                                                        +
                           "Plan Width": 4,                                                                                                                       +
                           "Actual Startup Time": 0.000,                                                                                                          +
                           "Actual Total Time": 0.000,                                                                                                            +
                           "Actual Rows": 1,                                                                                                                      +
                           "Actual Loops": 436929,                                                                                                                +
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
                               "Relation Name": "role_type",                                                                                                      +
                               "Alias": "rt",                                                                                                                     +
                               "Startup Cost": 0.00,                                                                                                              +
                               "Total Cost": 0.03,                                                                                                                +
                               "Plan Rows": 1,                                                                                                                    +
                               "Plan Width": 4,                                                                                                                   +
                               "Actual Startup Time": 0.016,                                                                                                      +
                               "Actual Total Time": 0.023,                                                                                                        +
                               "Actual Rows": 1,                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                 +
                               "Filter": "((role)::text = 'actress'::text)",                                                                                      +
                               "Rows Removed by Filter": 11,                                                                                                      +
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
                     },                                                                                                                                           +
                     {                                                                                                                                            +
                       "Node Type": "Index Scan",                                                                                                                 +
                       "Parent Relationship": "Inner",                                                                                                            +
                       "Parallel Aware": false,                                                                                                                   +
                       "Scan Direction": "Forward",                                                                                                               +
                       "Index Name": "name_pkey",                                                                                                                 +
                       "Relation Name": "name",                                                                                                                   +
                       "Alias": "n",                                                                                                                              +
                       "Startup Cost": 0.01,                                                                                                                      +
                       "Total Cost": 0.26,                                                                                                                        +
                       "Plan Rows": 1,                                                                                                                            +
                       "Plan Width": 19,                                                                                                                          +
                       "Actual Startup Time": 0.423,                                                                                                              +
                       "Actual Total Time": 0.423,                                                                                                                +
                       "Actual Rows": 0,                                                                                                                          +
                       "Actual Loops": 132216,                                                                                                                    +
                       "Index Cond": "(id = ci.person_id)",                                                                                                       +
                       "Rows Removed by Index Recheck": 0,                                                                                                        +
                       "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                                     +
                       "Rows Removed by Filter": 1,                                                                                                               +
                       "Shared Hit Blocks": 521385,                                                                                                               +
                       "Shared Read Blocks": 8424,                                                                                                                +
                       "Shared Dirtied Blocks": 0,                                                                                                                +
                       "Shared Written Blocks": 0,                                                                                                                +
                       "Local Hit Blocks": 0,                                                                                                                     +
                       "Local Read Blocks": 0,                                                                                                                    +
                       "Local Dirtied Blocks": 0,                                                                                                                 +
                       "Local Written Blocks": 0,                                                                                                                 +
                       "Temp Read Blocks": 0,                                                                                                                     +
                       "Temp Written Blocks": 0                                                                                                                   +
                     }                                                                                                                                            +
                   ]                                                                                                                                              +
                 },                                                                                                                                               +
                 {                                                                                                                                                +
                   "Node Type": "Index Scan",                                                                                                                     +
                   "Parent Relationship": "Inner",                                                                                                                +
                   "Parallel Aware": false,                                                                                                                       +
                   "Scan Direction": "Forward",                                                                                                                   +
                   "Index Name": "person_id_aka_name",                                                                                                            +
                   "Relation Name": "aka_name",                                                                                                                   +
                   "Alias": "an",                                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                                          +
                   "Total Cost": 0.06,                                                                                                                            +
                   "Plan Rows": 2,                                                                                                                                +
                   "Plan Width": 4,                                                                                                                               +
                   "Actual Startup Time": 1.424,                                                                                                                  +
                   "Actual Total Time": 1.490,                                                                                                                    +
                   "Actual Rows": 1,                                                                                                                              +
                   "Actual Loops": 2830,                                                                                                                          +
                   "Index Cond": "(person_id = ci.person_id)",                                                                                                    +
                   "Rows Removed by Index Recheck": 0,                                                                                                            +
                   "Shared Hit Blocks": 10412,                                                                                                                    +
                   "Shared Read Blocks": 299,                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                    +
                   "Shared Written Blocks": 0,                                                                                                                    +
                   "Local Hit Blocks": 0,                                                                                                                         +
                   "Local Read Blocks": 0,                                                                                                                        +
                   "Local Dirtied Blocks": 0,                                                                                                                     +
                   "Local Written Blocks": 0,                                                                                                                     +
                   "Temp Read Blocks": 0,                                                                                                                         +
                   "Temp Written Blocks": 0                                                                                                                       +
                 }                                                                                                                                                +
               ]                                                                                                                                                  +
             },                                                                                                                                                   +
             {                                                                                                                                                    +
               "Node Type": "Index Scan",                                                                                                                         +
               "Parent Relationship": "Inner",                                                                                                                    +
               "Parallel Aware": false,                                                                                                                           +
               "Scan Direction": "Forward",                                                                                                                       +
               "Index Name": "char_name_pkey",                                                                                                                    +
               "Relation Name": "char_name",                                                                                                                      +
               "Alias": "chn",                                                                                                                                    +
               "Startup Cost": 0.01,                                                                                                                              +
               "Total Cost": 0.18,                                                                                                                                +
               "Plan Rows": 1,                                                                                                                                    +
               "Plan Width": 4,                                                                                                                                   +
               "Actual Startup Time": 0.768,                                                                                                                      +
               "Actual Total Time": 0.768,                                                                                                                        +
               "Actual Rows": 1,                                                                                                                                  +
               "Actual Loops": 3744,                                                                                                                              +
               "Index Cond": "(id = ci.person_role_id)",                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                                +
               "Shared Hit Blocks": 13918,                                                                                                                        +
               "Shared Read Blocks": 412,                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                        +
               "Shared Written Blocks": 0,                                                                                                                        +
               "Local Hit Blocks": 0,                                                                                                                             +
               "Local Read Blocks": 0,                                                                                                                            +
               "Local Dirtied Blocks": 0,                                                                                                                         +
               "Local Written Blocks": 0,                                                                                                                         +
               "Temp Read Blocks": 0,                                                                                                                             +
               "Temp Written Blocks": 0                                                                                                                           +
             }                                                                                                                                                    +
           ]                                                                                                                                                      +
         }                                                                                                                                                        +
       ]                                                                                                                                                          +
     },                                                                                                                                                           +
     "Planning Time": 7203.455,                                                                                                                                   +
     "Triggers": [                                                                                                                                                +
     ],                                                                                                                                                           +
     "Execution Time": 1313231.165                                                                                                                                +
   }                                                                                                                                                              +
 ]
(1 row)
