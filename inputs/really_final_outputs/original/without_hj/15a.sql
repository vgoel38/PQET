                                                           QUERY PLAN                                                            
---------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                              +
   {                                                                                                                            +
     "Plan": {                                                                                                                  +
       "Node Type": "Aggregate",                                                                                                +
       "Strategy": "Plain",                                                                                                     +
       "Partial Mode": "Simple",                                                                                                +
       "Parallel Aware": false,                                                                                                 +
       "Startup Cost": 4629.96,                                                                                                 +
       "Total Cost": 4629.96,                                                                                                   +
       "Plan Rows": 1,                                                                                                          +
       "Plan Width": 64,                                                                                                        +
       "Actual Startup Time": 80726.059,                                                                                        +
       "Actual Total Time": 80726.059,                                                                                          +
       "Actual Rows": 1,                                                                                                        +
       "Actual Loops": 1,                                                                                                       +
       "Shared Hit Blocks": 108492,                                                                                             +
       "Shared Read Blocks": 62960,                                                                                             +
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
           "Startup Cost": 2841.27,                                                                                             +
           "Total Cost": 4629.96,                                                                                               +
           "Plan Rows": 8,                                                                                                      +
           "Plan Width": 59,                                                                                                    +
           "Actual Startup Time": 3218.883,                                                                                     +
           "Actual Total Time": 80725.288,                                                                                      +
           "Actual Rows": 328,                                                                                                  +
           "Actual Loops": 1,                                                                                                   +
           "Inner Unique": true,                                                                                                +
           "Shared Hit Blocks": 108492,                                                                                         +
           "Shared Read Blocks": 62960,                                                                                         +
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
               "Startup Cost": 2841.26,                                                                                         +
               "Total Cost": 4629.85,                                                                                           +
               "Plan Rows": 8,                                                                                                  +
               "Plan Width": 63,                                                                                                +
               "Actual Startup Time": 3192.595,                                                                                 +
               "Actual Total Time": 80071.962,                                                                                  +
               "Actual Rows": 328,                                                                                              +
               "Actual Loops": 1,                                                                                               +
               "Inner Unique": false,                                                                                           +
               "Shared Hit Blocks": 107361,                                                                                     +
               "Shared Read Blocks": 62779,                                                                                     +
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
                   "Startup Cost": 2841.25,                                                                                     +
                   "Total Cost": 4629.36,                                                                                       +
                   "Plan Rows": 1,                                                                                              +
                   "Plan Width": 75,                                                                                            +
                   "Actual Startup Time": 2642.139,                                                                             +
                   "Actual Total Time": 79369.259,                                                                              +
                   "Actual Rows": 57,                                                                                           +
                   "Actual Loops": 1,                                                                                           +
                   "Inner Unique": true,                                                                                        +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                 +
                   "Rows Removed by Join Filter": 0,                                                                            +
                   "Shared Hit Blocks": 107218,                                                                                 +
                   "Shared Read Blocks": 62714,                                                                                 +
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
                       "Startup Cost": 2841.25,                                                                                 +
                       "Total Cost": 4629.31,                                                                                   +
                       "Plan Rows": 1,                                                                                          +
                       "Plan Width": 79,                                                                                        +
                       "Actual Startup Time": 2642.099,                                                                         +
                       "Actual Total Time": 79368.975,                                                                          +
                       "Actual Rows": 57,                                                                                       +
                       "Actual Loops": 1,                                                                                       +
                       "Inner Unique": true,                                                                                    +
                       "Shared Hit Blocks": 107217,                                                                             +
                       "Shared Read Blocks": 62714,                                                                             +
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
                           "Startup Cost": 2841.24,                                                                             +
                           "Total Cost": 4629.28,                                                                               +
                           "Plan Rows": 1,                                                                                      +
                           "Plan Width": 83,                                                                                    +
                           "Actual Startup Time": 2642.068,                                                                     +
                           "Actual Total Time": 79368.186,                                                                      +
                           "Actual Rows": 57,                                                                                   +
                           "Actual Loops": 1,                                                                                   +
                           "Inner Unique": false,                                                                               +
                           "Shared Hit Blocks": 107103,                                                                         +
                           "Shared Read Blocks": 62714,                                                                         +
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
                               "Startup Cost": 2841.23,                                                                         +
                               "Total Cost": 3932.11,                                                                           +
                               "Plan Rows": 1498,                                                                               +
                               "Plan Width": 33,                                                                                +
                               "Actual Startup Time": 1538.364,                                                                 +
                               "Actual Total Time": 21097.968,                                                                  +
                               "Actual Rows": 5134,                                                                             +
                               "Actual Loops": 1,                                                                               +
                               "Inner Unique": true,                                                                            +
                               "Shared Hit Blocks": 48566,                                                                      +
                               "Shared Read Blocks": 34244,                                                                     +
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
                                   "Node Type": "Merge Join",                                                                   +
                                   "Parent Relationship": "Outer",                                                              +
                                   "Parallel Aware": false,                                                                     +
                                   "Join Type": "Inner",                                                                        +
                                   "Startup Cost": 2841.22,                                                                     +
                                   "Total Cost": 2898.50,                                                                       +
                                   "Plan Rows": 2741,                                                                           +
                                   "Plan Width": 12,                                                                            +
                                   "Actual Startup Time": 1496.656,                                                             +
                                   "Actual Total Time": 1779.009,                                                               +
                                   "Actual Rows": 13699,                                                                        +
                                   "Actual Loops": 1,                                                                           +
                                   "Inner Unique": false,                                                                       +
                                   "Merge Cond": "(mc.movie_id = at.movie_id)",                                                 +
                                   "Shared Hit Blocks": 11,                                                                     +
                                   "Shared Read Blocks": 27968,                                                                 +
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
                                       "Node Type": "Sort",                                                                     +
                                       "Parent Relationship": "Outer",                                                          +
                                       "Parallel Aware": false,                                                                 +
                                       "Startup Cost": 1585.64,                                                                 +
                                       "Total Cost": 1586.13,                                                                   +
                                       "Plan Rows": 6278,                                                                       +
                                       "Plan Width": 8,                                                                         +
                                       "Actual Startup Time": 1113.965,                                                         +
                                       "Actual Total Time": 1128.200,                                                           +
                                       "Actual Rows": 43837,                                                                    +
                                       "Actual Loops": 1,                                                                       +
                                       "Sort Key": ["mc.movie_id"],                                                             +
                                       "Sort Method": "quicksort",                                                              +
                                       "Sort Space Used": 3591,                                                                 +
                                       "Sort Space Type": "Memory",                                                             +
                                       "Shared Hit Blocks": 9,                                                                  +
                                       "Shared Read Blocks": 21778,                                                             +
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
                                           "Node Type": "Merge Join",                                                           +
                                           "Parent Relationship": "Outer",                                                      +
                                           "Parallel Aware": false,                                                             +
                                           "Join Type": "Inner",                                                                +
                                           "Startup Cost": 1557.04,                                                             +
                                           "Total Cost": 1573.34,                                                               +
                                           "Plan Rows": 6278,                                                                   +
                                           "Plan Width": 8,                                                                     +
                                           "Actual Startup Time": 1067.854,                                                     +
                                           "Actual Total Time": 1097.065,                                                       +
                                           "Actual Rows": 43837,                                                                +
                                           "Actual Loops": 1,                                                                   +
                                           "Inner Unique": false,                                                               +
                                           "Merge Cond": "(cn.id = mc.company_id)",                                             +
                                           "Shared Hit Blocks": 5,                                                              +
                                           "Shared Read Blocks": 21778,                                                         +
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
                                               "Node Type": "Sort",                                                             +
                                               "Parent Relationship": "Outer",                                                  +
                                               "Parallel Aware": false,                                                         +
                                               "Startup Cost": 344.10,                                                          +
                                               "Total Cost": 350.69,                                                            +
                                               "Plan Rows": 84843,                                                              +
                                               "Plan Width": 4,                                                                 +
                                               "Actual Startup Time": 173.095,                                                  +
                                               "Actual Total Time": 177.181,                                                    +
                                               "Actual Rows": 34630,                                                            +
                                               "Actual Loops": 1,                                                               +
                                               "Sort Key": ["cn.id"],                                                           +
                                               "Sort Method": "quicksort",                                                      +
                                               "Sort Space Used": 7050,                                                         +
                                               "Sort Space Type": "Memory",                                                     +
                                               "Shared Hit Blocks": 2,                                                          +
                                               "Shared Read Blocks": 2992,                                                      +
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
                                                   "Relation Name": "company_name",                                             +
                                                   "Alias": "cn",                                                               +
                                                   "Startup Cost": 0.00,                                                        +
                                                   "Total Cost": 128.41,                                                        +
                                                   "Plan Rows": 84843,                                                          +
                                                   "Plan Width": 4,                                                             +
                                                   "Actual Startup Time": 21.253,                                               +
                                                   "Actual Total Time": 133.595,                                                +
                                                   "Actual Rows": 84843,                                                        +
                                                   "Actual Loops": 1,                                                           +
                                                   "Filter": "((country_code)::text = '[us]'::text)",                           +
                                                   "Rows Removed by Filter": 150154,                                            +
                                                   "Shared Hit Blocks": 2,                                                      +
                                                   "Shared Read Blocks": 2992,                                                  +
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
                                             },                                                                                 +
                                             {                                                                                  +
                                               "Node Type": "Sort",                                                             +
                                               "Parent Relationship": "Inner",                                                  +
                                               "Parallel Aware": false,                                                         +
                                               "Startup Cost": 1212.93,                                                         +
                                               "Total Cost": 1214.28,                                                           +
                                               "Plan Rows": 17389,                                                              +
                                               "Plan Width": 12,                                                                +
                                               "Actual Startup Time": 894.744,                                                  +
                                               "Actual Total Time": 901.505,                                                    +
                                               "Actual Rows": 61664,                                                            +
                                               "Actual Loops": 1,                                                               +
                                               "Sort Key": ["mc.company_id"],                                                   +
                                               "Sort Method": "quicksort",                                                      +
                                               "Sort Space Used": 4427,                                                         +
                                               "Sort Space Type": "Memory",                                                     +
                                               "Shared Hit Blocks": 3,                                                          +
                                               "Shared Read Blocks": 18786,                                                     +
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
                                                   "Relation Name": "movie_companies",                                          +
                                                   "Alias": "mc",                                                               +
                                                   "Startup Cost": 0.00,                                                        +
                                                   "Total Cost": 1174.90,                                                       +
                                                   "Plan Rows": 17389,                                                          +
                                                   "Plan Width": 12,                                                            +
                                                   "Actual Startup Time": 0.012,                                                +
                                                   "Actual Total Time": 859.350,                                                +
                                                   "Actual Rows": 61664,                                                        +
                                                   "Actual Loops": 1,                                                           +
                                                   "Filter": "((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))",+
                                                   "Rows Removed by Filter": 2547465,                                           +
                                                   "Shared Hit Blocks": 3,                                                      +
                                                   "Shared Read Blocks": 18786,                                                 +
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
                                         }                                                                                      +
                                       ]                                                                                        +
                                     },                                                                                         +
                                     {                                                                                          +
                                       "Node Type": "Sort",                                                                     +
                                       "Parent Relationship": "Inner",                                                          +
                                       "Parallel Aware": false,                                                                 +
                                       "Startup Cost": 1255.56,                                                                 +
                                       "Total Cost": 1283.62,                                                                   +
                                       "Plan Rows": 361472,                                                                     +
                                       "Plan Width": 4,                                                                         +
                                       "Actual Startup Time": 382.635,                                                          +
                                       "Actual Total Time": 495.607,                                                            +
                                       "Actual Rows": 365191,                                                                   +
                                       "Actual Loops": 1,                                                                       +
                                       "Sort Key": ["at.movie_id"],                                                             +
                                       "Sort Method": "quicksort",                                                              +
                                       "Sort Space Used": 29233,                                                                +
                                       "Sort Space Type": "Memory",                                                             +
                                       "Shared Hit Blocks": 2,                                                                  +
                                       "Shared Read Blocks": 6190,                                                              +
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
                                           "Relation Name": "aka_title",                                                        +
                                           "Alias": "at",                                                                       +
                                           "Startup Cost": 0.00,                                                                +
                                           "Total Cost": 219.22,                                                                +
                                           "Plan Rows": 361472,                                                                 +
                                           "Plan Width": 4,                                                                     +
                                           "Actual Startup Time": 6.200,                                                        +
                                           "Actual Total Time": 201.255,                                                        +
                                           "Actual Rows": 361472,                                                               +
                                           "Actual Loops": 1,                                                                   +
                                           "Shared Hit Blocks": 2,                                                              +
                                           "Shared Read Blocks": 6190,                                                          +
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
                                   "Index Name": "title_idx_id",                                                                +
                                   "Relation Name": "title",                                                                    +
                                   "Alias": "t",                                                                                +
                                   "Startup Cost": 0.01,                                                                        +
                                   "Total Cost": 0.38,                                                                          +
                                   "Plan Rows": 1,                                                                              +
                                   "Plan Width": 21,                                                                            +
                                   "Actual Startup Time": 1.408,                                                                +
                                   "Actual Total Time": 1.408,                                                                  +
                                   "Actual Rows": 0,                                                                            +
                                   "Actual Loops": 13699,                                                                       +
                                   "Index Cond": "(id = at.movie_id)",                                                          +
                                   "Rows Removed by Index Recheck": 0,                                                          +
                                   "Filter": "(production_year > 2000)",                                                        +
                                   "Rows Removed by Filter": 1,                                                                 +
                                   "Shared Hit Blocks": 48555,                                                                  +
                                   "Shared Read Blocks": 6276,                                                                  +
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
                               "Index Name": "movie_id_movie_info",                                                             +
                               "Relation Name": "movie_info",                                                                   +
                               "Alias": "mi",                                                                                   +
                               "Startup Cost": 0.01,                                                                            +
                               "Total Cost": 0.47,                                                                              +
                               "Plan Rows": 1,                                                                                  +
                               "Plan Width": 50,                                                                                +
                               "Actual Startup Time": 11.255,                                                                   +
                               "Actual Total Time": 11.347,                                                                     +
                               "Actual Rows": 0,                                                                                +
                               "Actual Loops": 5134,                                                                            +
                               "Index Cond": "(movie_id = t.id)",                                                               +
                               "Rows Removed by Index Recheck": 0,                                                              +
                               "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",                     +
                               "Rows Removed by Filter": 72,                                                                    +
                               "Shared Hit Blocks": 58537,                                                                      +
                               "Shared Read Blocks": 28470,                                                                     +
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
                         },                                                                                                     +
                         {                                                                                                      +
                           "Node Type": "Index Scan",                                                                           +
                           "Parent Relationship": "Inner",                                                                      +
                           "Parallel Aware": false,                                                                             +
                           "Scan Direction": "Forward",                                                                         +
                           "Index Name": "company_type_pkey",                                                                   +
                           "Relation Name": "company_type",                                                                     +
                           "Alias": "ct",                                                                                       +
                           "Startup Cost": 0.00,                                                                                +
                           "Total Cost": 0.00,                                                                                  +
                           "Plan Rows": 1,                                                                                      +
                           "Plan Width": 4,                                                                                     +
                           "Actual Startup Time": 0.008,                                                                        +
                           "Actual Total Time": 0.008,                                                                          +
                           "Actual Rows": 1,                                                                                    +
                           "Actual Loops": 57,                                                                                  +
                           "Index Cond": "(id = mc.company_type_id)",                                                           +
                           "Rows Removed by Index Recheck": 0,                                                                  +
                           "Shared Hit Blocks": 114,                                                                            +
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
                     },                                                                                                         +
                     {                                                                                                          +
                       "Node Type": "Materialize",                                                                              +
                       "Parent Relationship": "Inner",                                                                          +
                       "Parallel Aware": false,                                                                                 +
                       "Startup Cost": 0.00,                                                                                    +
                       "Total Cost": 0.05,                                                                                      +
                       "Plan Rows": 1,                                                                                          +
                       "Plan Width": 4,                                                                                         +
                       "Actual Startup Time": 0.001,                                                                            +
                       "Actual Total Time": 0.001,                                                                              +
                       "Actual Rows": 1,                                                                                        +
                       "Actual Loops": 57,                                                                                      +
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
                           "Relation Name": "info_type",                                                                        +
                           "Alias": "it1",                                                                                      +
                           "Startup Cost": 0.00,                                                                                +
                           "Total Cost": 0.05,                                                                                  +
                           "Plan Rows": 1,                                                                                      +
                           "Plan Width": 4,                                                                                     +
                           "Actual Startup Time": 0.026,                                                                        +
                           "Actual Total Time": 0.026,                                                                          +
                           "Actual Rows": 1,                                                                                    +
                           "Actual Loops": 1,                                                                                   +
                           "Filter": "((info)::text = 'release dates'::text)",                                                  +
                           "Rows Removed by Filter": 15,                                                                        +
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
                   "Index Name": "movie_id_movie_keyword",                                                                      +
                   "Relation Name": "movie_keyword",                                                                            +
                   "Alias": "mk",                                                                                               +
                   "Startup Cost": 0.01,                                                                                        +
                   "Total Cost": 0.10,                                                                                          +
                   "Plan Rows": 11,                                                                                             +
                   "Plan Width": 8,                                                                                             +
                   "Actual Startup Time": 12.306,                                                                               +
                   "Actual Total Time": 12.320,                                                                                 +
                   "Actual Rows": 6,                                                                                            +
                   "Actual Loops": 57,                                                                                          +
                   "Index Cond": "(movie_id = t.id)",                                                                           +
                   "Rows Removed by Index Recheck": 0,                                                                          +
                   "Shared Hit Blocks": 143,                                                                                    +
                   "Shared Read Blocks": 65,                                                                                    +
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
               "Index Name": "keyword_pkey",                                                                                    +
               "Relation Name": "keyword",                                                                                      +
               "Alias": "k",                                                                                                    +
               "Startup Cost": 0.01,                                                                                            +
               "Total Cost": 0.01,                                                                                              +
               "Plan Rows": 1,                                                                                                  +
               "Plan Width": 4,                                                                                                 +
               "Actual Startup Time": 1.989,                                                                                    +
               "Actual Total Time": 1.989,                                                                                      +
               "Actual Rows": 1,                                                                                                +
               "Actual Loops": 328,                                                                                             +
               "Index Cond": "(id = mk.keyword_id)",                                                                            +
               "Rows Removed by Index Recheck": 0,                                                                              +
               "Shared Hit Blocks": 1131,                                                                                       +
               "Shared Read Blocks": 181,                                                                                       +
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
         }                                                                                                                      +
       ]                                                                                                                        +
     },                                                                                                                         +
     "Planning Time": 9208.938,                                                                                                 +
     "Triggers": [                                                                                                              +
     ],                                                                                                                         +
     "Execution Time": 80747.077                                                                                                +
   }                                                                                                                            +
 ]
(1 row)

