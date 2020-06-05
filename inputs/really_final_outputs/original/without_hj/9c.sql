                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                    +
   {                                                                                                                                                                  +
     "Plan": {                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                       +
       "Startup Cost": 16236.98,                                                                                                                                      +
       "Total Cost": 16236.98,                                                                                                                                        +
       "Plan Rows": 1,                                                                                                                                                +
       "Plan Width": 128,                                                                                                                                             +
       "Actual Startup Time": 100950.134,                                                                                                                             +
       "Actual Total Time": 100950.134,                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                             +
       "Shared Hit Blocks": 208210,                                                                                                                                   +
       "Shared Read Blocks": 87314,                                                                                                                                   +
       "Shared Dirtied Blocks": 0,                                                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                                                         +
       "Local Read Blocks": 0,                                                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                                                     +
       "Local Written Blocks": 0,                                                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                                                      +
       "Plans": [                                                                                                                                                     +
         {                                                                                                                                                            +
           "Node Type": "Nested Loop",                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                            +
           "Parallel Aware": false,                                                                                                                                   +
           "Join Type": "Inner",                                                                                                                                      +
           "Startup Cost": 5957.17,                                                                                                                                   +
           "Total Cost": 16236.92,                                                                                                                                    +
           "Plan Rows": 191,                                                                                                                                          +
           "Plan Width": 64,                                                                                                                                          +
           "Actual Startup Time": 4354.098,                                                                                                                           +
           "Actual Total Time": 100918.722,                                                                                                                           +
           "Actual Rows": 8144,                                                                                                                                       +
           "Actual Loops": 1,                                                                                                                                         +
           "Inner Unique": true,                                                                                                                                      +
           "Join Filter": "(ci.movie_id = t.id)",                                                                                                                     +
           "Rows Removed by Join Filter": 0,                                                                                                                          +
           "Shared Hit Blocks": 208210,                                                                                                                               +
           "Shared Read Blocks": 87314,                                                                                                                               +
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
               "Startup Cost": 5957.16,                                                                                                                               +
               "Total Cost": 16224.69,                                                                                                                                +
               "Plan Rows": 191,                                                                                                                                      +
               "Plan Width": 55,                                                                                                                                      +
               "Actual Startup Time": 4312.710,                                                                                                                       +
               "Actual Total Time": 79955.575,                                                                                                                        +
               "Actual Rows": 8144,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                     +
               "Inner Unique": true,                                                                                                                                  +
               "Shared Hit Blocks": 177006,                                                                                                                           +
               "Shared Read Blocks": 85937,                                                                                                                           +
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
                   "Startup Cost": 5957.14,                                                                                                                           +
                   "Total Cost": 16215.26,                                                                                                                            +
                   "Plan Rows": 529,                                                                                                                                  +
                   "Plan Width": 59,                                                                                                                                  +
                   "Actual Startup Time": 3829.569,                                                                                                                   +
                   "Actual Total Time": 66065.420,                                                                                                                    +
                   "Actual Rows": 18345,                                                                                                                              +
                   "Actual Loops": 1,                                                                                                                                 +
                   "Inner Unique": false,                                                                                                                             +
                   "Shared Hit Blocks": 105236,                                                                                                                       +
                   "Shared Read Blocks": 84294,                                                                                                                       +
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
                       "Startup Cost": 5957.13,                                                                                                                       +
                       "Total Cost": 16186.23,                                                                                                                        +
                       "Plan Rows": 275,                                                                                                                              +
                       "Plan Width": 51,                                                                                                                              +
                       "Actual Startup Time": 3788.724,                                                                                                               +
                       "Actual Total Time": 41864.436,                                                                                                                +
                       "Actual Rows": 7726,                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                             +
                       "Inner Unique": true,                                                                                                                          +
                       "Shared Hit Blocks": 77342,                                                                                                                    +
                       "Shared Read Blocks": 82220,                                                                                                                   +
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
                           "Startup Cost": 5957.12,                                                                                                                   +
                           "Total Cost": 16082.85,                                                                                                                    +
                           "Plan Rows": 568,                                                                                                                          +
                           "Plan Width": 39,                                                                                                                          +
                           "Actual Startup Time": 3763.353,                                                                                                           +
                           "Actual Total Time": 31169.791,                                                                                                            +
                           "Actual Rows": 8204,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                         +
                           "Inner Unique": true,                                                                                                                      +
                           "Join Filter": "(ci.role_id = rt.id)",                                                                                                     +
                           "Rows Removed by Join Filter": 0,                                                                                                          +
                           "Shared Hit Blocks": 48041,                                                                                                                +
                           "Shared Read Blocks": 80605,                                                                                                               +
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
                               "Startup Cost": 5957.12,                                                                                                               +
                               "Total Cost": 16081.29,                                                                                                                +
                               "Plan Rows": 6810,                                                                                                                     +
                               "Plan Width": 43,                                                                                                                      +
                               "Actual Startup Time": 3763.327,                                                                                                       +
                               "Actual Total Time": 31155.525,                                                                                                        +
                               "Actual Rows": 8204,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                     +
                               "Inner Unique": false,                                                                                                                 +
                               "Join Filter": "(n.id = ci.person_id)",                                                                                                +
                               "Rows Removed by Join Filter": 0,                                                                                                      +
                               "Shared Hit Blocks": 48040,                                                                                                            +
                               "Shared Read Blocks": 80605,                                                                                                           +
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
                                   "Node Type": "Merge Join",                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                    +
                                   "Parallel Aware": false,                                                                                                           +
                                   "Join Type": "Inner",                                                                                                              +
                                   "Startup Cost": 5957.10,                                                                                                           +
                                   "Total Cost": 6103.48,                                                                                                             +
                                   "Plan Rows": 8155,                                                                                                                 +
                                   "Plan Width": 39,                                                                                                                  +
                                   "Actual Startup Time": 3461.272,                                                                                                   +
                                   "Actual Total Time": 3643.234,                                                                                                     +
                                   "Actual Rows": 10525,                                                                                                              +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Inner Unique": true,                                                                                                              +
                                   "Merge Cond": "(an.person_id = n.id)",                                                                                             +
                                   "Shared Hit Blocks": 8,                                                                                                            +
                                   "Shared Read Blocks": 67004,                                                                                                       +
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
                                       "Node Type": "Sort",                                                                                                           +
                                       "Parent Relationship": "Outer",                                                                                                +
                                       "Parallel Aware": false,                                                                                                       +
                                       "Startup Cost": 3188.40,                                                                                                       +
                                       "Total Cost": 3258.38,                                                                                                         +
                                       "Plan Rows": 901343,                                                                                                           +
                                       "Plan Width": 20,                                                                                                              +
                                       "Actual Startup Time": 776.689,                                                                                                +
                                       "Actual Total Time": 849.103,                                                                                                  +
                                       "Actual Rows": 578866,                                                                                                         +
                                       "Actual Loops": 1,                                                                                                             +
                                       "Sort Key": ["an.person_id"],                                                                                                  +
                                       "Sort Method": "quicksort",                                                                                                    +
                                       "Sort Space Used": 89763,                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                   +
                                       "Shared Hit Blocks": 6,                                                                                                        +
                                       "Shared Read Blocks": 11393,                                                                                                   +
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
                                           "Node Type": "Seq Scan",                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Relation Name": "aka_name",                                                                                               +
                                           "Alias": "an",                                                                                                             +
                                           "Startup Cost": 0.00,                                                                                                      +
                                           "Total Cost": 419.75,                                                                                                      +
                                           "Plan Rows": 901343,                                                                                                       +
                                           "Plan Width": 20,                                                                                                          +
                                           "Actual Startup Time": 0.018,                                                                                              +
                                           "Actual Total Time": 335.152,                                                                                              +
                                           "Actual Rows": 901343,                                                                                                     +
                                           "Actual Loops": 1,                                                                                                         +
                                           "Shared Hit Blocks": 2,                                                                                                    +
                                           "Shared Read Blocks": 11393,                                                                                               +
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
                                       "Node Type": "Sort",                                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                                +
                                       "Parallel Aware": false,                                                                                                       +
                                       "Startup Cost": 2768.70,                                                                                                       +
                                       "Total Cost": 2771.63,                                                                                                         +
                                       "Plan Rows": 37708,                                                                                                            +
                                       "Plan Width": 19,                                                                                                              +
                                       "Actual Startup Time": 2619.121,                                                                                               +
                                       "Actual Total Time": 2633.364,                                                                                                 +
                                       "Actual Rows": 50011,                                                                                                          +
                                       "Actual Loops": 1,                                                                                                             +
                                       "Sort Key": ["n.id"],                                                                                                          +
                                       "Sort Method": "quicksort",                                                                                                    +
                                       "Sort Space Used": 5246,                                                                                                       +
                                       "Sort Space Type": "Memory",                                                                                                   +
                                       "Shared Hit Blocks": 2,                                                                                                        +
                                       "Shared Read Blocks": 55611,                                                                                                   +
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
                                           "Node Type": "Seq Scan",                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Relation Name": "name",                                                                                                   +
                                           "Alias": "n",                                                                                                              +
                                           "Startup Cost": 0.00,                                                                                                      +
                                           "Total Cost": 2679.69,                                                                                                     +
                                           "Plan Rows": 37708,                                                                                                        +
                                           "Plan Width": 19,                                                                                                          +
                                           "Actual Startup Time": 1093.758,                                                                                           +
                                           "Actual Total Time": 2581.822,                                                                                             +
                                           "Actual Rows": 50011,                                                                                                      +
                                           "Actual Loops": 1,                                                                                                         +
                                           "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                     +
                                           "Rows Removed by Filter": 4117480,                                                                                         +
                                           "Shared Hit Blocks": 2,                                                                                                    +
                                           "Shared Read Blocks": 55611,                                                                                               +
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
                                     }                                                                                                                                +
                                   ]                                                                                                                                  +
                                 },                                                                                                                                   +
                                 {                                                                                                                                    +
                                   "Node Type": "Index Scan",                                                                                                         +
                                   "Parent Relationship": "Inner",                                                                                                    +
                                   "Parallel Aware": false,                                                                                                           +
                                   "Scan Direction": "Forward",                                                                                                       +
                                   "Index Name": "person_id_cast_info",                                                                                               +
                                   "Relation Name": "cast_info",                                                                                                      +
                                   "Alias": "ci",                                                                                                                     +
                                   "Startup Cost": 0.02,                                                                                                              +
                                   "Total Cost": 1.22,                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                    +
                                   "Plan Width": 16,                                                                                                                  +
                                   "Actual Startup Time": 2.465,                                                                                                      +
                                   "Actual Total Time": 2.611,                                                                                                        +
                                   "Actual Rows": 1,                                                                                                                  +
                                   "Actual Loops": 10525,                                                                                                             +
                                   "Index Cond": "(person_id = an.person_id)",                                                                                        +
                                   "Rows Removed by Index Recheck": 0,                                                                                                +
                                   "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                   "Rows Removed by Filter": 44,                                                                                                      +
                                   "Shared Hit Blocks": 48032,                                                                                                        +
                                   "Shared Read Blocks": 13601,                                                                                                       +
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
                               "Actual Loops": 8204,                                                                                                                  +
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
                                   "Actual Startup Time": 0.013,                                                                                                      +
                                   "Actual Total Time": 0.013,                                                                                                        +
                                   "Actual Rows": 1,                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Filter": "((role)::text = 'actress'::text)",                                                                                      +
                                   "Rows Removed by Filter": 1,                                                                                                       +
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
                           "Index Name": "char_name_pkey",                                                                                                            +
                           "Relation Name": "char_name",                                                                                                              +
                           "Alias": "chn",                                                                                                                            +
                           "Startup Cost": 0.01,                                                                                                                      +
                           "Total Cost": 0.18,                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                            +
                           "Plan Width": 20,                                                                                                                          +
                           "Actual Startup Time": 1.301,                                                                                                              +
                           "Actual Total Time": 1.301,                                                                                                                +
                           "Actual Rows": 1,                                                                                                                          +
                           "Actual Loops": 8204,                                                                                                                      +
                           "Index Cond": "(id = ci.person_role_id)",                                                                                                  +
                           "Rows Removed by Index Recheck": 0,                                                                                                        +
                           "Shared Hit Blocks": 29301,                                                                                                                +
                           "Shared Read Blocks": 1615,                                                                                                                +
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
                       "Index Name": "movie_id_movie_companies",                                                                                                      +
                       "Relation Name": "movie_companies",                                                                                                            +
                       "Alias": "mc",                                                                                                                                 +
                       "Startup Cost": 0.01,                                                                                                                          +
                       "Total Cost": 0.11,                                                                                                                            +
                       "Plan Rows": 2,                                                                                                                                +
                       "Plan Width": 8,                                                                                                                               +
                       "Actual Startup Time": 2.640,                                                                                                                  +
                       "Actual Total Time": 3.128,                                                                                                                    +
                       "Actual Rows": 2,                                                                                                                              +
                       "Actual Loops": 7726,                                                                                                                          +
                       "Index Cond": "(movie_id = ci.movie_id)",                                                                                                      +
                       "Rows Removed by Index Recheck": 0,                                                                                                            +
                       "Shared Hit Blocks": 27894,                                                                                                                    +
                       "Shared Read Blocks": 2074,                                                                                                                    +
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
                   "Index Name": "company_name_pkey",                                                                                                                 +
                   "Relation Name": "company_name",                                                                                                                   +
                   "Alias": "cn",                                                                                                                                     +
                   "Startup Cost": 0.01,                                                                                                                              +
                   "Total Cost": 0.02,                                                                                                                                +
                   "Plan Rows": 1,                                                                                                                                    +
                   "Plan Width": 4,                                                                                                                                   +
                   "Actual Startup Time": 0.755,                                                                                                                      +
                   "Actual Total Time": 0.755,                                                                                                                        +
                   "Actual Rows": 0,                                                                                                                                  +
                   "Actual Loops": 18345,                                                                                                                             +
                   "Index Cond": "(id = mc.company_id)",                                                                                                              +
                   "Rows Removed by Index Recheck": 0,                                                                                                                +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                                                 +
                   "Rows Removed by Filter": 1,                                                                                                                       +
                   "Shared Hit Blocks": 71770,                                                                                                                        +
                   "Shared Read Blocks": 1643,                                                                                                                        +
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
             },                                                                                                                                                       +
             {                                                                                                                                                        +
               "Node Type": "Index Scan",                                                                                                                             +
               "Parent Relationship": "Inner",                                                                                                                        +
               "Parallel Aware": false,                                                                                                                               +
               "Scan Direction": "Forward",                                                                                                                           +
               "Index Name": "title_idx_id",                                                                                                                          +
               "Relation Name": "title",                                                                                                                              +
               "Alias": "t",                                                                                                                                          +
               "Startup Cost": 0.01,                                                                                                                                  +
               "Total Cost": 0.06,                                                                                                                                    +
               "Plan Rows": 1,                                                                                                                                        +
               "Plan Width": 21,                                                                                                                                      +
               "Actual Startup Time": 2.571,                                                                                                                          +
               "Actual Total Time": 2.571,                                                                                                                            +
               "Actual Rows": 1,                                                                                                                                      +
               "Actual Loops": 8144,                                                                                                                                  +
               "Index Cond": "(id = mc.movie_id)",                                                                                                                    +
               "Rows Removed by Index Recheck": 0,                                                                                                                    +
               "Shared Hit Blocks": 31204,                                                                                                                            +
               "Shared Read Blocks": 1377,                                                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                 +
               "Temp Written Blocks": 0                                                                                                                               +
             }                                                                                                                                                        +
           ]                                                                                                                                                          +
         }                                                                                                                                                            +
       ]                                                                                                                                                              +
     },                                                                                                                                                               +
     "Planning Time": 4768.278,                                                                                                                                       +
     "Triggers": [                                                                                                                                                    +
     ],                                                                                                                                                               +
     "Execution Time": 100977.553                                                                                                                                     +
   }                                                                                                                                                                  +
 ]
(1 row)

