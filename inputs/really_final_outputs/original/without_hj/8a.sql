                                                   QUERY PLAN                                                    
-----------------------------------------------------------------------------------------------------------------
 [                                                                                                              +
   {                                                                                                            +
     "Plan": {                                                                                                  +
       "Node Type": "Aggregate",                                                                                +
       "Strategy": "Plain",                                                                                     +
       "Partial Mode": "Simple",                                                                                +
       "Parallel Aware": false,                                                                                 +
       "Startup Cost": 3326.89,                                                                                 +
       "Total Cost": 3326.89,                                                                                   +
       "Plan Rows": 1,                                                                                          +
       "Plan Width": 64,                                                                                        +
       "Actual Startup Time": 1327998.723,                                                                      +
       "Actual Total Time": 1327998.723,                                                                        +
       "Actual Rows": 1,                                                                                        +
       "Actual Loops": 1,                                                                                       +
       "Shared Hit Blocks": 1782388,                                                                            +
       "Shared Read Blocks": 232344,                                                                            +
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
           "Node Type": "Nested Loop",                                                                          +
           "Parent Relationship": "Outer",                                                                      +
           "Parallel Aware": false,                                                                             +
           "Join Type": "Inner",                                                                                +
           "Startup Cost": 1351.22,                                                                             +
           "Total Cost": 3326.89,                                                                               +
           "Plan Rows": 1,                                                                                      +
           "Plan Width": 33,                                                                                    +
           "Actual Startup Time": 31514.720,                                                                    +
           "Actual Total Time": 1327998.308,                                                                    +
           "Actual Rows": 62,                                                                                   +
           "Actual Loops": 1,                                                                                   +
           "Inner Unique": true,                                                                                +
           "Shared Hit Blocks": 1782388,                                                                        +
           "Shared Read Blocks": 232344,                                                                        +
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
               "Startup Cost": 1351.21,                                                                         +
               "Total Cost": 3326.38,                                                                           +
               "Plan Rows": 2,                                                                                  +
               "Plan Width": 41,                                                                                +
               "Actual Startup Time": 1787.290,                                                                 +
               "Actual Total Time": 1321283.503,                                                                +
               "Actual Rows": 17379,                                                                            +
               "Actual Loops": 1,                                                                               +
               "Inner Unique": false,                                                                           +
               "Shared Hit Blocks": 1713676,                                                                    +
               "Shared Read Blocks": 231405,                                                                    +
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
                   "Startup Cost": 1351.20,                                                                     +
                   "Total Cost": 3324.98,                                                                       +
                   "Plan Rows": 3,                                                                              +
                   "Plan Width": 21,                                                                            +
                   "Actual Startup Time": 1755.883,                                                             +
                   "Actual Total Time": 1311636.298,                                                            +
                   "Actual Rows": 7438,                                                                         +
                   "Actual Loops": 1,                                                                           +
                   "Inner Unique": true,                                                                        +
                   "Join Filter": "(ci.role_id = rt.id)",                                                       +
                   "Rows Removed by Join Filter": 12162,                                                        +
                   "Shared Hit Blocks": 1685675,                                                                +
                   "Shared Read Blocks": 230354,                                                                +
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
                       "Startup Cost": 1351.20,                                                                 +
                       "Total Cost": 3324.94,                                                                   +
                       "Plan Rows": 31,                                                                         +
                       "Plan Width": 25,                                                                        +
                       "Actual Startup Time": 1753.534,                                                         +
                       "Actual Total Time": 1311598.421,                                                        +
                       "Actual Rows": 19600,                                                                    +
                       "Actual Loops": 1,                                                                       +
                       "Inner Unique": false,                                                                   +
                       "Shared Hit Blocks": 1685674,                                                            +
                       "Shared Read Blocks": 230354,                                                            +
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
                           "Startup Cost": 1351.18,                                                             +
                           "Total Cost": 3118.94,                                                               +
                           "Plan Rows": 458,                                                                    +
                           "Plan Width": 25,                                                                    +
                           "Actual Startup Time": 1128.040,                                                     +
                           "Actual Total Time": 202192.763,                                                     +
                           "Actual Rows": 48328,                                                                +
                           "Actual Loops": 1,                                                                   +
                           "Inner Unique": true,                                                                +
                           "Shared Hit Blocks": 168777,                                                         +
                           "Shared Read Blocks": 46438,                                                         +
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
                               "Node Type": "Merge Join",                                                       +
                               "Parent Relationship": "Outer",                                                  +
                               "Parallel Aware": false,                                                         +
                               "Join Type": "Inner",                                                            +
                               "Startup Cost": 1351.17,                                                         +
                               "Total Cost": 1354.72,                                                           +
                               "Plan Rows": 458,                                                                +
                               "Plan Width": 4,                                                                 +
                               "Actual Startup Time": 1076.577,                                                 +
                               "Actual Total Time": 1225.750,                                                   +
                               "Actual Rows": 48328,                                                            +
                               "Actual Loops": 1,                                                               +
                               "Inner Unique": false,                                                           +
                               "Merge Cond": "(cn.id = mc.company_id)",                                         +
                               "Shared Hit Blocks": 9,                                                          +
                               "Shared Read Blocks": 21778,                                                     +
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
                                   "Node Type": "Sort",                                                         +
                                   "Parent Relationship": "Outer",                                              +
                                   "Parallel Aware": false,                                                     +
                                   "Startup Cost": 141.74,                                                      +
                                   "Total Cost": 142.27,                                                        +
                                   "Plan Rows": 6752,                                                           +
                                   "Plan Width": 4,                                                             +
                                   "Actual Startup Time": 182.460,                                              +
                                   "Actual Total Time": 183.852,                                                +
                                   "Actual Rows": 2418,                                                         +
                                   "Actual Loops": 1,                                                           +
                                   "Sort Key": ["cn.id"],                                                       +
                                   "Sort Method": "quicksort",                                                  +
                                   "Sort Space Used": 509,                                                      +
                                   "Sort Space Type": "Memory",                                                 +
                                   "Shared Hit Blocks": 6,                                                      +
                                   "Shared Read Blocks": 2992,                                                  +
                                   "Shared Dirtied Blocks": 0,                                                  +
                                   "Shared Written Blocks": 0,                                                  +
                                   "Local Hit Blocks": 0,                                                       +
                                   "Local Read Blocks": 0,                                                      +
                                   "Local Dirtied Blocks": 0,                                                   +
                                   "Local Written Blocks": 0,                                                   +
                                   "Temp Read Blocks": 0,                                                       +
                                   "Temp Written Blocks": 0,                                                    +
                                   "Plans": [                                                                   +
                                     {                                                                          +
                                       "Node Type": "Seq Scan",                                                 +
                                       "Parent Relationship": "Outer",                                          +
                                       "Parallel Aware": false,                                                 +
                                       "Relation Name": "company_name",                                         +
                                       "Alias": "cn",                                                           +
                                       "Startup Cost": 0.00,                                                    +
                                       "Total Cost": 128.41,                                                    +
                                       "Plan Rows": 6752,                                                       +
                                       "Plan Width": 4,                                                         +
                                       "Actual Startup Time": 28.981,                                           +
                                       "Actual Total Time": 161.142,                                            +
                                       "Actual Rows": 6752,                                                     +
                                       "Actual Loops": 1,                                                       +
                                       "Filter": "((country_code)::text = '[jp]'::text)",                       +
                                       "Rows Removed by Filter": 228245,                                        +
                                       "Shared Hit Blocks": 2,                                                  +
                                       "Shared Read Blocks": 2992,                                              +
                                       "Shared Dirtied Blocks": 0,                                              +
                                       "Shared Written Blocks": 0,                                              +
                                       "Local Hit Blocks": 0,                                                   +
                                       "Local Read Blocks": 0,                                                  +
                                       "Local Dirtied Blocks": 0,                                               +
                                       "Local Written Blocks": 0,                                               +
                                       "Temp Read Blocks": 0,                                                   +
                                       "Temp Written Blocks": 0                                                 +
                                     }                                                                          +
                                   ]                                                                            +
                                 },                                                                             +
                                 {                                                                              +
                                   "Node Type": "Sort",                                                         +
                                   "Parent Relationship": "Inner",                                              +
                                   "Parallel Aware": false,                                                     +
                                   "Startup Cost": 1209.42,                                                     +
                                   "Total Cost": 1210.66,                                                       +
                                   "Plan Rows": 15927,                                                          +
                                   "Plan Width": 8,                                                             +
                                   "Actual Startup Time": 894.105,                                              +
                                   "Actual Total Time": 935.406,                                                +
                                   "Actual Rows": 48897,                                                        +
                                   "Actual Loops": 1,                                                           +
                                   "Sort Key": ["mc.company_id"],                                               +
                                   "Sort Method": "quicksort",                                                  +
                                   "Sort Space Used": 3829,                                                     +
                                   "Sort Space Type": "Memory",                                                 +
                                   "Shared Hit Blocks": 3,                                                      +
                                   "Shared Read Blocks": 18786,                                                 +
                                   "Shared Dirtied Blocks": 0,                                                  +
                                   "Shared Written Blocks": 0,                                                  +
                                   "Local Hit Blocks": 0,                                                       +
                                   "Local Read Blocks": 0,                                                      +
                                   "Local Dirtied Blocks": 0,                                                   +
                                   "Local Written Blocks": 0,                                                   +
                                   "Temp Read Blocks": 0,                                                       +
                                   "Temp Written Blocks": 0,                                                    +
                                   "Plans": [                                                                   +
                                     {                                                                          +
                                       "Node Type": "Seq Scan",                                                 +
                                       "Parent Relationship": "Outer",                                          +
                                       "Parallel Aware": false,                                                 +
                                       "Relation Name": "movie_companies",                                      +
                                       "Alias": "mc",                                                           +
                                       "Startup Cost": 0.00,                                                    +
                                       "Total Cost": 1174.90,                                                   +
                                       "Plan Rows": 15927,                                                      +
                                       "Plan Width": 8,                                                         +
                                       "Actual Startup Time": 2.580,                                            +
                                       "Actual Total Time": 876.970,                                            +
                                       "Actual Rows": 48897,                                                    +
                                       "Actual Loops": 1,                                                       +
                                       "Filter": "((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))",+
                                       "Rows Removed by Filter": 2560232,                                       +
                                       "Shared Hit Blocks": 3,                                                  +
                                       "Shared Read Blocks": 18786,                                             +
                                       "Shared Dirtied Blocks": 0,                                              +
                                       "Shared Written Blocks": 0,                                              +
                                       "Local Hit Blocks": 0,                                                   +
                                       "Local Read Blocks": 0,                                                  +
                                       "Local Dirtied Blocks": 0,                                               +
                                       "Local Written Blocks": 0,                                               +
                                       "Temp Read Blocks": 0,                                                   +
                                       "Temp Written Blocks": 0                                                 +
                                     }                                                                          +
                                   ]                                                                            +
                                 }                                                                              +
                               ]                                                                                +
                             },                                                                                 +
                             {                                                                                  +
                               "Node Type": "Index Scan",                                                       +
                               "Parent Relationship": "Inner",                                                  +
                               "Parallel Aware": false,                                                         +
                               "Scan Direction": "Forward",                                                     +
                               "Index Name": "title_idx_id",                                                    +
                               "Relation Name": "title",                                                        +
                               "Alias": "t",                                                                    +
                               "Startup Cost": 0.01,                                                            +
                               "Total Cost": 3.85,                                                              +
                               "Plan Rows": 1,                                                                  +
                               "Plan Width": 21,                                                                +
                               "Actual Startup Time": 4.153,                                                    +
                               "Actual Total Time": 4.153,                                                      +
                               "Actual Rows": 1,                                                                +
                               "Actual Loops": 48328,                                                           +
                               "Index Cond": "(id = mc.movie_id)",                                              +
                               "Rows Removed by Index Recheck": 0,                                              +
                               "Shared Hit Blocks": 168768,                                                     +
                               "Shared Read Blocks": 24660,                                                     +
                               "Shared Dirtied Blocks": 0,                                                      +
                               "Shared Written Blocks": 0,                                                      +
                               "Local Hit Blocks": 0,                                                           +
                               "Local Read Blocks": 0,                                                          +
                               "Local Dirtied Blocks": 0,                                                       +
                               "Local Written Blocks": 0,                                                       +
                               "Temp Read Blocks": 0,                                                           +
                               "Temp Written Blocks": 0                                                         +
                             }                                                                                  +
                           ]                                                                                    +
                         },                                                                                     +
                         {                                                                                      +
                           "Node Type": "Index Scan",                                                           +
                           "Parent Relationship": "Inner",                                                      +
                           "Parallel Aware": false,                                                             +
                           "Scan Direction": "Forward",                                                         +
                           "Index Name": "movie_id_cast_info",                                                  +
                           "Relation Name": "cast_info",                                                        +
                           "Alias": "ci",                                                                       +
                           "Startup Cost": 0.02,                                                                +
                           "Total Cost": 0.45,                                                                  +
                           "Plan Rows": 1,                                                                      +
                           "Plan Width": 12,                                                                    +
                           "Actual Startup Time": 22.398,                                                       +
                           "Actual Total Time": 22.952,                                                         +
                           "Actual Rows": 0,                                                                    +
                           "Actual Loops": 48328,                                                               +
                           "Index Cond": "(movie_id = t.id)",                                                   +
                           "Rows Removed by Index Recheck": 0,                                                  +
                           "Filter": "(note = '(voice: English version)'::text)",                               +
                           "Rows Removed by Filter": 32,                                                        +
                           "Shared Hit Blocks": 1516897,                                                        +
                           "Shared Read Blocks": 183916,                                                        +
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
                       "Node Type": "Materialize",                                                              +
                       "Parent Relationship": "Inner",                                                          +
                       "Parallel Aware": false,                                                                 +
                       "Startup Cost": 0.00,                                                                    +
                       "Total Cost": 0.03,                                                                      +
                       "Plan Rows": 1,                                                                          +
                       "Plan Width": 4,                                                                         +
                       "Actual Startup Time": 0.000,                                                            +
                       "Actual Total Time": 0.000,                                                              +
                       "Actual Rows": 1,                                                                        +
                       "Actual Loops": 19600,                                                                   +
                       "Shared Hit Blocks": 1,                                                                  +
                       "Shared Read Blocks": 0,                                                                 +
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
                           "Node Type": "Seq Scan",                                                             +
                           "Parent Relationship": "Outer",                                                      +
                           "Parallel Aware": false,                                                             +
                           "Relation Name": "role_type",                                                        +
                           "Alias": "rt",                                                                       +
                           "Startup Cost": 0.00,                                                                +
                           "Total Cost": 0.03,                                                                  +
                           "Plan Rows": 1,                                                                      +
                           "Plan Width": 4,                                                                     +
                           "Actual Startup Time": 0.020,                                                        +
                           "Actual Total Time": 0.027,                                                          +
                           "Actual Rows": 1,                                                                    +
                           "Actual Loops": 1,                                                                   +
                           "Filter": "((role)::text = 'actress'::text)",                                        +
                           "Rows Removed by Filter": 11,                                                        +
                           "Shared Hit Blocks": 1,                                                              +
                           "Shared Read Blocks": 0,                                                             +
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
                     }                                                                                          +
                   ]                                                                                            +
                 },                                                                                             +
                 {                                                                                              +
                   "Node Type": "Index Scan",                                                                   +
                   "Parent Relationship": "Inner",                                                              +
                   "Parallel Aware": false,                                                                     +
                   "Scan Direction": "Forward",                                                                 +
                   "Index Name": "person_id_aka_name",                                                          +
                   "Relation Name": "aka_name",                                                                 +
                   "Alias": "an1",                                                                              +
                   "Startup Cost": 0.01,                                                                        +
                   "Total Cost": 0.47,                                                                          +
                   "Plan Rows": 2,                                                                              +
                   "Plan Width": 20,                                                                            +
                   "Actual Startup Time": 1.175,                                                                +
                   "Actual Total Time": 1.293,                                                                  +
                   "Actual Rows": 2,                                                                            +
                   "Actual Loops": 7438,                                                                        +
                   "Index Cond": "(person_id = ci.person_id)",                                                  +
                   "Rows Removed by Index Recheck": 0,                                                          +
                   "Shared Hit Blocks": 28001,                                                                  +
                   "Shared Read Blocks": 1051,                                                                  +
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
             },                                                                                                 +
             {                                                                                                  +
               "Node Type": "Index Scan",                                                                       +
               "Parent Relationship": "Inner",                                                                  +
               "Parallel Aware": false,                                                                         +
               "Scan Direction": "Forward",                                                                     +
               "Index Name": "name_pkey",                                                                       +
               "Relation Name": "name",                                                                         +
               "Alias": "n1",                                                                                   +
               "Startup Cost": 0.01,                                                                            +
               "Total Cost": 0.25,                                                                              +
               "Plan Rows": 1,                                                                                  +
               "Plan Width": 4,                                                                                 +
               "Actual Startup Time": 0.385,                                                                    +
               "Actual Total Time": 0.385,                                                                      +
               "Actual Rows": 0,                                                                                +
               "Actual Loops": 17379,                                                                           +
               "Index Cond": "(id = an1.person_id)",                                                            +
               "Rows Removed by Index Recheck": 0,                                                              +
               "Filter": "((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))",                                +
               "Rows Removed by Filter": 1,                                                                     +
               "Shared Hit Blocks": 68712,                                                                      +
               "Shared Read Blocks": 939,                                                                       +
               "Shared Dirtied Blocks": 0,                                                                      +
               "Shared Written Blocks": 0,                                                                      +
               "Local Hit Blocks": 0,                                                                           +
               "Local Read Blocks": 0,                                                                          +
               "Local Dirtied Blocks": 0,                                                                       +
               "Local Written Blocks": 0,                                                                       +
               "Temp Read Blocks": 0,                                                                           +
               "Temp Written Blocks": 0                                                                         +
             }                                                                                                  +
           ]                                                                                                    +
         }                                                                                                      +
       ]                                                                                                        +
     },                                                                                                         +
     "Planning Time": 4672.100,                                                                                 +
     "Triggers": [                                                                                              +
     ],                                                                                                         +
     "Execution Time": 1328038.702                                                                              +
   }                                                                                                            +
 ]
(1 row)
