                                                         QUERY PLAN                                                          
-----------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                          +
   {                                                                                                                        +
     "Plan": {                                                                                                              +
       "Node Type": "Aggregate",                                                                                            +
       "Strategy": "Plain",                                                                                                 +
       "Partial Mode": "Simple",                                                                                            +
       "Parallel Aware": false,                                                                                             +
       "Startup Cost": 2084.35,                                                                                             +
       "Total Cost": 2084.35,                                                                                               +
       "Plan Rows": 1,                                                                                                      +
       "Plan Width": 64,                                                                                                    +
       "Actual Startup Time": 5675.923,                                                                                     +
       "Actual Total Time": 5675.923,                                                                                       +
       "Actual Rows": 1,                                                                                                    +
       "Actual Loops": 1,                                                                                                   +
       "Shared Hit Blocks": 283,                                                                                            +
       "Shared Read Blocks": 51185,                                                                                         +
       "Shared Dirtied Blocks": 0,                                                                                          +
       "Shared Written Blocks": 0,                                                                                          +
       "Local Hit Blocks": 0,                                                                                               +
       "Local Read Blocks": 0,                                                                                              +
       "Local Dirtied Blocks": 0,                                                                                           +
       "Local Written Blocks": 0,                                                                                           +
       "Temp Read Blocks": 0,                                                                                               +
       "Temp Written Blocks": 0,                                                                                            +
       "Plans": [                                                                                                           +
         {                                                                                                                  +
           "Node Type": "Nested Loop",                                                                                      +
           "Parent Relationship": "Outer",                                                                                  +
           "Parallel Aware": false,                                                                                         +
           "Join Type": "Inner",                                                                                            +
           "Startup Cost": 0.06,                                                                                            +
           "Total Cost": 2084.35,                                                                                           +
           "Plan Rows": 1,                                                                                                  +
           "Plan Width": 32,                                                                                                +
           "Actual Startup Time": 3673.784,                                                                                 +
           "Actual Total Time": 5675.846,                                                                                   +
           "Actual Rows": 16,                                                                                               +
           "Actual Loops": 1,                                                                                               +
           "Inner Unique": true,                                                                                            +
           "Shared Hit Blocks": 283,                                                                                        +
           "Shared Read Blocks": 51185,                                                                                     +
           "Shared Dirtied Blocks": 0,                                                                                      +
           "Shared Written Blocks": 0,                                                                                      +
           "Local Hit Blocks": 0,                                                                                           +
           "Local Read Blocks": 0,                                                                                          +
           "Local Dirtied Blocks": 0,                                                                                       +
           "Local Written Blocks": 0,                                                                                       +
           "Temp Read Blocks": 0,                                                                                           +
           "Temp Written Blocks": 0,                                                                                        +
           "Plans": [                                                                                                       +
             {                                                                                                              +
               "Node Type": "Nested Loop",                                                                                  +
               "Parent Relationship": "Outer",                                                                              +
               "Parallel Aware": false,                                                                                     +
               "Join Type": "Inner",                                                                                        +
               "Startup Cost": 0.04,                                                                                        +
               "Total Cost": 2084.26,                                                                                       +
               "Plan Rows": 1,                                                                                              +
               "Plan Width": 23,                                                                                            +
               "Actual Startup Time": 3637.611,                                                                             +
               "Actual Total Time": 5229.096,                                                                               +
               "Actual Rows": 46,                                                                                           +
               "Actual Loops": 1,                                                                                           +
               "Inner Unique": true,                                                                                        +
               "Join Filter": "(ml.link_type_id = lt.id)",                                                                  +
               "Rows Removed by Join Filter": 130,                                                                          +
               "Shared Hit Blocks": 130,                                                                                    +
               "Shared Read Blocks": 51154,                                                                                 +
               "Shared Dirtied Blocks": 0,                                                                                  +
               "Shared Written Blocks": 0,                                                                                  +
               "Local Hit Blocks": 0,                                                                                       +
               "Local Read Blocks": 0,                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                   +
               "Local Written Blocks": 0,                                                                                   +
               "Temp Read Blocks": 0,                                                                                       +
               "Temp Written Blocks": 0,                                                                                    +
               "Plans": [                                                                                                   +
                 {                                                                                                          +
                   "Node Type": "Nested Loop",                                                                              +
                   "Parent Relationship": "Outer",                                                                          +
                   "Parallel Aware": false,                                                                                 +
                   "Join Type": "Inner",                                                                                    +
                   "Startup Cost": 0.04,                                                                                    +
                   "Total Cost": 2084.23,                                                                                   +
                   "Plan Rows": 1,                                                                                          +
                   "Plan Width": 27,                                                                                        +
                   "Actual Startup Time": 3579.130,                                                                         +
                   "Actual Total Time": 5228.960,                                                                           +
                   "Actual Rows": 176,                                                                                      +
                   "Actual Loops": 1,                                                                                       +
                   "Inner Unique": false,                                                                                   +
                   "Join Filter": "(ci.movie_id = ml.linked_movie_id)",                                                     +
                   "Rows Removed by Join Filter": 10588765,                                                                 +
                   "Shared Hit Blocks": 129,                                                                                +
                   "Shared Read Blocks": 51154,                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                              +
                   "Shared Written Blocks": 0,                                                                              +
                   "Local Hit Blocks": 0,                                                                                   +
                   "Local Read Blocks": 0,                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                               +
                   "Local Written Blocks": 0,                                                                               +
                   "Temp Read Blocks": 0,                                                                                   +
                   "Temp Written Blocks": 0,                                                                                +
                   "Plans": [                                                                                               +
                     {                                                                                                      +
                       "Node Type": "Seq Scan",                                                                             +
                       "Parent Relationship": "Outer",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Relation Name": "movie_link",                                                                       +
                       "Alias": "ml",                                                                                       +
                       "Startup Cost": 0.00,                                                                                +
                       "Total Cost": 7.19,                                                                                  +
                       "Plan Rows": 29997,                                                                                  +
                       "Plan Width": 8,                                                                                     +
                       "Actual Startup Time": 0.147,                                                                        +
                       "Actual Total Time": 20.134,                                                                         +
                       "Actual Rows": 29997,                                                                                +
                       "Actual Loops": 1,                                                                                   +
                       "Shared Hit Blocks": 2,                                                                              +
                       "Shared Read Blocks": 161,                                                                           +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0                                                                             +
                     },                                                                                                     +
                     {                                                                                                      +
                       "Node Type": "Materialize",                                                                          +
                       "Parent Relationship": "Inner",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Startup Cost": 0.04,                                                                                +
                       "Total Cost": 2070.31,                                                                               +
                       "Plan Rows": 1,                                                                                      +
                       "Plan Width": 19,                                                                                    +
                       "Actual Startup Time": 0.030,                                                                        +
                       "Actual Total Time": 0.137,                                                                          +
                       "Actual Rows": 353,                                                                                  +
                       "Actual Loops": 29997,                                                                               +
                       "Shared Hit Blocks": 127,                                                                            +
                       "Shared Read Blocks": 50993,                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0,                                                                            +
                       "Plans": [                                                                                           +
                         {                                                                                                  +
                           "Node Type": "Nested Loop",                                                                      +
                           "Parent Relationship": "Outer",                                                                  +
                           "Parallel Aware": false,                                                                         +
                           "Join Type": "Inner",                                                                            +
                           "Startup Cost": 0.04,                                                                            +
                           "Total Cost": 2070.31,                                                                           +
                           "Plan Rows": 1,                                                                                  +
                           "Plan Width": 19,                                                                                +
                           "Actual Startup Time": 907.891,                                                                  +
                           "Actual Total Time": 3572.887,                                                                   +
                           "Actual Rows": 353,                                                                              +
                           "Actual Loops": 1,                                                                               +
                           "Inner Unique": false,                                                                           +
                           "Join Filter": "(n.id = ci.person_id)",                                                          +
                           "Rows Removed by Join Filter": 0,                                                                +
                           "Shared Hit Blocks": 127,                                                                        +
                           "Shared Read Blocks": 50993,                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                      +
                           "Shared Written Blocks": 0,                                                                      +
                           "Local Hit Blocks": 0,                                                                           +
                           "Local Read Blocks": 0,                                                                          +
                           "Local Dirtied Blocks": 0,                                                                       +
                           "Local Written Blocks": 0,                                                                       +
                           "Temp Read Blocks": 0,                                                                           +
                           "Temp Written Blocks": 0,                                                                        +
                           "Plans": [                                                                                       +
                             {                                                                                              +
                               "Node Type": "Nested Loop",                                                                  +
                               "Parent Relationship": "Outer",                                                              +
                               "Parallel Aware": false,                                                                     +
                               "Join Type": "Inner",                                                                        +
                               "Startup Cost": 0.03,                                                                        +
                               "Total Cost": 2062.15,                                                                       +
                               "Plan Rows": 1,                                                                              +
                               "Plan Width": 27,                                                                            +
                               "Actual Startup Time": 875.267,                                                              +
                               "Actual Total Time": 3438.690,                                                               +
                               "Actual Rows": 3,                                                                            +
                               "Actual Loops": 1,                                                                           +
                               "Inner Unique": false,                                                                       +
                               "Shared Hit Blocks": 111,                                                                    +
                               "Shared Read Blocks": 50976,                                                                 +
                               "Shared Dirtied Blocks": 0,                                                                  +
                               "Shared Written Blocks": 0,                                                                  +
                               "Local Hit Blocks": 0,                                                                       +
                               "Local Read Blocks": 0,                                                                      +
                               "Local Dirtied Blocks": 0,                                                                   +
                               "Local Written Blocks": 0,                                                                   +
                               "Temp Read Blocks": 0,                                                                       +
                               "Temp Written Blocks": 0,                                                                    +
                               "Plans": [                                                                                   +
                                 {                                                                                          +
                                   "Node Type": "Nested Loop",                                                              +
                                   "Parent Relationship": "Outer",                                                          +
                                   "Parallel Aware": false,                                                                 +
                                   "Join Type": "Inner",                                                                    +
                                   "Startup Cost": 0.01,                                                                    +
                                   "Total Cost": 2059.75,                                                                   +
                                   "Plan Rows": 1,                                                                          +
                                   "Plan Width": 23,                                                                        +
                                   "Actual Startup Time": 844.089,                                                          +
                                   "Actual Total Time": 3384.112,                                                           +
                                   "Actual Rows": 3,                                                                        +
                                   "Actual Loops": 1,                                                                       +
                                   "Inner Unique": true,                                                                    +
                                   "Shared Hit Blocks": 105,                                                                +
                                   "Shared Read Blocks": 50970,                                                             +
                                   "Shared Dirtied Blocks": 0,                                                              +
                                   "Shared Written Blocks": 0,                                                              +
                                   "Local Hit Blocks": 0,                                                                   +
                                   "Local Read Blocks": 0,                                                                  +
                                   "Local Dirtied Blocks": 0,                                                               +
                                   "Local Written Blocks": 0,                                                               +
                                   "Temp Read Blocks": 0,                                                                   +
                                   "Temp Written Blocks": 0,                                                                +
                                   "Plans": [                                                                               +
                                     {                                                                                      +
                                       "Node Type": "Nested Loop",                                                          +
                                       "Parent Relationship": "Outer",                                                      +
                                       "Parallel Aware": false,                                                             +
                                       "Join Type": "Inner",                                                                +
                                       "Startup Cost": 0.00,                                                                +
                                       "Total Cost": 2029.08,                                                               +
                                       "Plan Rows": 1,                                                                      +
                                       "Plan Width": 4,                                                                     +
                                       "Actual Startup Time": 51.963,                                                       +
                                       "Actual Total Time": 2659.450,                                                       +
                                       "Actual Rows": 64,                                                                   +
                                       "Actual Loops": 1,                                                                   +
                                       "Inner Unique": true,                                                                +
                                       "Join Filter": "(it.id = pi.info_type_id)",                                          +
                                       "Rows Removed by Join Filter": 0,                                                    +
                                       "Shared Hit Blocks": 2,                                                              +
                                       "Shared Read Blocks": 50817,                                                         +
                                       "Shared Dirtied Blocks": 0,                                                          +
                                       "Shared Written Blocks": 0,                                                          +
                                       "Local Hit Blocks": 0,                                                               +
                                       "Local Read Blocks": 0,                                                              +
                                       "Local Dirtied Blocks": 0,                                                           +
                                       "Local Written Blocks": 0,                                                           +
                                       "Temp Read Blocks": 0,                                                               +
                                       "Temp Written Blocks": 0,                                                            +
                                       "Plans": [                                                                           +
                                         {                                                                                  +
                                           "Node Type": "Seq Scan",                                                         +
                                           "Parent Relationship": "Outer",                                                  +
                                           "Parallel Aware": false,                                                         +
                                           "Relation Name": "person_info",                                                  +
                                           "Alias": "pi",                                                                   +
                                           "Startup Cost": 0.00,                                                            +
                                           "Total Cost": 2029.02,                                                           +
                                           "Plan Rows": 64,                                                                 +
                                           "Plan Width": 8,                                                                 +
                                           "Actual Startup Time": 25.701,                                                   +
                                           "Actual Total Time": 2632.768,                                                   +
                                           "Actual Rows": 64,                                                               +
                                           "Actual Loops": 1,                                                               +
                                           "Filter": "(note = 'Volker Boehm'::text)",                                       +
                                           "Rows Removed by Filter": 2963600,                                               +
                                           "Shared Hit Blocks": 2,                                                          +
                                           "Shared Read Blocks": 50816,                                                     +
                                           "Shared Dirtied Blocks": 0,                                                      +
                                           "Shared Written Blocks": 0,                                                      +
                                           "Local Hit Blocks": 0,                                                           +
                                           "Local Read Blocks": 0,                                                          +
                                           "Local Dirtied Blocks": 0,                                                       +
                                           "Local Written Blocks": 0,                                                       +
                                           "Temp Read Blocks": 0,                                                           +
                                           "Temp Written Blocks": 0                                                         +
                                         },                                                                                 +
                                         {                                                                                  +
                                           "Node Type": "Materialize",                                                      +
                                           "Parent Relationship": "Inner",                                                  +
                                           "Parallel Aware": false,                                                         +
                                           "Startup Cost": 0.00,                                                            +
                                           "Total Cost": 0.05,                                                              +
                                           "Plan Rows": 1,                                                                  +
                                           "Plan Width": 4,                                                                 +
                                           "Actual Startup Time": 0.411,                                                    +
                                           "Actual Total Time": 0.411,                                                      +
                                           "Actual Rows": 1,                                                                +
                                           "Actual Loops": 64,                                                              +
                                           "Shared Hit Blocks": 0,                                                          +
                                           "Shared Read Blocks": 1,                                                         +
                                           "Shared Dirtied Blocks": 0,                                                      +
                                           "Shared Written Blocks": 0,                                                      +
                                           "Local Hit Blocks": 0,                                                           +
                                           "Local Read Blocks": 0,                                                          +
                                           "Local Dirtied Blocks": 0,                                                       +
                                           "Local Written Blocks": 0,                                                       +
                                           "Temp Read Blocks": 0,                                                           +
                                           "Temp Written Blocks": 0,                                                        +
                                           "Plans": [                                                                       +
                                             {                                                                              +
                                               "Node Type": "Seq Scan",                                                     +
                                               "Parent Relationship": "Outer",                                              +
                                               "Parallel Aware": false,                                                     +
                                               "Relation Name": "info_type",                                                +
                                               "Alias": "it",                                                               +
                                               "Startup Cost": 0.00,                                                        +
                                               "Total Cost": 0.05,                                                          +
                                               "Plan Rows": 1,                                                              +
                                               "Plan Width": 4,                                                             +
                                               "Actual Startup Time": 26.235,                                               +
                                               "Actual Total Time": 26.235,                                                 +
                                               "Actual Rows": 1,                                                            +
                                               "Actual Loops": 1,                                                           +
                                               "Filter": "((info)::text = 'mini biography'::text)",                         +
                                               "Rows Removed by Filter": 18,                                                +
                                               "Shared Hit Blocks": 0,                                                      +
                                               "Shared Read Blocks": 1,                                                     +
                                               "Shared Dirtied Blocks": 0,                                                  +
                                               "Shared Written Blocks": 0,                                                  +
                                               "Local Hit Blocks": 0,                                                       +
                                               "Local Read Blocks": 0,                                                      +
                                               "Local Dirtied Blocks": 0,                                                   +
                                               "Local Written Blocks": 0,                                                   +
                                               "Temp Read Blocks": 0,                                                       +
                                               "Temp Written Blocks": 0                                                     +
                                             }                                                                              +
                                           ]                                                                                +
                                         }                                                                                  +
                                       ]                                                                                    +
                                     },                                                                                     +
                                     {                                                                                      +
                                       "Node Type": "Index Scan",                                                           +
                                       "Parent Relationship": "Inner",                                                      +
                                       "Parallel Aware": false,                                                             +
                                       "Scan Direction": "Forward",                                                         +
                                       "Index Name": "name_pkey",                                                           +
                                       "Relation Name": "name",                                                             +
                                       "Alias": "n",                                                                        +
                                       "Startup Cost": 0.01,                                                                +
                                       "Total Cost": 6.13,                                                                  +
                                       "Plan Rows": 1,                                                                      +
                                       "Plan Width": 19,                                                                    +
                                       "Actual Startup Time": 11.316,                                                       +
                                       "Actual Total Time": 11.316,                                                         +
                                       "Actual Rows": 0,                                                                    +
                                       "Actual Loops": 64,                                                                  +
                                       "Index Cond": "(id = pi.person_id)",                                                 +
                                       "Rows Removed by Index Recheck": 0,                                                  +
                                       "Filter": "(((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))",+
                                       "Rows Removed by Filter": 1,                                                         +
                                       "Shared Hit Blocks": 103,                                                            +
                                       "Shared Read Blocks": 153,                                                           +
                                       "Shared Dirtied Blocks": 0,                                                          +
                                       "Shared Written Blocks": 0,                                                          +
                                       "Local Hit Blocks": 0,                                                               +
                                       "Local Read Blocks": 0,                                                              +
                                       "Local Dirtied Blocks": 0,                                                           +
                                       "Local Written Blocks": 0,                                                           +
                                       "Temp Read Blocks": 0,                                                               +
                                       "Temp Written Blocks": 0                                                             +
                                     }                                                                                      +
                                   ]                                                                                        +
                                 },                                                                                         +
                                 {                                                                                          +
                                   "Node Type": "Index Scan",                                                               +
                                   "Parent Relationship": "Inner",                                                          +
                                   "Parallel Aware": false,                                                                 +
                                   "Scan Direction": "Forward",                                                             +
                                   "Index Name": "person_id_aka_name",                                                      +
                                   "Relation Name": "aka_name",                                                             +
                                   "Alias": "an",                                                                           +
                                   "Startup Cost": 0.01,                                                                    +
                                   "Total Cost": 0.48,                                                                      +
                                   "Plan Rows": 1,                                                                          +
                                   "Plan Width": 4,                                                                         +
                                   "Actual Startup Time": 14.298,                                                           +
                                   "Actual Total Time": 18.181,                                                             +
                                   "Actual Rows": 1,                                                                        +
                                   "Actual Loops": 3,                                                                       +
                                   "Index Cond": "(person_id = n.id)",                                                      +
                                   "Rows Removed by Index Recheck": 0,                                                      +
                                   "Filter": "(name ~~ '%a%'::text)",                                                       +
                                   "Rows Removed by Filter": 0,                                                             +
                                   "Shared Hit Blocks": 6,                                                                  +
                                   "Shared Read Blocks": 6,                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                              +
                                   "Shared Written Blocks": 0,                                                              +
                                   "Local Hit Blocks": 0,                                                                   +
                                   "Local Read Blocks": 0,                                                                  +
                                   "Local Dirtied Blocks": 0,                                                               +
                                   "Local Written Blocks": 0,                                                               +
                                   "Temp Read Blocks": 0,                                                                   +
                                   "Temp Written Blocks": 0                                                                 +
                                 }                                                                                          +
                               ]                                                                                            +
                             },                                                                                             +
                             {                                                                                              +
                               "Node Type": "Index Scan",                                                                   +
                               "Parent Relationship": "Inner",                                                              +
                               "Parallel Aware": false,                                                                     +
                               "Scan Direction": "Forward",                                                                 +
                               "Index Name": "person_id_cast_info",                                                         +
                               "Relation Name": "cast_info",                                                                +
                               "Alias": "ci",                                                                               +
                               "Startup Cost": 0.02,                                                                        +
                               "Total Cost": 1.63,                                                                          +
                               "Plan Rows": 31,                                                                             +
                               "Plan Width": 8,                                                                             +
                               "Actual Startup Time": 20.930,                                                               +
                               "Actual Total Time": 44.616,                                                                 +
                               "Actual Rows": 118,                                                                          +
                               "Actual Loops": 3,                                                                           +
                               "Index Cond": "(person_id = an.person_id)",                                                  +
                               "Rows Removed by Index Recheck": 0,                                                          +
                               "Shared Hit Blocks": 16,                                                                     +
                               "Shared Read Blocks": 17,                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                  +
                               "Shared Written Blocks": 0,                                                                  +
                               "Local Hit Blocks": 0,                                                                       +
                               "Local Read Blocks": 0,                                                                      +
                               "Local Dirtied Blocks": 0,                                                                   +
                               "Local Written Blocks": 0,                                                                   +
                               "Temp Read Blocks": 0,                                                                       +
                               "Temp Written Blocks": 0                                                                     +
                             }                                                                                              +
                           ]                                                                                                +
                         }                                                                                                  +
                       ]                                                                                                    +
                     }                                                                                                      +
                   ]                                                                                                        +
                 },                                                                                                         +
                 {                                                                                                          +
                   "Node Type": "Materialize",                                                                              +
                   "Parent Relationship": "Inner",                                                                          +
                   "Parallel Aware": false,                                                                                 +
                   "Startup Cost": 0.00,                                                                                    +
                   "Total Cost": 0.03,                                                                                      +
                   "Plan Rows": 1,                                                                                          +
                   "Plan Width": 4,                                                                                         +
                   "Actual Startup Time": 0.000,                                                                            +
                   "Actual Total Time": 0.000,                                                                              +
                   "Actual Rows": 1,                                                                                        +
                   "Actual Loops": 176,                                                                                     +
                   "Shared Hit Blocks": 1,                                                                                  +
                   "Shared Read Blocks": 0,                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                              +
                   "Shared Written Blocks": 0,                                                                              +
                   "Local Hit Blocks": 0,                                                                                   +
                   "Local Read Blocks": 0,                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                               +
                   "Local Written Blocks": 0,                                                                               +
                   "Temp Read Blocks": 0,                                                                                   +
                   "Temp Written Blocks": 0,                                                                                +
                   "Plans": [                                                                                               +
                     {                                                                                                      +
                       "Node Type": "Seq Scan",                                                                             +
                       "Parent Relationship": "Outer",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Relation Name": "link_type",                                                                        +
                       "Alias": "lt",                                                                                       +
                       "Startup Cost": 0.00,                                                                                +
                       "Total Cost": 0.03,                                                                                  +
                       "Plan Rows": 1,                                                                                      +
                       "Plan Width": 4,                                                                                     +
                       "Actual Startup Time": 0.010,                                                                        +
                       "Actual Total Time": 0.012,                                                                          +
                       "Actual Rows": 1,                                                                                    +
                       "Actual Loops": 1,                                                                                   +
                       "Filter": "((link)::text = 'features'::text)",                                                       +
                       "Rows Removed by Filter": 17,                                                                        +
                       "Shared Hit Blocks": 1,                                                                              +
                       "Shared Read Blocks": 0,                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0                                                                             +
                     }                                                                                                      +
                   ]                                                                                                        +
                 }                                                                                                          +
               ]                                                                                                            +
             },                                                                                                             +
             {                                                                                                              +
               "Node Type": "Index Scan",                                                                                   +
               "Parent Relationship": "Inner",                                                                              +
               "Parallel Aware": false,                                                                                     +
               "Scan Direction": "Forward",                                                                                 +
               "Index Name": "title_idx_id",                                                                                +
               "Relation Name": "title",                                                                                    +
               "Alias": "t",                                                                                                +
               "Startup Cost": 0.01,                                                                                        +
               "Total Cost": 0.02,                                                                                          +
               "Plan Rows": 1,                                                                                              +
               "Plan Width": 21,                                                                                            +
               "Actual Startup Time": 9.710,                                                                                +
               "Actual Total Time": 9.710,                                                                                  +
               "Actual Rows": 0,                                                                                            +
               "Actual Loops": 46,                                                                                          +
               "Index Cond": "(id = ci.movie_id)",                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                          +
               "Filter": "((production_year >= 1980) AND (production_year <= 1984))",                                       +
               "Rows Removed by Filter": 1,                                                                                 +
               "Shared Hit Blocks": 153,                                                                                    +
               "Shared Read Blocks": 31,                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                  +
               "Shared Written Blocks": 0,                                                                                  +
               "Local Hit Blocks": 0,                                                                                       +
               "Local Read Blocks": 0,                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                   +
               "Local Written Blocks": 0,                                                                                   +
               "Temp Read Blocks": 0,                                                                                       +
               "Temp Written Blocks": 0                                                                                     +
             }                                                                                                              +
           ]                                                                                                                +
         }                                                                                                                  +
       ]                                                                                                                    +
     },                                                                                                                     +
     "Planning Time": 6844.732,                                                                                             +
     "Triggers": [                                                                                                          +
     ],                                                                                                                     +
     "Execution Time": 5676.849                                                                                             +
   }                                                                                                                        +
 ]
(1 row)

