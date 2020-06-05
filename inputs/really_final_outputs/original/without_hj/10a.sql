                                                QUERY PLAN                                                 
-----------------------------------------------------------------------------------------------------------
 [                                                                                                        +
   {                                                                                                      +
     "Plan": {                                                                                            +
       "Node Type": "Aggregate",                                                                          +
       "Strategy": "Plain",                                                                               +
       "Partial Mode": "Simple",                                                                          +
       "Parallel Aware": false,                                                                           +
       "Startup Cost": 13594.97,                                                                          +
       "Total Cost": 13594.97,                                                                            +
       "Plan Rows": 1,                                                                                    +
       "Plan Width": 64,                                                                                  +
       "Actual Startup Time": 556478.026,                                                                 +
       "Actual Total Time": 556478.026,                                                                   +
       "Actual Rows": 1,                                                                                  +
       "Actual Loops": 1,                                                                                 +
       "Shared Hit Blocks": 191976,                                                                       +
       "Shared Read Blocks": 105550,                                                                      +
       "Shared Dirtied Blocks": 0,                                                                        +
       "Shared Written Blocks": 0,                                                                        +
       "Local Hit Blocks": 0,                                                                             +
       "Local Read Blocks": 0,                                                                            +
       "Local Dirtied Blocks": 0,                                                                         +
       "Local Written Blocks": 0,                                                                         +
       "Temp Read Blocks": 0,                                                                             +
       "Temp Written Blocks": 0,                                                                          +
       "Plans": [                                                                                         +
         {                                                                                                +
           "Node Type": "Nested Loop",                                                                    +
           "Parent Relationship": "Outer",                                                                +
           "Parallel Aware": false,                                                                       +
           "Join Type": "Inner",                                                                          +
           "Startup Cost": 9536.11,                                                                       +
           "Total Cost": 13594.97,                                                                        +
           "Plan Rows": 4,                                                                                +
           "Plan Width": 33,                                                                              +
           "Actual Startup Time": 37930.300,                                                              +
           "Actual Total Time": 556477.165,                                                               +
           "Actual Rows": 104,                                                                            +
           "Actual Loops": 1,                                                                             +
           "Inner Unique": true,                                                                          +
           "Shared Hit Blocks": 191976,                                                                   +
           "Shared Read Blocks": 105550,                                                                  +
           "Shared Dirtied Blocks": 0,                                                                    +
           "Shared Written Blocks": 0,                                                                    +
           "Local Hit Blocks": 0,                                                                         +
           "Local Read Blocks": 0,                                                                        +
           "Local Dirtied Blocks": 0,                                                                     +
           "Local Written Blocks": 0,                                                                     +
           "Temp Read Blocks": 0,                                                                         +
           "Temp Written Blocks": 0,                                                                      +
           "Plans": [                                                                                     +
             {                                                                                            +
               "Node Type": "Nested Loop",                                                                +
               "Parent Relationship": "Outer",                                                            +
               "Parallel Aware": false,                                                                   +
               "Join Type": "Inner",                                                                      +
               "Startup Cost": 9536.10,                                                                   +
               "Total Cost": 13594.96,                                                                    +
               "Plan Rows": 4,                                                                            +
               "Plan Width": 37,                                                                          +
               "Actual Startup Time": 37930.271,                                                          +
               "Actual Total Time": 556475.234,                                                           +
               "Actual Rows": 104,                                                                        +
               "Actual Loops": 1,                                                                         +
               "Inner Unique": true,                                                                      +
               "Shared Hit Blocks": 191768,                                                               +
               "Shared Read Blocks": 105550,                                                              +
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
                   "Startup Cost": 9536.09,                                                               +
                   "Total Cost": 13563.60,                                                                +
                   "Plan Rows": 8,                                                                        +
                   "Plan Width": 25,                                                                      +
                   "Actual Startup Time": 37908.441,                                                      +
                   "Actual Total Time": 555553.248,                                                       +
                   "Actual Rows": 112,                                                                    +
                   "Actual Loops": 1,                                                                     +
                   "Inner Unique": true,                                                                  +
                   "Join Filter": "(ci.role_id = rt.id)",                                                 +
                   "Rows Removed by Join Filter": 39,                                                     +
                   "Shared Hit Blocks": 191486,                                                           +
                   "Shared Read Blocks": 105415,                                                          +
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
                       "Startup Cost": 9536.09,                                                           +
                       "Total Cost": 13563.55,                                                            +
                       "Plan Rows": 97,                                                                   +
                       "Plan Width": 29,                                                                  +
                       "Actual Startup Time": 37908.398,                                                  +
                       "Actual Total Time": 555552.459,                                                   +
                       "Actual Rows": 151,                                                                +
                       "Actual Loops": 1,                                                                 +
                       "Inner Unique": false,                                                             +
                       "Join Filter": "(t.id = ci.movie_id)",                                             +
                       "Rows Removed by Join Filter": 0,                                                  +
                       "Shared Hit Blocks": 191485,                                                       +
                       "Shared Read Blocks": 105415,                                                      +
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
                           "Startup Cost": 9536.07,                                                       +
                           "Total Cost": 10909.18,                                                        +
                           "Plan Rows": 6054,                                                             +
                           "Plan Width": 29,                                                              +
                           "Actual Startup Time": 1782.037,                                               +
                           "Actual Total Time": 97092.975,                                                +
                           "Actual Rows": 4539,                                                           +
                           "Actual Loops": 1,                                                             +
                           "Inner Unique": true,                                                          +
                           "Shared Hit Blocks": 27858,                                                    +
                           "Shared Read Blocks": 29118,                                                   +
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
                               "Node Type": "Merge Join",                                                 +
                               "Parent Relationship": "Outer",                                            +
                               "Parallel Aware": false,                                                   +
                               "Join Type": "Inner",                                                      +
                               "Startup Cost": 9536.06,                                                   +
                               "Total Cost": 9942.46,                                                     +
                               "Plan Rows": 15111,                                                        +
                               "Plan Width": 8,                                                           +
                               "Actual Startup Time": 1681.228,                                           +
                               "Actual Total Time": 3053.506,                                             +
                               "Actual Rows": 8790,                                                       +
                               "Actual Loops": 1,                                                         +
                               "Inner Unique": false,                                                     +
                               "Merge Cond": "(cn.id = mc.company_id)",                                   +
                               "Shared Hit Blocks": 9,                                                    +
                               "Shared Read Blocks": 21778,                                               +
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
                                   "Node Type": "Sort",                                                   +
                                   "Parent Relationship": "Outer",                                        +
                                   "Parallel Aware": false,                                               +
                                   "Startup Cost": 130.61,                                                +
                                   "Total Cost": 130.71,                                                  +
                                   "Plan Rows": 1361,                                                     +
                                   "Plan Width": 4,                                                       +
                                   "Actual Startup Time": 188.474,                                        +
                                   "Actual Total Time": 189.264,                                          +
                                   "Actual Rows": 1361,                                                   +
                                   "Actual Loops": 1,                                                     +
                                   "Sort Key": ["cn.id"],                                                 +
                                   "Sort Method": "quicksort",                                            +
                                   "Sort Space Used": 112,                                                +
                                   "Sort Space Type": "Memory",                                           +
                                   "Shared Hit Blocks": 6,                                                +
                                   "Shared Read Blocks": 2992,                                            +
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
                                       "Node Type": "Seq Scan",                                           +
                                       "Parent Relationship": "Outer",                                    +
                                       "Parallel Aware": false,                                           +
                                       "Relation Name": "company_name",                                   +
                                       "Alias": "cn",                                                     +
                                       "Startup Cost": 0.00,                                              +
                                       "Total Cost": 128.41,                                              +
                                       "Plan Rows": 1361,                                                 +
                                       "Plan Width": 4,                                                   +
                                       "Actual Startup Time": 0.192,                                      +
                                       "Actual Total Time": 187.513,                                      +
                                       "Actual Rows": 1361,                                               +
                                       "Actual Loops": 1,                                                 +
                                       "Filter": "((country_code)::text = '[ru]'::text)",                 +
                                       "Rows Removed by Filter": 233636,                                  +
                                       "Shared Hit Blocks": 2,                                            +
                                       "Shared Read Blocks": 2992,                                        +
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
                                   "Node Type": "Sort",                                                   +
                                   "Parent Relationship": "Inner",                                        +
                                   "Parallel Aware": false,                                               +
                                   "Startup Cost": 9405.45,                                               +
                                   "Total Cost": 9608.03,                                                 +
                                   "Plan Rows": 2609129,                                                  +
                                   "Plan Width": 12,                                                      +
                                   "Actual Startup Time": 1412.921,                                       +
                                   "Actual Total Time": 2093.885,                                         +
                                   "Actual Rows": 2608750,                                                +
                                   "Actual Loops": 1,                                                     +
                                   "Sort Key": ["mc.company_id"],                                         +
                                   "Sort Method": "quicksort",                                            +
                                   "Sort Space Used": 220607,                                             +
                                   "Sort Space Type": "Memory",                                           +
                                   "Shared Hit Blocks": 3,                                                +
                                   "Shared Read Blocks": 18786,                                           +
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
                                       "Node Type": "Seq Scan",                                           +
                                       "Parent Relationship": "Outer",                                    +
                                       "Parallel Aware": false,                                           +
                                       "Relation Name": "movie_companies",                                +
                                       "Alias": "mc",                                                     +
                                       "Startup Cost": 0.00,                                              +
                                       "Total Cost": 769.75,                                              +
                                       "Plan Rows": 2609129,                                              +
                                       "Plan Width": 12,                                                  +
                                       "Actual Startup Time": 0.008,                                      +
                                       "Actual Total Time": 533.109,                                      +
                                       "Actual Rows": 2609129,                                            +
                                       "Actual Loops": 1,                                                 +
                                       "Shared Hit Blocks": 3,                                            +
                                       "Shared Read Blocks": 18786,                                       +
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
                                 }                                                                        +
                               ]                                                                          +
                             },                                                                           +
                             {                                                                            +
                               "Node Type": "Index Scan",                                                 +
                               "Parent Relationship": "Inner",                                            +
                               "Parallel Aware": false,                                                   +
                               "Scan Direction": "Forward",                                               +
                               "Index Name": "title_idx_id",                                              +
                               "Relation Name": "title",                                                  +
                               "Alias": "t",                                                              +
                               "Startup Cost": 0.01,                                                      +
                               "Total Cost": 0.06,                                                        +
                               "Plan Rows": 1,                                                            +
                               "Plan Width": 21,                                                          +
                               "Actual Startup Time": 10.694,                                             +
                               "Actual Total Time": 10.694,                                               +
                               "Actual Rows": 1,                                                          +
                               "Actual Loops": 8790,                                                      +
                               "Index Cond": "(id = mc.movie_id)",                                        +
                               "Rows Removed by Index Recheck": 0,                                        +
                               "Filter": "(production_year > 2005)",                                      +
                               "Rows Removed by Filter": 0,                                               +
                               "Shared Hit Blocks": 27849,                                                +
                               "Shared Read Blocks": 7340,                                                +
                               "Shared Dirtied Blocks": 0,                                                +
                               "Shared Written Blocks": 0,                                                +
                               "Local Hit Blocks": 0,                                                     +
                               "Local Read Blocks": 0,                                                    +
                               "Local Dirtied Blocks": 0,                                                 +
                               "Local Written Blocks": 0,                                                 +
                               "Temp Read Blocks": 0,                                                     +
                               "Temp Written Blocks": 0                                                   +
                             }                                                                            +
                           ]                                                                              +
                         },                                                                               +
                         {                                                                                +
                           "Node Type": "Index Scan",                                                     +
                           "Parent Relationship": "Inner",                                                +
                           "Parallel Aware": false,                                                       +
                           "Scan Direction": "Forward",                                                   +
                           "Index Name": "movie_id_cast_info",                                            +
                           "Relation Name": "cast_info",                                                  +
                           "Alias": "ci",                                                                 +
                           "Startup Cost": 0.02,                                                          +
                           "Total Cost": 0.44,                                                            +
                           "Plan Rows": 1,                                                                +
                           "Plan Width": 12,                                                              +
                           "Actual Startup Time": 94.894,                                                 +
                           "Actual Total Time": 100.999,                                                  +
                           "Actual Rows": 0,                                                              +
                           "Actual Loops": 4539,                                                          +
                           "Index Cond": "(movie_id = mc.movie_id)",                                      +
                           "Rows Removed by Index Recheck": 0,                                            +
                           "Filter": "((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))",+
                           "Rows Removed by Filter": 50,                                                  +
                           "Shared Hit Blocks": 163627,                                                   +
                           "Shared Read Blocks": 76297,                                                   +
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
                       "Node Type": "Materialize",                                                        +
                       "Parent Relationship": "Inner",                                                    +
                       "Parallel Aware": false,                                                           +
                       "Startup Cost": 0.00,                                                              +
                       "Total Cost": 0.03,                                                                +
                       "Plan Rows": 1,                                                                    +
                       "Plan Width": 4,                                                                   +
                       "Actual Startup Time": 0.001,                                                      +
                       "Actual Total Time": 0.001,                                                        +
                       "Actual Rows": 1,                                                                  +
                       "Actual Loops": 151,                                                               +
                       "Shared Hit Blocks": 1,                                                            +
                       "Shared Read Blocks": 0,                                                           +
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
                           "Node Type": "Seq Scan",                                                       +
                           "Parent Relationship": "Outer",                                                +
                           "Parallel Aware": false,                                                       +
                           "Relation Name": "role_type",                                                  +
                           "Alias": "rt",                                                                 +
                           "Startup Cost": 0.00,                                                          +
                           "Total Cost": 0.03,                                                            +
                           "Plan Rows": 1,                                                                +
                           "Plan Width": 4,                                                               +
                           "Actual Startup Time": 0.027,                                                  +
                           "Actual Total Time": 0.040,                                                    +
                           "Actual Rows": 1,                                                              +
                           "Actual Loops": 1,                                                             +
                           "Filter": "((role)::text = 'actor'::text)",                                    +
                           "Rows Removed by Filter": 11,                                                  +
                           "Shared Hit Blocks": 1,                                                        +
                           "Shared Read Blocks": 0,                                                       +
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
                     }                                                                                    +
                   ]                                                                                      +
                 },                                                                                       +
                 {                                                                                        +
                   "Node Type": "Index Scan",                                                             +
                   "Parent Relationship": "Inner",                                                        +
                   "Parallel Aware": false,                                                               +
                   "Scan Direction": "Forward",                                                           +
                   "Index Name": "char_name_pkey",                                                        +
                   "Relation Name": "char_name",                                                          +
                   "Alias": "chn",                                                                        +
                   "Startup Cost": 0.01,                                                                  +
                   "Total Cost": 3.92,                                                                    +
                   "Plan Rows": 1,                                                                        +
                   "Plan Width": 20,                                                                      +
                   "Actual Startup Time": 8.224,                                                          +
                   "Actual Total Time": 8.224,                                                            +
                   "Actual Rows": 1,                                                                      +
                   "Actual Loops": 112,                                                                   +
                   "Index Cond": "(id = ci.person_role_id)",                                              +
                   "Rows Removed by Index Recheck": 0,                                                    +
                   "Shared Hit Blocks": 282,                                                              +
                   "Shared Read Blocks": 135,                                                             +
                   "Shared Dirtied Blocks": 0,                                                            +
                   "Shared Written Blocks": 0,                                                            +
                   "Local Hit Blocks": 0,                                                                 +
                   "Local Read Blocks": 0,                                                                +
                   "Local Dirtied Blocks": 0,                                                             +
                   "Local Written Blocks": 0,                                                             +
                   "Temp Read Blocks": 0,                                                                 +
                   "Temp Written Blocks": 0                                                               +
                 }                                                                                        +
               ]                                                                                          +
             },                                                                                           +
             {                                                                                            +
               "Node Type": "Index Scan",                                                                 +
               "Parent Relationship": "Inner",                                                            +
               "Parallel Aware": false,                                                                   +
               "Scan Direction": "Forward",                                                               +
               "Index Name": "company_type_pkey",                                                         +
               "Relation Name": "company_type",                                                           +
               "Alias": "ct",                                                                             +
               "Startup Cost": 0.00,                                                                      +
               "Total Cost": 0.00,                                                                        +
               "Plan Rows": 1,                                                                            +
               "Plan Width": 4,                                                                           +
               "Actual Startup Time": 0.011,                                                              +
               "Actual Total Time": 0.011,                                                                +
               "Actual Rows": 1,                                                                          +
               "Actual Loops": 104,                                                                       +
               "Index Cond": "(id = mc.company_type_id)",                                                 +
               "Rows Removed by Index Recheck": 0,                                                        +
               "Shared Hit Blocks": 208,                                                                  +
               "Shared Read Blocks": 0,                                                                   +
               "Shared Dirtied Blocks": 0,                                                                +
               "Shared Written Blocks": 0,                                                                +
               "Local Hit Blocks": 0,                                                                     +
               "Local Read Blocks": 0,                                                                    +
               "Local Dirtied Blocks": 0,                                                                 +
               "Local Written Blocks": 0,                                                                 +
               "Temp Read Blocks": 0,                                                                     +
               "Temp Written Blocks": 0                                                                   +
             }                                                                                            +
           ]                                                                                              +
         }                                                                                                +
       ]                                                                                                  +
     },                                                                                                   +
     "Planning Time": 2846.272,                                                                           +
     "Triggers": [                                                                                        +
     ],                                                                                                   +
     "Execution Time": 556495.348                                                                         +
   }                                                                                                      +
 ]
(1 row)

