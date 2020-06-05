                                           QUERY PLAN                                           
------------------------------------------------------------------------------------------------
 [                                                                                             +
   {                                                                                           +
     "Plan": {                                                                                 +
       "Node Type": "Aggregate",                                                               +
       "Strategy": "Plain",                                                                    +
       "Partial Mode": "Simple",                                                               +
       "Parallel Aware": false,                                                                +
       "Startup Cost": 649.49,                                                                 +
       "Total Cost": 649.49,                                                                   +
       "Plan Rows": 1,                                                                         +
       "Plan Width": 32,                                                                       +
       "Actual Startup Time": 1553657.213,                                                     +
       "Actual Total Time": 1553657.214,                                                       +
       "Actual Rows": 1,                                                                       +
       "Actual Loops": 1,                                                                      +
       "Shared Hit Blocks": 5145977,                                                           +
       "Shared Read Blocks": 304613,                                                           +
       "Shared Dirtied Blocks": 0,                                                             +
       "Shared Written Blocks": 0,                                                             +
       "Local Hit Blocks": 0,                                                                  +
       "Local Read Blocks": 0,                                                                 +
       "Local Dirtied Blocks": 0,                                                              +
       "Local Written Blocks": 0,                                                              +
       "Temp Read Blocks": 0,                                                                  +
       "Temp Written Blocks": 0,                                                               +
       "Plans": [                                                                              +
         {                                                                                     +
           "Node Type": "Nested Loop",                                                         +
           "Parent Relationship": "Outer",                                                     +
           "Parallel Aware": false,                                                            +
           "Join Type": "Inner",                                                               +
           "Startup Cost": 0.10,                                                               +
           "Total Cost": 649.49,                                                               +
           "Plan Rows": 2,                                                                     +
           "Plan Width": 15,                                                                   +
           "Actual Startup Time": 38233.606,                                                   +
           "Actual Total Time": 1553632.197,                                                   +
           "Actual Rows": 11538,                                                               +
           "Actual Loops": 1,                                                                  +
           "Inner Unique": true,                                                               +
           "Shared Hit Blocks": 5145977,                                                       +
           "Shared Read Blocks": 304613,                                                       +
           "Shared Dirtied Blocks": 0,                                                         +
           "Shared Written Blocks": 0,                                                         +
           "Local Hit Blocks": 0,                                                              +
           "Local Read Blocks": 0,                                                             +
           "Local Dirtied Blocks": 0,                                                          +
           "Local Written Blocks": 0,                                                          +
           "Temp Read Blocks": 0,                                                              +
           "Temp Written Blocks": 0,                                                           +
           "Plans": [                                                                          +
             {                                                                                 +
               "Node Type": "Nested Loop",                                                     +
               "Parent Relationship": "Outer",                                                 +
               "Parallel Aware": false,                                                        +
               "Join Type": "Inner",                                                           +
               "Startup Cost": 0.08,                                                           +
               "Total Cost": 649.45,                                                           +
               "Plan Rows": 2,                                                                 +
               "Plan Width": 27,                                                               +
               "Actual Startup Time": 38192.091,                                               +
               "Actual Total Time": 1529477.104,                                               +
               "Actual Rows": 11538,                                                           +
               "Actual Loops": 1,                                                              +
               "Inner Unique": true,                                                           +
               "Shared Hit Blocks": 5102348,                                                   +
               "Shared Read Blocks": 302079,                                                   +
               "Shared Dirtied Blocks": 0,                                                     +
               "Shared Written Blocks": 0,                                                     +
               "Local Hit Blocks": 0,                                                          +
               "Local Read Blocks": 0,                                                         +
               "Local Dirtied Blocks": 0,                                                      +
               "Local Written Blocks": 0,                                                      +
               "Temp Read Blocks": 0,                                                          +
               "Temp Written Blocks": 0,                                                       +
               "Plans": [                                                                      +
                 {                                                                             +
                   "Node Type": "Nested Loop",                                                 +
                   "Parent Relationship": "Outer",                                             +
                   "Parallel Aware": false,                                                    +
                   "Join Type": "Inner",                                                       +
                   "Startup Cost": 0.07,                                                       +
                   "Total Cost": 649.42,                                                       +
                   "Plan Rows": 2,                                                             +
                   "Plan Width": 31,                                                           +
                   "Actual Startup Time": 38186.184,                                           +
                   "Actual Total Time": 1504458.680,                                           +
                   "Actual Rows": 11538,                                                       +
                   "Actual Loops": 1,                                                          +
                   "Inner Unique": false,                                                      +
                   "Shared Hit Blocks": 5058389,                                               +
                   "Shared Read Blocks": 299851,                                               +
                   "Shared Dirtied Blocks": 0,                                                 +
                   "Shared Written Blocks": 0,                                                 +
                   "Local Hit Blocks": 0,                                                      +
                   "Local Read Blocks": 0,                                                     +
                   "Local Dirtied Blocks": 0,                                                  +
                   "Local Written Blocks": 0,                                                  +
                   "Temp Read Blocks": 0,                                                      +
                   "Temp Written Blocks": 0,                                                   +
                   "Plans": [                                                                  +
                     {                                                                         +
                       "Node Type": "Nested Loop",                                             +
                       "Parent Relationship": "Outer",                                         +
                       "Parallel Aware": false,                                                +
                       "Join Type": "Inner",                                                   +
                       "Startup Cost": 0.06,                                                   +
                       "Total Cost": 649.34,                                                   +
                       "Plan Rows": 1,                                                         +
                       "Plan Width": 23,                                                       +
                       "Actual Startup Time": 38157.560,                                       +
                       "Actual Total Time": 1485067.359,                                       +
                       "Actual Rows": 1972,                                                    +
                       "Actual Loops": 1,                                                      +
                       "Inner Unique": true,                                                   +
                       "Shared Hit Blocks": 5052315,                                           +
                       "Shared Read Blocks": 296581,                                           +
                       "Shared Dirtied Blocks": 0,                                             +
                       "Shared Written Blocks": 0,                                             +
                       "Local Hit Blocks": 0,                                                  +
                       "Local Read Blocks": 0,                                                 +
                       "Local Dirtied Blocks": 0,                                              +
                       "Local Written Blocks": 0,                                              +
                       "Temp Read Blocks": 0,                                                  +
                       "Temp Written Blocks": 0,                                               +
                       "Plans": [                                                              +
                         {                                                                     +
                           "Node Type": "Nested Loop",                                         +
                           "Parent Relationship": "Outer",                                     +
                           "Parallel Aware": false,                                            +
                           "Join Type": "Inner",                                               +
                           "Startup Cost": 0.04,                                               +
                           "Total Cost": 627.04,                                               +
                           "Plan Rows": 1138,                                                  +
                           "Plan Width": 12,                                                   +
                           "Actual Startup Time": 62.236,                                      +
                           "Actual Total Time": 1133462.445,                                   +
                           "Actual Rows": 1038393,                                             +
                           "Actual Loops": 1,                                                  +
                           "Inner Unique": false,                                              +
                           "Shared Hit Blocks": 960430,                                        +
                           "Shared Read Blocks": 227677,                                       +
                           "Shared Dirtied Blocks": 0,                                         +
                           "Shared Written Blocks": 0,                                         +
                           "Local Hit Blocks": 0,                                              +
                           "Local Read Blocks": 0,                                             +
                           "Local Dirtied Blocks": 0,                                          +
                           "Local Written Blocks": 0,                                          +
                           "Temp Read Blocks": 0,                                              +
                           "Temp Written Blocks": 0,                                           +
                           "Plans": [                                                          +
                             {                                                                 +
                               "Node Type": "Nested Loop",                                     +
                               "Parent Relationship": "Outer",                                 +
                               "Parallel Aware": false,                                        +
                               "Join Type": "Inner",                                           +
                               "Startup Cost": 0.03,                                           +
                               "Total Cost": 618.15,                                           +
                               "Plan Rows": 34,                                                +
                               "Plan Width": 4,                                                +
                               "Actual Startup Time": 48.624,                                  +
                               "Actual Total Time": 5831.319,                                  +
                               "Actual Rows": 41840,                                           +
                               "Actual Loops": 1,                                              +
                               "Inner Unique": false,                                          +
                               "Shared Hit Blocks": 3,                                         +
                               "Shared Read Blocks": 11659,                                    +
                               "Shared Dirtied Blocks": 0,                                     +
                               "Shared Written Blocks": 0,                                     +
                               "Local Hit Blocks": 0,                                          +
                               "Local Read Blocks": 0,                                         +
                               "Local Dirtied Blocks": 0,                                      +
                               "Local Written Blocks": 0,                                      +
                               "Temp Read Blocks": 0,                                          +
                               "Temp Written Blocks": 0,                                       +
                               "Plans": [                                                      +
                                 {                                                             +
                                   "Node Type": "Index Scan",                                  +
                                   "Parent Relationship": "Outer",                             +
                                   "Parallel Aware": false,                                    +
                                   "Scan Direction": "Forward",                                +
                                   "Index Name": "keyword_idx_keyword",                        +
                                   "Relation Name": "keyword",                                 +
                                   "Alias": "k",                                               +
                                   "Startup Cost": 0.01,                                       +
                                   "Total Cost": 6.13,                                         +
                                   "Plan Rows": 1,                                             +
                                   "Plan Width": 4,                                            +
                                   "Actual Startup Time": 30.954,                              +
                                   "Actual Total Time": 30.956,                                +
                                   "Actual Rows": 1,                                           +
                                   "Actual Loops": 1,                                          +
                                   "Index Cond": "(keyword = 'character-name-in-title'::text)",+
                                   "Rows Removed by Index Recheck": 0,                         +
                                   "Shared Hit Blocks": 0,                                     +
                                   "Shared Read Blocks": 4,                                    +
                                   "Shared Dirtied Blocks": 0,                                 +
                                   "Shared Written Blocks": 0,                                 +
                                   "Local Hit Blocks": 0,                                      +
                                   "Local Read Blocks": 0,                                     +
                                   "Local Dirtied Blocks": 0,                                  +
                                   "Local Written Blocks": 0,                                  +
                                   "Temp Read Blocks": 0,                                      +
                                   "Temp Written Blocks": 0                                    +
                                 },                                                            +
                                 {                                                             +
                                   "Node Type": "Index Scan",                                  +
                                   "Parent Relationship": "Inner",                             +
                                   "Parallel Aware": false,                                    +
                                   "Scan Direction": "Forward",                                +
                                   "Index Name": "keyword_id_movie_keyword",                   +
                                   "Relation Name": "movie_keyword",                           +
                                   "Alias": "mk",                                              +
                                   "Startup Cost": 0.01,                                       +
                                   "Total Cost": 122.40,                                       +
                                   "Plan Rows": 39,                                            +
                                   "Plan Width": 8,                                            +
                                   "Actual Startup Time": 17.626,                              +
                                   "Actual Total Time": 5754.375,                              +
                                   "Actual Rows": 41840,                                       +
                                   "Actual Loops": 1,                                          +
                                   "Index Cond": "(keyword_id = k.id)",                        +
                                   "Rows Removed by Index Recheck": 0,                         +
                                   "Shared Hit Blocks": 3,                                     +
                                   "Shared Read Blocks": 11655,                                +
                                   "Shared Dirtied Blocks": 0,                                 +
                                   "Shared Written Blocks": 0,                                 +
                                   "Local Hit Blocks": 0,                                      +
                                   "Local Read Blocks": 0,                                     +
                                   "Local Dirtied Blocks": 0,                                  +
                                   "Local Written Blocks": 0,                                  +
                                   "Temp Read Blocks": 0,                                      +
                                   "Temp Written Blocks": 0                                    +
                                 }                                                             +
                               ]                                                               +
                             },                                                                +
                             {                                                                 +
                               "Node Type": "Index Scan",                                      +
                               "Parent Relationship": "Inner",                                 +
                               "Parallel Aware": false,                                        +
                               "Scan Direction": "Forward",                                    +
                               "Index Name": "movie_id_cast_info",                             +
                               "Relation Name": "cast_info",                                   +
                               "Alias": "ci",                                                  +
                               "Startup Cost": 0.02,                                           +
                               "Total Cost": 0.26,                                             +
                               "Plan Rows": 23,                                                +
                               "Plan Width": 8,                                                +
                               "Actual Startup Time": 2.519,                                   +
                               "Actual Total Time": 26.924,                                    +
                               "Actual Rows": 25,                                              +
                               "Actual Loops": 41840,                                          +
                               "Index Cond": "(movie_id = mk.movie_id)",                       +
                               "Rows Removed by Index Recheck": 0,                             +
                               "Shared Hit Blocks": 960427,                                    +
                               "Shared Read Blocks": 216018,                                   +
                               "Shared Dirtied Blocks": 0,                                     +
                               "Shared Written Blocks": 0,                                     +
                               "Local Hit Blocks": 0,                                          +
                               "Local Read Blocks": 0,                                         +
                               "Local Dirtied Blocks": 0,                                      +
                               "Local Written Blocks": 0,                                      +
                               "Temp Read Blocks": 0,                                          +
                               "Temp Written Blocks": 0                                        +
                             }                                                                 +
                           ]                                                                   +
                         },                                                                    +
                         {                                                                     +
                           "Node Type": "Index Scan",                                          +
                           "Parent Relationship": "Inner",                                     +
                           "Parallel Aware": false,                                            +
                           "Scan Direction": "Forward",                                        +
                           "Index Name": "name_pkey",                                          +
                           "Relation Name": "name",                                            +
                           "Alias": "n",                                                       +
                           "Startup Cost": 0.01,                                               +
                           "Total Cost": 0.02,                                                 +
                           "Plan Rows": 1,                                                     +
                           "Plan Width": 19,                                                   +
                           "Actual Startup Time": 0.337,                                       +
                           "Actual Total Time": 0.337,                                         +
                           "Actual Rows": 0,                                                   +
                           "Actual Loops": 1038393,                                            +
                           "Index Cond": "(id = ci.person_id)",                                +
                           "Rows Removed by Index Recheck": 0,                                 +
                           "Filter": "(name ~~ '%Bert%'::text)",                               +
                           "Rows Removed by Filter": 1,                                        +
                           "Shared Hit Blocks": 4091885,                                       +
                           "Shared Read Blocks": 68904,                                        +
                           "Shared Dirtied Blocks": 0,                                         +
                           "Shared Written Blocks": 0,                                         +
                           "Local Hit Blocks": 0,                                              +
                           "Local Read Blocks": 0,                                             +
                           "Local Dirtied Blocks": 0,                                          +
                           "Local Written Blocks": 0,                                          +
                           "Temp Read Blocks": 0,                                              +
                           "Temp Written Blocks": 0                                            +
                         }                                                                     +
                       ]                                                                       +
                     },                                                                        +
                     {                                                                         +
                       "Node Type": "Index Scan",                                              +
                       "Parent Relationship": "Inner",                                         +
                       "Parallel Aware": false,                                                +
                       "Scan Direction": "Forward",                                            +
                       "Index Name": "movie_id_movie_companies",                               +
                       "Relation Name": "movie_companies",                                     +
                       "Alias": "mc",                                                          +
                       "Startup Cost": 0.01,                                                   +
                       "Total Cost": 0.02,                                                     +
                       "Plan Rows": 2,                                                         +
                       "Plan Width": 8,                                                        +
                       "Actual Startup Time": 8.049,                                           +
                       "Actual Total Time": 9.823,                                             +
                       "Actual Rows": 6,                                                       +
                       "Actual Loops": 1972,                                                   +
                       "Index Cond": "(movie_id = ci.movie_id)",                               +
                       "Rows Removed by Index Recheck": 0,                                     +
                       "Shared Hit Blocks": 6074,                                              +
                       "Shared Read Blocks": 3270,                                             +
                       "Shared Dirtied Blocks": 0,                                             +
                       "Shared Written Blocks": 0,                                             +
                       "Local Hit Blocks": 0,                                                  +
                       "Local Read Blocks": 0,                                                 +
                       "Local Dirtied Blocks": 0,                                              +
                       "Local Written Blocks": 0,                                              +
                       "Temp Read Blocks": 0,                                                  +
                       "Temp Written Blocks": 0                                                +
                     }                                                                         +
                   ]                                                                           +
                 },                                                                            +
                 {                                                                             +
                   "Node Type": "Index Scan",                                                  +
                   "Parent Relationship": "Inner",                                             +
                   "Parallel Aware": false,                                                    +
                   "Scan Direction": "Forward",                                                +
                   "Index Name": "company_name_pkey",                                          +
                   "Relation Name": "company_name",                                            +
                   "Alias": "cn",                                                              +
                   "Startup Cost": 0.01,                                                       +
                   "Total Cost": 0.02,                                                         +
                   "Plan Rows": 1,                                                             +
                   "Plan Width": 4,                                                            +
                   "Actual Startup Time": 2.165,                                               +
                   "Actual Total Time": 2.165,                                                 +
                   "Actual Rows": 1,                                                           +
                   "Actual Loops": 11538,                                                      +
                   "Index Cond": "(id = mc.company_id)",                                       +
                   "Rows Removed by Index Recheck": 0,                                         +
                   "Shared Hit Blocks": 43959,                                                 +
                   "Shared Read Blocks": 2228,                                                 +
                   "Shared Dirtied Blocks": 0,                                                 +
                   "Shared Written Blocks": 0,                                                 +
                   "Local Hit Blocks": 0,                                                      +
                   "Local Read Blocks": 0,                                                     +
                   "Local Dirtied Blocks": 0,                                                  +
                   "Local Written Blocks": 0,                                                  +
                   "Temp Read Blocks": 0,                                                      +
                   "Temp Written Blocks": 0                                                    +
                 }                                                                             +
               ]                                                                               +
             },                                                                                +
             {                                                                                 +
               "Node Type": "Index Scan",                                                      +
               "Parent Relationship": "Inner",                                                 +
               "Parallel Aware": false,                                                        +
               "Scan Direction": "Forward",                                                    +
               "Index Name": "title_idx_id",                                                   +
               "Relation Name": "title",                                                       +
               "Alias": "t",                                                                   +
               "Startup Cost": 0.01,                                                           +
               "Total Cost": 0.02,                                                             +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 4,                                                                +
               "Actual Startup Time": 2.090,                                                   +
               "Actual Total Time": 2.090,                                                     +
               "Actual Rows": 1,                                                               +
               "Actual Loops": 11538,                                                          +
               "Index Cond": "(id = ci.movie_id)",                                             +
               "Rows Removed by Index Recheck": 0,                                             +
               "Shared Hit Blocks": 43629,                                                     +
               "Shared Read Blocks": 2534,                                                     +
               "Shared Dirtied Blocks": 0,                                                     +
               "Shared Written Blocks": 0,                                                     +
               "Local Hit Blocks": 0,                                                          +
               "Local Read Blocks": 0,                                                         +
               "Local Dirtied Blocks": 0,                                                      +
               "Local Written Blocks": 0,                                                      +
               "Temp Read Blocks": 0,                                                          +
               "Temp Written Blocks": 0                                                        +
             }                                                                                 +
           ]                                                                                   +
         }                                                                                     +
       ]                                                                                       +
     },                                                                                        +
     "Planning Time": 5632.654,                                                                +
     "Triggers": [                                                                             +
     ],                                                                                        +
     "Execution Time": 1553677.890                                                             +
   }                                                                                           +
 ]
(1 row)
