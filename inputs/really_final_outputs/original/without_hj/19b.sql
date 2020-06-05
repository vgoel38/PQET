                                                                         QUERY PLAN                                                                          
-------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                          +
   {                                                                                                                                                        +
     "Plan": {                                                                                                                                              +
       "Node Type": "Aggregate",                                                                                                                            +
       "Strategy": "Plain",                                                                                                                                 +
       "Partial Mode": "Simple",                                                                                                                            +
       "Parallel Aware": false,                                                                                                                             +
       "Startup Cost": 2105.42,                                                                                                                             +
       "Total Cost": 2105.42,                                                                                                                               +
       "Plan Rows": 1,                                                                                                                                      +
       "Plan Width": 64,                                                                                                                                    +
       "Actual Startup Time": 5351.132,                                                                                                                     +
       "Actual Total Time": 5351.133,                                                                                                                       +
       "Actual Rows": 1,                                                                                                                                    +
       "Actual Loops": 1,                                                                                                                                   +
       "Shared Hit Blocks": 11528,                                                                                                                          +
       "Shared Read Blocks": 36480,                                                                                                                         +
       "Shared Dirtied Blocks": 0,                                                                                                                          +
       "Shared Written Blocks": 0,                                                                                                                          +
       "Local Hit Blocks": 0,                                                                                                                               +
       "Local Read Blocks": 0,                                                                                                                              +
       "Local Dirtied Blocks": 0,                                                                                                                           +
       "Local Written Blocks": 0,                                                                                                                           +
       "Temp Read Blocks": 0,                                                                                                                               +
       "Temp Written Blocks": 0,                                                                                                                            +
       "Plans": [                                                                                                                                           +
         {                                                                                                                                                  +
           "Node Type": "Nested Loop",                                                                                                                      +
           "Parent Relationship": "Outer",                                                                                                                  +
           "Parallel Aware": false,                                                                                                                         +
           "Join Type": "Inner",                                                                                                                            +
           "Startup Cost": 0.10,                                                                                                                            +
           "Total Cost": 2105.41,                                                                                                                           +
           "Plan Rows": 1,                                                                                                                                  +
           "Plan Width": 32,                                                                                                                                +
           "Actual Startup Time": 3034.085,                                                                                                                 +
           "Actual Total Time": 5351.082,                                                                                                                   +
           "Actual Rows": 15,                                                                                                                               +
           "Actual Loops": 1,                                                                                                                               +
           "Inner Unique": true,                                                                                                                            +
           "Join Filter": "(ci.role_id = rt.id)",                                                                                                           +
           "Rows Removed by Join Filter": 0,                                                                                                                +
           "Shared Hit Blocks": 11528,                                                                                                                      +
           "Shared Read Blocks": 36480,                                                                                                                     +
           "Shared Dirtied Blocks": 0,                                                                                                                      +
           "Shared Written Blocks": 0,                                                                                                                      +
           "Local Hit Blocks": 0,                                                                                                                           +
           "Local Read Blocks": 0,                                                                                                                          +
           "Local Dirtied Blocks": 0,                                                                                                                       +
           "Local Written Blocks": 0,                                                                                                                       +
           "Temp Read Blocks": 0,                                                                                                                           +
           "Temp Written Blocks": 0,                                                                                                                        +
           "Plans": [                                                                                                                                       +
             {                                                                                                                                              +
               "Node Type": "Nested Loop",                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                              +
               "Parallel Aware": false,                                                                                                                     +
               "Join Type": "Inner",                                                                                                                        +
               "Startup Cost": 0.10,                                                                                                                        +
               "Total Cost": 2105.38,                                                                                                                       +
               "Plan Rows": 1,                                                                                                                              +
               "Plan Width": 36,                                                                                                                            +
               "Actual Startup Time": 3034.059,                                                                                                             +
               "Actual Total Time": 5351.042,                                                                                                               +
               "Actual Rows": 15,                                                                                                                           +
               "Actual Loops": 1,                                                                                                                           +
               "Inner Unique": true,                                                                                                                        +
               "Join Filter": "(ci.person_id = n.id)",                                                                                                      +
               "Rows Removed by Join Filter": 0,                                                                                                            +
               "Shared Hit Blocks": 11527,                                                                                                                  +
               "Shared Read Blocks": 36480,                                                                                                                 +
               "Shared Dirtied Blocks": 0,                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                       +
               "Temp Written Blocks": 0,                                                                                                                    +
               "Plans": [                                                                                                                                   +
                 {                                                                                                                                          +
                   "Node Type": "Nested Loop",                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                          +
                   "Parallel Aware": false,                                                                                                                 +
                   "Join Type": "Inner",                                                                                                                    +
                   "Startup Cost": 0.08,                                                                                                                    +
                   "Total Cost": 2104.11,                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                          +
                   "Plan Width": 29,                                                                                                                        +
                   "Actual Startup Time": 1832.802,                                                                                                         +
                   "Actual Total Time": 4972.125,                                                                                                           +
                   "Actual Rows": 275,                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                       +
                   "Inner Unique": true,                                                                                                                    +
                   "Join Filter": "(mi.info_type_id = it.id)",                                                                                              +
                   "Rows Removed by Join Filter": 0,                                                                                                        +
                   "Shared Hit Blocks": 10488,                                                                                                              +
                   "Shared Read Blocks": 36419,                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                   +
                   "Temp Written Blocks": 0,                                                                                                                +
                   "Plans": [                                                                                                                               +
                     {                                                                                                                                      +
                       "Node Type": "Nested Loop",                                                                                                          +
                       "Parent Relationship": "Outer",                                                                                                      +
                       "Parallel Aware": false,                                                                                                             +
                       "Join Type": "Inner",                                                                                                                +
                       "Startup Cost": 0.08,                                                                                                                +
                       "Total Cost": 2104.06,                                                                                                               +
                       "Plan Rows": 1,                                                                                                                      +
                       "Plan Width": 33,                                                                                                                    +
                       "Actual Startup Time": 1832.755,                                                                                                     +
                       "Actual Total Time": 4971.560,                                                                                                       +
                       "Actual Rows": 275,                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                   +
                       "Inner Unique": false,                                                                                                               +
                       "Join Filter": "(t.id = mi.movie_id)",                                                                                               +
                       "Rows Removed by Join Filter": 0,                                                                                                    +
                       "Shared Hit Blocks": 10487,                                                                                                          +
                       "Shared Read Blocks": 36419,                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                               +
                       "Temp Written Blocks": 0,                                                                                                            +
                       "Plans": [                                                                                                                           +
                         {                                                                                                                                  +
                           "Node Type": "Nested Loop",                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                  +
                           "Parallel Aware": false,                                                                                                         +
                           "Join Type": "Inner",                                                                                                            +
                           "Startup Cost": 0.07,                                                                                                            +
                           "Total Cost": 2099.63,                                                                                                           +
                           "Plan Rows": 1,                                                                                                                  +
                           "Plan Width": 41,                                                                                                                +
                           "Actual Startup Time": 1769.646,                                                                                                 +
                           "Actual Total Time": 4679.594,                                                                                                   +
                           "Actual Rows": 275,                                                                                                              +
                           "Actual Loops": 1,                                                                                                               +
                           "Inner Unique": true,                                                                                                            +
                           "Shared Hit Blocks": 2864,                                                                                                       +
                           "Shared Read Blocks": 36385,                                                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                           +
                           "Temp Written Blocks": 0,                                                                                                        +
                           "Plans": [                                                                                                                       +
                             {                                                                                                                              +
                               "Node Type": "Nested Loop",                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                              +
                               "Parallel Aware": false,                                                                                                     +
                               "Join Type": "Inner",                                                                                                        +
                               "Startup Cost": 0.06,                                                                                                        +
                               "Total Cost": 2098.95,                                                                                                       +
                               "Plan Rows": 1,                                                                                                              +
                               "Plan Width": 45,                                                                                                            +
                               "Actual Startup Time": 1726.249,                                                                                             +
                               "Actual Total Time": 4548.190,                                                                                               +
                               "Actual Rows": 275,                                                                                                          +
                               "Actual Loops": 1,                                                                                                           +
                               "Inner Unique": true,                                                                                                        +
                               "Shared Hit Blocks": 1769,                                                                                                   +
                               "Shared Read Blocks": 36380,                                                                                                 +
                               "Shared Dirtied Blocks": 0,                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                       +
                               "Temp Written Blocks": 0,                                                                                                    +
                               "Plans": [                                                                                                                   +
                                 {                                                                                                                          +
                                   "Node Type": "Nested Loop",                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                          +
                                   "Parallel Aware": false,                                                                                                 +
                                   "Join Type": "Inner",                                                                                                    +
                                   "Startup Cost": 0.04,                                                                                                    +
                                   "Total Cost": 2097.86,                                                                                                   +
                                   "Plan Rows": 1,                                                                                                          +
                                   "Plan Width": 49,                                                                                                        +
                                   "Actual Startup Time": 1701.126,                                                                                         +
                                   "Actual Total Time": 4116.485,                                                                                           +
                                   "Actual Rows": 275,                                                                                                      +
                                   "Actual Loops": 1,                                                                                                       +
                                   "Inner Unique": false,                                                                                                   +
                                   "Shared Hit Blocks": 732,                                                                                                +
                                   "Shared Read Blocks": 36317,                                                                                             +
                                   "Shared Dirtied Blocks": 0,                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                               +
                                   "Local Written Blocks": 0,                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                   +
                                   "Temp Written Blocks": 0,                                                                                                +
                                   "Plans": [                                                                                                               +
                                     {                                                                                                                      +
                                       "Node Type": "Nested Loop",                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                      +
                                       "Parallel Aware": false,                                                                                             +
                                       "Join Type": "Inner",                                                                                                +
                                       "Startup Cost": 0.03,                                                                                                +
                                       "Total Cost": 2097.49,                                                                                               +
                                       "Plan Rows": 1,                                                                                                      +
                                       "Plan Width": 45,                                                                                                    +
                                       "Actual Startup Time": 1673.649,                                                                                     +
                                       "Actual Total Time": 3268.264,                                                                                       +
                                       "Actual Rows": 100,                                                                                                  +
                                       "Actual Loops": 1,                                                                                                   +
                                       "Inner Unique": false,                                                                                               +
                                       "Join Filter": "(t.id = ci.movie_id)",                                                                               +
                                       "Rows Removed by Join Filter": 0,                                                                                    +
                                       "Shared Hit Blocks": 409,                                                                                            +
                                       "Shared Read Blocks": 36235,                                                                                         +
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
                                           "Startup Cost": 0.01,                                                                                            +
                                           "Total Cost": 2046.98,                                                                                           +
                                           "Plan Rows": 1,                                                                                                  +
                                           "Plan Width": 29,                                                                                                +
                                           "Actual Startup Time": 1642.278,                                                                                 +
                                           "Actual Total Time": 1971.903,                                                                                   +
                                           "Actual Rows": 4,                                                                                                +
                                           "Actual Loops": 1,                                                                                               +
                                           "Inner Unique": false,                                                                                           +
                                           "Shared Hit Blocks": 16,                                                                                         +
                                           "Shared Read Blocks": 36010,                                                                                     +
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
                                               "Node Type": "Seq Scan",                                                                                     +
                                               "Parent Relationship": "Outer",                                                                              +
                                               "Parallel Aware": false,                                                                                     +
                                               "Relation Name": "title",                                                                                    +
                                               "Alias": "t",                                                                                                +
                                               "Startup Cost": 0.00,                                                                                        +
                                               "Total Cost": 1892.85,                                                                                       +
                                               "Plan Rows": 18,                                                                                             +
                                               "Plan Width": 21,                                                                                            +
                                               "Actual Startup Time": 167.164,                                                                              +
                                               "Actual Total Time": 1812.063,                                                                               +
                                               "Actual Rows": 7,                                                                                            +
                                               "Actual Loops": 1,                                                                                           +
                                               "Filter": "((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))",+
                                               "Rows Removed by Filter": 2528305,                                                                           +
                                               "Shared Hit Blocks": 1,                                                                                      +
                                               "Shared Read Blocks": 35997,                                                                                 +
                                               "Shared Dirtied Blocks": 0,                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                       +
                                               "Local Read Blocks": 0,                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                   +
                                               "Local Written Blocks": 0,                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                       +
                                               "Temp Written Blocks": 0                                                                                     +
                                             },                                                                                                             +
                                             {                                                                                                              +
                                               "Node Type": "Index Scan",                                                                                   +
                                               "Parent Relationship": "Inner",                                                                              +
                                               "Parallel Aware": false,                                                                                     +
                                               "Scan Direction": "Forward",                                                                                 +
                                               "Index Name": "movie_id_movie_companies",                                                                    +
                                               "Relation Name": "movie_companies",                                                                          +
                                               "Alias": "mc",                                                                                               +
                                               "Startup Cost": 0.01,                                                                                        +
                                               "Total Cost": 8.56,                                                                                          +
                                               "Plan Rows": 1,                                                                                              +
                                               "Plan Width": 8,                                                                                             +
                                               "Actual Startup Time": 22.816,                                                                               +
                                               "Actual Total Time": 22.822,                                                                                 +
                                               "Actual Rows": 1,                                                                                            +
                                               "Actual Loops": 7,                                                                                           +
                                               "Index Cond": "(movie_id = t.id)",                                                                           +
                                               "Rows Removed by Index Recheck": 0,                                                                          +
                                               "Filter": "((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))", +
                                               "Rows Removed by Filter": 6,                                                                                 +
                                               "Shared Hit Blocks": 15,                                                                                     +
                                               "Shared Read Blocks": 13,                                                                                    +
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
                                         },                                                                                                                 +
                                         {                                                                                                                  +
                                           "Node Type": "Index Scan",                                                                                       +
                                           "Parent Relationship": "Inner",                                                                                  +
                                           "Parallel Aware": false,                                                                                         +
                                           "Scan Direction": "Forward",                                                                                     +
                                           "Index Name": "movie_id_cast_info",                                                                              +
                                           "Relation Name": "cast_info",                                                                                    +
                                           "Alias": "ci",                                                                                                   +
                                           "Startup Cost": 0.02,                                                                                            +
                                           "Total Cost": 10.10,                                                                                             +
                                           "Plan Rows": 1,                                                                                                  +
                                           "Plan Width": 16,                                                                                                +
                                           "Actual Startup Time": 7.869,                                                                                    +
                                           "Actual Total Time": 324.030,                                                                                    +
                                           "Actual Rows": 25,                                                                                               +
                                           "Actual Loops": 4,                                                                                               +
                                           "Index Cond": "(movie_id = mc.movie_id)",                                                                        +
                                           "Rows Removed by Index Recheck": 0,                                                                              +
                                           "Filter": "(note = '(voice)'::text)",                                                                            +
                                           "Rows Removed by Filter": 127,                                                                                   +
                                           "Shared Hit Blocks": 393,                                                                                        +
                                           "Shared Read Blocks": 225,                                                                                       +
                                           "Shared Dirtied Blocks": 0,                                                                                      +
                                           "Shared Written Blocks": 0,                                                                                      +
                                           "Local Hit Blocks": 0,                                                                                           +
                                           "Local Read Blocks": 0,                                                                                          +
                                           "Local Dirtied Blocks": 0,                                                                                       +
                                           "Local Written Blocks": 0,                                                                                       +
                                           "Temp Read Blocks": 0,                                                                                           +
                                           "Temp Written Blocks": 0                                                                                         +
                                         }                                                                                                                  +
                                       ]                                                                                                                    +
                                     },                                                                                                                     +
                                     {                                                                                                                      +
                                       "Node Type": "Index Scan",                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                      +
                                       "Parallel Aware": false,                                                                                             +
                                       "Scan Direction": "Forward",                                                                                         +
                                       "Index Name": "person_id_aka_name",                                                                                  +
                                       "Relation Name": "aka_name",                                                                                         +
                                       "Alias": "an",                                                                                                       +
                                       "Startup Cost": 0.01,                                                                                                +
                                       "Total Cost": 0.07,                                                                                                  +
                                       "Plan Rows": 2,                                                                                                      +
                                       "Plan Width": 4,                                                                                                     +
                                       "Actual Startup Time": 7.156,                                                                                        +
                                       "Actual Total Time": 8.475,                                                                                          +
                                       "Actual Rows": 3,                                                                                                    +
                                       "Actual Loops": 100,                                                                                                 +
                                       "Index Cond": "(person_id = ci.person_id)",                                                                          +
                                       "Rows Removed by Index Recheck": 0,                                                                                  +
                                       "Shared Hit Blocks": 323,                                                                                            +
                                       "Shared Read Blocks": 82,                                                                                            +
                                       "Shared Dirtied Blocks": 0,                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                               +
                                       "Local Read Blocks": 0,                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                           +
                                       "Local Written Blocks": 0,                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                               +
                                       "Temp Written Blocks": 0                                                                                             +
                                     }                                                                                                                      +
                                   ]                                                                                                                        +
                                 },                                                                                                                         +
                                 {                                                                                                                          +
                                   "Node Type": "Index Scan",                                                                                               +
                                   "Parent Relationship": "Inner",                                                                                          +
                                   "Parallel Aware": false,                                                                                                 +
                                   "Scan Direction": "Forward",                                                                                             +
                                   "Index Name": "char_name_pkey",                                                                                          +
                                   "Relation Name": "char_name",                                                                                            +
                                   "Alias": "chn",                                                                                                          +
                                   "Startup Cost": 0.01,                                                                                                    +
                                   "Total Cost": 0.22,                                                                                                      +
                                   "Plan Rows": 1,                                                                                                          +
                                   "Plan Width": 4,                                                                                                         +
                                   "Actual Startup Time": 1.567,                                                                                            +
                                   "Actual Total Time": 1.567,                                                                                              +
                                   "Actual Rows": 1,                                                                                                        +
                                   "Actual Loops": 275,                                                                                                     +
                                   "Index Cond": "(id = ci.person_role_id)",                                                                                +
                                   "Rows Removed by Index Recheck": 0,                                                                                      +
                                   "Shared Hit Blocks": 1037,                                                                                               +
                                   "Shared Read Blocks": 63,                                                                                                +
                                   "Shared Dirtied Blocks": 0,                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                               +
                                   "Local Written Blocks": 0,                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                   +
                                   "Temp Written Blocks": 0                                                                                                 +
                                 }                                                                                                                          +
                               ]                                                                                                                            +
                             },                                                                                                                             +
                             {                                                                                                                              +
                               "Node Type": "Index Scan",                                                                                                   +
                               "Parent Relationship": "Inner",                                                                                              +
                               "Parallel Aware": false,                                                                                                     +
                               "Scan Direction": "Forward",                                                                                                 +
                               "Index Name": "company_name_pkey",                                                                                           +
                               "Relation Name": "company_name",                                                                                             +
                               "Alias": "cn",                                                                                                               +
                               "Startup Cost": 0.01,                                                                                                        +
                               "Total Cost": 0.14,                                                                                                          +
                               "Plan Rows": 1,                                                                                                              +
                               "Plan Width": 4,                                                                                                             +
                               "Actual Startup Time": 0.475,                                                                                                +
                               "Actual Total Time": 0.475,                                                                                                  +
                               "Actual Rows": 1,                                                                                                            +
                               "Actual Loops": 275,                                                                                                         +
                               "Index Cond": "(id = mc.company_id)",                                                                                        +
                               "Rows Removed by Index Recheck": 0,                                                                                          +
                               "Filter": "((country_code)::text = '[us]'::text)",                                                                           +
                               "Rows Removed by Filter": 0,                                                                                                 +
                               "Shared Hit Blocks": 1095,                                                                                                   +
                               "Shared Read Blocks": 5,                                                                                                     +
                               "Shared Dirtied Blocks": 0,                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                       +
                               "Temp Written Blocks": 0                                                                                                     +
                             }                                                                                                                              +
                           ]                                                                                                                                +
                         },                                                                                                                                 +
                         {                                                                                                                                  +
                           "Node Type": "Index Scan",                                                                                                       +
                           "Parent Relationship": "Inner",                                                                                                  +
                           "Parallel Aware": false,                                                                                                         +
                           "Scan Direction": "Forward",                                                                                                     +
                           "Index Name": "movie_id_movie_info",                                                                                             +
                           "Relation Name": "movie_info",                                                                                                   +
                           "Alias": "mi",                                                                                                                   +
                           "Startup Cost": 0.01,                                                                                                            +
                           "Total Cost": 0.89,                                                                                                              +
                           "Plan Rows": 1,                                                                                                                  +
                           "Plan Width": 8,                                                                                                                 +
                           "Actual Startup Time": 0.280,                                                                                                    +
                           "Actual Total Time": 1.059,                                                                                                      +
                           "Actual Rows": 1,                                                                                                                +
                           "Actual Loops": 275,                                                                                                             +
                           "Index Cond": "(movie_id = ci.movie_id)",                                                                                        +
                           "Rows Removed by Index Recheck": 0,                                                                                              +
                           "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))",                           +
                           "Rows Removed by Filter": 295,                                                                                                   +
                           "Shared Hit Blocks": 7623,                                                                                                       +
                           "Shared Read Blocks": 34,                                                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                           +
                           "Temp Written Blocks": 0                                                                                                         +
                         }                                                                                                                                  +
                       ]                                                                                                                                    +
                     },                                                                                                                                     +
                     {                                                                                                                                      +
                       "Node Type": "Materialize",                                                                                                          +
                       "Parent Relationship": "Inner",                                                                                                      +
                       "Parallel Aware": false,                                                                                                             +
                       "Startup Cost": 0.00,                                                                                                                +
                       "Total Cost": 0.05,                                                                                                                  +
                       "Plan Rows": 1,                                                                                                                      +
                       "Plan Width": 4,                                                                                                                     +
                       "Actual Startup Time": 0.000,                                                                                                        +
                       "Actual Total Time": 0.000,                                                                                                          +
                       "Actual Rows": 1,                                                                                                                    +
                       "Actual Loops": 275,                                                                                                                 +
                       "Shared Hit Blocks": 1,                                                                                                              +
                       "Shared Read Blocks": 0,                                                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                               +
                       "Temp Written Blocks": 0,                                                                                                            +
                       "Plans": [                                                                                                                           +
                         {                                                                                                                                  +
                           "Node Type": "Seq Scan",                                                                                                         +
                           "Parent Relationship": "Outer",                                                                                                  +
                           "Parallel Aware": false,                                                                                                         +
                           "Relation Name": "info_type",                                                                                                    +
                           "Alias": "it",                                                                                                                   +
                           "Startup Cost": 0.00,                                                                                                            +
                           "Total Cost": 0.05,                                                                                                              +
                           "Plan Rows": 1,                                                                                                                  +
                           "Plan Width": 4,                                                                                                                 +
                           "Actual Startup Time": 0.028,                                                                                                    +
                           "Actual Total Time": 0.028,                                                                                                      +
                           "Actual Rows": 1,                                                                                                                +
                           "Actual Loops": 1,                                                                                                               +
                           "Filter": "((info)::text = 'release dates'::text)",                                                                              +
                           "Rows Removed by Filter": 15,                                                                                                    +
                           "Shared Hit Blocks": 1,                                                                                                          +
                           "Shared Read Blocks": 0,                                                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                           +
                           "Temp Written Blocks": 0                                                                                                         +
                         }                                                                                                                                  +
                       ]                                                                                                                                    +
                     }                                                                                                                                      +
                   ]                                                                                                                                        +
                 },                                                                                                                                         +
                 {                                                                                                                                          +
                   "Node Type": "Index Scan",                                                                                                               +
                   "Parent Relationship": "Inner",                                                                                                          +
                   "Parallel Aware": false,                                                                                                                 +
                   "Scan Direction": "Forward",                                                                                                             +
                   "Index Name": "name_pkey",                                                                                                               +
                   "Relation Name": "name",                                                                                                                 +
                   "Alias": "n",                                                                                                                            +
                   "Startup Cost": 0.01,                                                                                                                    +
                   "Total Cost": 0.25,                                                                                                                      +
                   "Plan Rows": 1,                                                                                                                          +
                   "Plan Width": 19,                                                                                                                        +
                   "Actual Startup Time": 1.377,                                                                                                            +
                   "Actual Total Time": 1.377,                                                                                                              +
                   "Actual Rows": 0,                                                                                                                        +
                   "Actual Loops": 275,                                                                                                                     +
                   "Index Cond": "(id = an.person_id)",                                                                                                     +
                   "Rows Removed by Index Recheck": 0,                                                                                                      +
                   "Filter": "((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))",                                                                +
                   "Rows Removed by Filter": 1,                                                                                                             +
                   "Shared Hit Blocks": 1039,                                                                                                               +
                   "Shared Read Blocks": 61,                                                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                   +
                   "Temp Written Blocks": 0                                                                                                                 +
                 }                                                                                                                                          +
               ]                                                                                                                                            +
             },                                                                                                                                             +
             {                                                                                                                                              +
               "Node Type": "Materialize",                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                              +
               "Parallel Aware": false,                                                                                                                     +
               "Startup Cost": 0.00,                                                                                                                        +
               "Total Cost": 0.03,                                                                                                                          +
               "Plan Rows": 1,                                                                                                                              +
               "Plan Width": 4,                                                                                                                             +
               "Actual Startup Time": 0.002,                                                                                                                +
               "Actual Total Time": 0.002,                                                                                                                  +
               "Actual Rows": 1,                                                                                                                            +
               "Actual Loops": 15,                                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                                      +
               "Shared Read Blocks": 0,                                                                                                                     +
               "Shared Dirtied Blocks": 0,                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                       +
               "Temp Written Blocks": 0,                                                                                                                    +
               "Plans": [                                                                                                                                   +
                 {                                                                                                                                          +
                   "Node Type": "Seq Scan",                                                                                                                 +
                   "Parent Relationship": "Outer",                                                                                                          +
                   "Parallel Aware": false,                                                                                                                 +
                   "Relation Name": "role_type",                                                                                                            +
                   "Alias": "rt",                                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                                    +
                   "Total Cost": 0.03,                                                                                                                      +
                   "Plan Rows": 1,                                                                                                                          +
                   "Plan Width": 4,                                                                                                                         +
                   "Actual Startup Time": 0.014,                                                                                                            +
                   "Actual Total Time": 0.014,                                                                                                              +
                   "Actual Rows": 1,                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                       +
                   "Filter": "((role)::text = 'actress'::text)",                                                                                            +
                   "Rows Removed by Filter": 1,                                                                                                             +
                   "Shared Hit Blocks": 1,                                                                                                                  +
                   "Shared Read Blocks": 0,                                                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                   +
                   "Temp Written Blocks": 0                                                                                                                 +
                 }                                                                                                                                          +
               ]                                                                                                                                            +
             }                                                                                                                                              +
           ]                                                                                                                                                +
         }                                                                                                                                                  +
       ]                                                                                                                                                    +
     },                                                                                                                                                     +
     "Planning Time": 7372.254,                                                                                                                             +
     "Triggers": [                                                                                                                                          +
     ],                                                                                                                                                     +
     "Execution Time": 5352.081                                                                                                                             +
   }                                                                                                                                                        +
 ]
(1 row)
