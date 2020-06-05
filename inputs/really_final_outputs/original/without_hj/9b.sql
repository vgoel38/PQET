                                                               QUERY PLAN                                                               
----------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                     +
   {                                                                                                                                   +
     "Plan": {                                                                                                                         +
       "Node Type": "Aggregate",                                                                                                       +
       "Strategy": "Plain",                                                                                                            +
       "Partial Mode": "Simple",                                                                                                       +
       "Parallel Aware": false,                                                                                                        +
       "Startup Cost": 6748.93,                                                                                                        +
       "Total Cost": 6748.93,                                                                                                          +
       "Plan Rows": 1,                                                                                                                 +
       "Plan Width": 128,                                                                                                              +
       "Actual Startup Time": 19613.577,                                                                                               +
       "Actual Total Time": 19613.578,                                                                                                 +
       "Actual Rows": 1,                                                                                                               +
       "Actual Loops": 1,                                                                                                              +
       "Shared Hit Blocks": 7711,                                                                                                      +
       "Shared Read Blocks": 69079,                                                                                                    +
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
           "Startup Cost": 5873.06,                                                                                                    +
           "Total Cost": 6748.93,                                                                                                      +
           "Plan Rows": 1,                                                                                                             +
           "Plan Width": 64,                                                                                                           +
           "Actual Startup Time": 5344.350,                                                                                            +
           "Actual Total Time": 19613.340,                                                                                             +
           "Actual Rows": 40,                                                                                                          +
           "Actual Loops": 1,                                                                                                          +
           "Inner Unique": true,                                                                                                       +
           "Shared Hit Blocks": 7711,                                                                                                  +
           "Shared Read Blocks": 69079,                                                                                                +
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
               "Startup Cost": 5873.04,                                                                                                +
               "Total Cost": 6747.93,                                                                                                  +
               "Plan Rows": 1,                                                                                                         +
               "Plan Width": 55,                                                                                                       +
               "Actual Startup Time": 3980.699,                                                                                        +
               "Actual Total Time": 18231.159,                                                                                         +
               "Actual Rows": 94,                                                                                                      +
               "Actual Loops": 1,                                                                                                      +
               "Inner Unique": true,                                                                                                   +
               "Shared Hit Blocks": 7409,                                                                                              +
               "Shared Read Blocks": 69005,                                                                                            +
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
                   "Node Type": "Nested Loop",                                                                                         +
                   "Parent Relationship": "Outer",                                                                                     +
                   "Parallel Aware": false,                                                                                            +
                   "Join Type": "Inner",                                                                                               +
                   "Startup Cost": 5873.03,                                                                                            +
                   "Total Cost": 6747.26,                                                                                              +
                   "Plan Rows": 1,                                                                                                     +
                   "Plan Width": 59,                                                                                                   +
                   "Actual Startup Time": 3937.233,                                                                                    +
                   "Actual Total Time": 17486.146,                                                                                     +
                   "Actual Rows": 94,                                                                                                  +
                   "Actual Loops": 1,                                                                                                  +
                   "Inner Unique": true,                                                                                               +
                   "Shared Hit Blocks": 7083,                                                                                          +
                   "Shared Read Blocks": 68955,                                                                                        +
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
                       "Startup Cost": 5873.02,                                                                                        +
                       "Total Cost": 6746.82,                                                                                          +
                       "Plan Rows": 2,                                                                                                 +
                       "Plan Width": 47,                                                                                               +
                       "Actual Startup Time": 3929.570,                                                                                +
                       "Actual Total Time": 17141.903,                                                                                 +
                       "Actual Rows": 103,                                                                                             +
                       "Actual Loops": 1,                                                                                              +
                       "Inner Unique": false,                                                                                          +
                       "Shared Hit Blocks": 6768,                                                                                      +
                       "Shared Read Blocks": 68894,                                                                                    +
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
                           "Startup Cost": 5873.00,                                                                                    +
                           "Total Cost": 6742.55,                                                                                      +
                           "Plan Rows": 34,                                                                                            +
                           "Plan Width": 39,                                                                                           +
                           "Actual Startup Time": 3898.105,                                                                            +
                           "Actual Total Time": 14297.165,                                                                             +
                           "Actual Rows": 265,                                                                                         +
                           "Actual Loops": 1,                                                                                          +
                           "Inner Unique": true,                                                                                       +
                           "Join Filter": "(ci.role_id = rt.id)",                                                                      +
                           "Rows Removed by Join Filter": 0,                                                                           +
                           "Shared Hit Blocks": 5884,                                                                                  +
                           "Shared Read Blocks": 68633,                                                                                +
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
                               "Startup Cost": 5873.00,                                                                                +
                               "Total Cost": 6742.42,                                                                                  +
                               "Plan Rows": 410,                                                                                       +
                               "Plan Width": 43,                                                                                       +
                               "Actual Startup Time": 3898.080,                                                                        +
                               "Actual Total Time": 14296.464,                                                                         +
                               "Actual Rows": 265,                                                                                     +
                               "Actual Loops": 1,                                                                                      +
                               "Inner Unique": false,                                                                                  +
                               "Join Filter": "(n.id = ci.person_id)",                                                                 +
                               "Rows Removed by Join Filter": 0,                                                                       +
                               "Shared Hit Blocks": 5883,                                                                              +
                               "Shared Read Blocks": 68633,                                                                            +
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
                                   "Node Type": "Merge Join",                                                                          +
                                   "Parent Relationship": "Outer",                                                                     +
                                   "Parallel Aware": false,                                                                            +
                                   "Join Type": "Inner",                                                                               +
                                   "Startup Cost": 5872.99,                                                                            +
                                   "Total Cost": 6013.42,                                                                              +
                                   "Plan Rows": 597,                                                                                   +
                                   "Plan Width": 39,                                                                                   +
                                   "Actual Startup Time": 3497.546,                                                                    +
                                   "Actual Total Time": 3618.637,                                                                      +
                                   "Actual Rows": 1296,                                                                                +
                                   "Actual Loops": 1,                                                                                  +
                                   "Inner Unique": true,                                                                               +
                                   "Merge Cond": "(an.person_id = n.id)",                                                              +
                                   "Shared Hit Blocks": 8,                                                                             +
                                   "Shared Read Blocks": 67004,                                                                        +
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
                                       "Node Type": "Sort",                                                                            +
                                       "Parent Relationship": "Outer",                                                                 +
                                       "Parallel Aware": false,                                                                        +
                                       "Startup Cost": 3188.40,                                                                        +
                                       "Total Cost": 3258.38,                                                                          +
                                       "Plan Rows": 901343,                                                                            +
                                       "Plan Width": 20,                                                                               +
                                       "Actual Startup Time": 784.203,                                                                 +
                                       "Actual Total Time": 848.643,                                                                   +
                                       "Actual Rows": 578344,                                                                          +
                                       "Actual Loops": 1,                                                                              +
                                       "Sort Key": ["an.person_id"],                                                                   +
                                       "Sort Method": "quicksort",                                                                     +
                                       "Sort Space Used": 89763,                                                                       +
                                       "Sort Space Type": "Memory",                                                                    +
                                       "Shared Hit Blocks": 6,                                                                         +
                                       "Shared Read Blocks": 11393,                                                                    +
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
                                           "Node Type": "Seq Scan",                                                                    +
                                           "Parent Relationship": "Outer",                                                             +
                                           "Parallel Aware": false,                                                                    +
                                           "Relation Name": "aka_name",                                                                +
                                           "Alias": "an",                                                                              +
                                           "Startup Cost": 0.00,                                                                       +
                                           "Total Cost": 419.75,                                                                       +
                                           "Plan Rows": 901343,                                                                        +
                                           "Plan Width": 20,                                                                           +
                                           "Actual Startup Time": 0.015,                                                               +
                                           "Actual Total Time": 336.274,                                                               +
                                           "Actual Rows": 901343,                                                                      +
                                           "Actual Loops": 1,                                                                          +
                                           "Shared Hit Blocks": 2,                                                                     +
                                           "Shared Read Blocks": 11393,                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                 +
                                           "Shared Written Blocks": 0,                                                                 +
                                           "Local Hit Blocks": 0,                                                                      +
                                           "Local Read Blocks": 0,                                                                     +
                                           "Local Dirtied Blocks": 0,                                                                  +
                                           "Local Written Blocks": 0,                                                                  +
                                           "Temp Read Blocks": 0,                                                                      +
                                           "Temp Written Blocks": 0                                                                    +
                                         }                                                                                             +
                                       ]                                                                                               +
                                     },                                                                                                +
                                     {                                                                                                 +
                                       "Node Type": "Sort",                                                                            +
                                       "Parent Relationship": "Inner",                                                                 +
                                       "Parallel Aware": false,                                                                        +
                                       "Startup Cost": 2684.59,                                                                        +
                                       "Total Cost": 2684.80,                                                                          +
                                       "Plan Rows": 2762,                                                                              +
                                       "Plan Width": 19,                                                                               +
                                       "Actual Startup Time": 2651.785,                                                                +
                                       "Actual Total Time": 2653.281,                                                                  +
                                       "Actual Rows": 5409,                                                                            +
                                       "Actual Loops": 1,                                                                              +
                                       "Sort Key": ["n.id"],                                                                           +
                                       "Sort Method": "quicksort",                                                                     +
                                       "Sort Space Used": 603,                                                                         +
                                       "Sort Space Type": "Memory",                                                                    +
                                       "Shared Hit Blocks": 2,                                                                         +
                                       "Shared Read Blocks": 55611,                                                                    +
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
                                           "Node Type": "Seq Scan",                                                                    +
                                           "Parent Relationship": "Outer",                                                             +
                                           "Parallel Aware": false,                                                                    +
                                           "Relation Name": "name",                                                                    +
                                           "Alias": "n",                                                                               +
                                           "Startup Cost": 0.00,                                                                       +
                                           "Total Cost": 2679.69,                                                                      +
                                           "Plan Rows": 2762,                                                                          +
                                           "Plan Width": 19,                                                                           +
                                           "Actual Startup Time": 1142.985,                                                            +
                                           "Actual Total Time": 2648.307,                                                              +
                                           "Actual Rows": 5409,                                                                        +
                                           "Actual Loops": 1,                                                                          +
                                           "Filter": "((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))",                   +
                                           "Rows Removed by Filter": 4162082,                                                          +
                                           "Shared Hit Blocks": 2,                                                                     +
                                           "Shared Read Blocks": 55611,                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                 +
                                           "Shared Written Blocks": 0,                                                                 +
                                           "Local Hit Blocks": 0,                                                                      +
                                           "Local Read Blocks": 0,                                                                     +
                                           "Local Dirtied Blocks": 0,                                                                  +
                                           "Local Written Blocks": 0,                                                                  +
                                           "Temp Read Blocks": 0,                                                                      +
                                           "Temp Written Blocks": 0                                                                    +
                                         }                                                                                             +
                                       ]                                                                                               +
                                     }                                                                                                 +
                                   ]                                                                                                   +
                                 },                                                                                                    +
                                 {                                                                                                     +
                                   "Node Type": "Index Scan",                                                                          +
                                   "Parent Relationship": "Inner",                                                                     +
                                   "Parallel Aware": false,                                                                            +
                                   "Scan Direction": "Forward",                                                                        +
                                   "Index Name": "person_id_cast_info",                                                                +
                                   "Relation Name": "cast_info",                                                                       +
                                   "Alias": "ci",                                                                                      +
                                   "Startup Cost": 0.02,                                                                               +
                                   "Total Cost": 1.22,                                                                                 +
                                   "Plan Rows": 1,                                                                                     +
                                   "Plan Width": 16,                                                                                   +
                                   "Actual Startup Time": 8.096,                                                                       +
                                   "Actual Total Time": 8.236,                                                                         +
                                   "Actual Rows": 0,                                                                                   +
                                   "Actual Loops": 1296,                                                                               +
                                   "Index Cond": "(person_id = an.person_id)",                                                         +
                                   "Rows Removed by Index Recheck": 0,                                                                 +
                                   "Filter": "(note = '(voice)'::text)",                                                               +
                                   "Rows Removed by Filter": 43,                                                                       +
                                   "Shared Hit Blocks": 5875,                                                                          +
                                   "Shared Read Blocks": 1629,                                                                         +
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
                               "Node Type": "Materialize",                                                                             +
                               "Parent Relationship": "Inner",                                                                         +
                               "Parallel Aware": false,                                                                                +
                               "Startup Cost": 0.00,                                                                                   +
                               "Total Cost": 0.03,                                                                                     +
                               "Plan Rows": 1,                                                                                         +
                               "Plan Width": 4,                                                                                        +
                               "Actual Startup Time": 0.001,                                                                           +
                               "Actual Total Time": 0.001,                                                                             +
                               "Actual Rows": 1,                                                                                       +
                               "Actual Loops": 265,                                                                                    +
                               "Shared Hit Blocks": 1,                                                                                 +
                               "Shared Read Blocks": 0,                                                                                +
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
                                   "Node Type": "Seq Scan",                                                                            +
                                   "Parent Relationship": "Outer",                                                                     +
                                   "Parallel Aware": false,                                                                            +
                                   "Relation Name": "role_type",                                                                       +
                                   "Alias": "rt",                                                                                      +
                                   "Startup Cost": 0.00,                                                                               +
                                   "Total Cost": 0.03,                                                                                 +
                                   "Plan Rows": 1,                                                                                     +
                                   "Plan Width": 4,                                                                                    +
                                   "Actual Startup Time": 0.015,                                                                       +
                                   "Actual Total Time": 0.016,                                                                         +
                                   "Actual Rows": 1,                                                                                   +
                                   "Actual Loops": 1,                                                                                  +
                                   "Filter": "((role)::text = 'actress'::text)",                                                       +
                                   "Rows Removed by Filter": 1,                                                                        +
                                   "Shared Hit Blocks": 1,                                                                             +
                                   "Shared Read Blocks": 0,                                                                            +
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
                             }                                                                                                         +
                           ]                                                                                                           +
                         },                                                                                                            +
                         {                                                                                                             +
                           "Node Type": "Index Scan",                                                                                  +
                           "Parent Relationship": "Inner",                                                                             +
                           "Parallel Aware": false,                                                                                    +
                           "Scan Direction": "Forward",                                                                                +
                           "Index Name": "movie_id_movie_companies",                                                                   +
                           "Relation Name": "movie_companies",                                                                         +
                           "Alias": "mc",                                                                                              +
                           "Startup Cost": 0.01,                                                                                       +
                           "Total Cost": 0.13,                                                                                         +
                           "Plan Rows": 1,                                                                                             +
                           "Plan Width": 8,                                                                                            +
                           "Actual Startup Time": 9.859,                                                                               +
                           "Actual Total Time": 10.731,                                                                                +
                           "Actual Rows": 0,                                                                                           +
                           "Actual Loops": 265,                                                                                        +
                           "Index Cond": "(movie_id = ci.movie_id)",                                                                   +
                           "Rows Removed by Index Recheck": 0,                                                                         +
                           "Filter": "((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))",+
                           "Rows Removed by Filter": 4,                                                                                +
                           "Shared Hit Blocks": 884,                                                                                   +
                           "Shared Read Blocks": 261,                                                                                  +
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
                     },                                                                                                                +
                     {                                                                                                                 +
                       "Node Type": "Index Scan",                                                                                      +
                       "Parent Relationship": "Inner",                                                                                 +
                       "Parallel Aware": false,                                                                                        +
                       "Scan Direction": "Forward",                                                                                    +
                       "Index Name": "char_name_pkey",                                                                                 +
                       "Relation Name": "char_name",                                                                                   +
                       "Alias": "chn",                                                                                                 +
                       "Startup Cost": 0.01,                                                                                           +
                       "Total Cost": 0.22,                                                                                             +
                       "Plan Rows": 1,                                                                                                 +
                       "Plan Width": 20,                                                                                               +
                       "Actual Startup Time": 3.336,                                                                                   +
                       "Actual Total Time": 3.336,                                                                                     +
                       "Actual Rows": 1,                                                                                               +
                       "Actual Loops": 103,                                                                                            +
                       "Index Cond": "(id = ci.person_role_id)",                                                                       +
                       "Rows Removed by Index Recheck": 0,                                                                             +
                       "Shared Hit Blocks": 315,                                                                                       +
                       "Shared Read Blocks": 61,                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                     +
                       "Shared Written Blocks": 0,                                                                                     +
                       "Local Hit Blocks": 0,                                                                                          +
                       "Local Read Blocks": 0,                                                                                         +
                       "Local Dirtied Blocks": 0,                                                                                      +
                       "Local Written Blocks": 0,                                                                                      +
                       "Temp Read Blocks": 0,                                                                                          +
                       "Temp Written Blocks": 0                                                                                        +
                     }                                                                                                                 +
                   ]                                                                                                                   +
                 },                                                                                                                    +
                 {                                                                                                                     +
                   "Node Type": "Index Scan",                                                                                          +
                   "Parent Relationship": "Inner",                                                                                     +
                   "Parallel Aware": false,                                                                                            +
                   "Scan Direction": "Forward",                                                                                        +
                   "Index Name": "company_name_pkey",                                                                                  +
                   "Relation Name": "company_name",                                                                                    +
                   "Alias": "cn",                                                                                                      +
                   "Startup Cost": 0.01,                                                                                               +
                   "Total Cost": 0.14,                                                                                                 +
                   "Plan Rows": 1,                                                                                                     +
                   "Plan Width": 4,                                                                                                    +
                   "Actual Startup Time": 7.920,                                                                                       +
                   "Actual Total Time": 7.920,                                                                                         +
                   "Actual Rows": 1,                                                                                                   +
                   "Actual Loops": 94,                                                                                                 +
                   "Index Cond": "(id = mc.company_id)",                                                                               +
                   "Rows Removed by Index Recheck": 0,                                                                                 +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                  +
                   "Rows Removed by Filter": 0,                                                                                        +
                   "Shared Hit Blocks": 326,                                                                                           +
                   "Shared Read Blocks": 50,                                                                                           +
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
             },                                                                                                                        +
             {                                                                                                                         +
               "Node Type": "Index Scan",                                                                                              +
               "Parent Relationship": "Inner",                                                                                         +
               "Parallel Aware": false,                                                                                                +
               "Scan Direction": "Forward",                                                                                            +
               "Index Name": "title_idx_id",                                                                                           +
               "Relation Name": "title",                                                                                               +
               "Alias": "t",                                                                                                           +
               "Startup Cost": 0.01,                                                                                                   +
               "Total Cost": 0.20,                                                                                                     +
               "Plan Rows": 1,                                                                                                         +
               "Plan Width": 21,                                                                                                       +
               "Actual Startup Time": 14.700,                                                                                          +
               "Actual Total Time": 14.700,                                                                                            +
               "Actual Rows": 0,                                                                                                       +
               "Actual Loops": 94,                                                                                                     +
               "Index Cond": "(id = ci.movie_id)",                                                                                     +
               "Rows Removed by Index Recheck": 0,                                                                                     +
               "Filter": "((production_year >= 2007) AND (production_year <= 2010))",                                                  +
               "Rows Removed by Filter": 1,                                                                                            +
               "Shared Hit Blocks": 302,                                                                                               +
               "Shared Read Blocks": 74,                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                             +
               "Shared Written Blocks": 0,                                                                                             +
               "Local Hit Blocks": 0,                                                                                                  +
               "Local Read Blocks": 0,                                                                                                 +
               "Local Dirtied Blocks": 0,                                                                                              +
               "Local Written Blocks": 0,                                                                                              +
               "Temp Read Blocks": 0,                                                                                                  +
               "Temp Written Blocks": 0                                                                                                +
             }                                                                                                                         +
           ]                                                                                                                           +
         }                                                                                                                             +
       ]                                                                                                                               +
     },                                                                                                                                +
     "Planning Time": 4603.858,                                                                                                        +
     "Triggers": [                                                                                                                     +
     ],                                                                                                                                +
     "Execution Time": 19619.957                                                                                                       +
   }                                                                                                                                   +
 ]
(1 row)
