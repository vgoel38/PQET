                                        QUERY PLAN                                        
------------------------------------------------------------------------------------------
 [                                                                                       +
   {                                                                                     +
     "Plan": {                                                                           +
       "Node Type": "Aggregate",                                                         +
       "Strategy": "Plain",                                                              +
       "Partial Mode": "Simple",                                                         +
       "Parallel Aware": false,                                                          +
       "Startup Cost": 11955.80,                                                         +
       "Total Cost": 11955.80,                                                           +
       "Plan Rows": 1,                                                                   +
       "Plan Width": 64,                                                                 +
       "Actual Startup Time": 233211.612,                                                +
       "Actual Total Time": 233211.612,                                                  +
       "Actual Rows": 1,                                                                 +
       "Actual Loops": 1,                                                                +
       "Shared Hit Blocks": 64202,                                                       +
       "Shared Read Blocks": 54200,                                                      +
       "Shared Dirtied Blocks": 0,                                                       +
       "Shared Written Blocks": 0,                                                       +
       "Local Hit Blocks": 0,                                                            +
       "Local Read Blocks": 0,                                                           +
       "Local Dirtied Blocks": 0,                                                        +
       "Local Written Blocks": 0,                                                        +
       "Temp Read Blocks": 0,                                                            +
       "Temp Written Blocks": 0,                                                         +
       "Plans": [                                                                        +
         {                                                                               +
           "Node Type": "Nested Loop",                                                   +
           "Parent Relationship": "Outer",                                               +
           "Parallel Aware": false,                                                      +
           "Join Type": "Inner",                                                         +
           "Startup Cost": 9536.10,                                                      +
           "Total Cost": 11955.78,                                                       +
           "Plan Rows": 100,                                                             +
           "Plan Width": 33,                                                             +
           "Actual Startup Time": 233211.564,                                            +
           "Actual Total Time": 233211.564,                                              +
           "Actual Rows": 0,                                                             +
           "Actual Loops": 1,                                                            +
           "Inner Unique": true,                                                         +
           "Join Filter": "(mc.company_type_id = ct.id)",                                +
           "Rows Removed by Join Filter": 0,                                             +
           "Shared Hit Blocks": 64202,                                                   +
           "Shared Read Blocks": 54200,                                                  +
           "Shared Dirtied Blocks": 0,                                                   +
           "Shared Written Blocks": 0,                                                   +
           "Local Hit Blocks": 0,                                                        +
           "Local Read Blocks": 0,                                                       +
           "Local Dirtied Blocks": 0,                                                    +
           "Local Written Blocks": 0,                                                    +
           "Temp Read Blocks": 0,                                                        +
           "Temp Written Blocks": 0,                                                     +
           "Plans": [                                                                    +
             {                                                                           +
               "Node Type": "Nested Loop",                                               +
               "Parent Relationship": "Outer",                                           +
               "Parallel Aware": false,                                                  +
               "Join Type": "Inner",                                                     +
               "Startup Cost": 9536.10,                                                  +
               "Total Cost": 11955.68,                                                   +
               "Plan Rows": 100,                                                         +
               "Plan Width": 37,                                                         +
               "Actual Startup Time": 233211.563,                                        +
               "Actual Total Time": 233211.564,                                          +
               "Actual Rows": 0,                                                         +
               "Actual Loops": 1,                                                        +
               "Inner Unique": true,                                                     +
               "Shared Hit Blocks": 64202,                                               +
               "Shared Read Blocks": 54200,                                              +
               "Shared Dirtied Blocks": 0,                                               +
               "Shared Written Blocks": 0,                                               +
               "Local Hit Blocks": 0,                                                    +
               "Local Read Blocks": 0,                                                   +
               "Local Dirtied Blocks": 0,                                                +
               "Local Written Blocks": 0,                                                +
               "Temp Read Blocks": 0,                                                    +
               "Temp Written Blocks": 0,                                                 +
               "Plans": [                                                                +
                 {                                                                       +
                   "Node Type": "Nested Loop",                                           +
                   "Parent Relationship": "Outer",                                       +
                   "Parallel Aware": false,                                              +
                   "Join Type": "Inner",                                                 +
                   "Startup Cost": 9536.09,                                              +
                   "Total Cost": 11931.99,                                               +
                   "Plan Rows": 205,                                                     +
                   "Plan Width": 25,                                                     +
                   "Actual Startup Time": 233211.563,                                    +
                   "Actual Total Time": 233211.563,                                      +
                   "Actual Rows": 0,                                                     +
                   "Actual Loops": 1,                                                    +
                   "Inner Unique": true,                                                 +
                   "Join Filter": "(ci.role_id = rt.id)",                                +
                   "Rows Removed by Join Filter": 2614,                                  +
                   "Shared Hit Blocks": 64202,                                           +
                   "Shared Read Blocks": 54200,                                          +
                   "Shared Dirtied Blocks": 0,                                           +
                   "Shared Written Blocks": 0,                                           +
                   "Local Hit Blocks": 0,                                                +
                   "Local Read Blocks": 0,                                               +
                   "Local Dirtied Blocks": 0,                                            +
                   "Local Written Blocks": 0,                                            +
                   "Temp Read Blocks": 0,                                                +
                   "Temp Written Blocks": 0,                                             +
                   "Plans": [                                                            +
                     {                                                                   +
                       "Node Type": "Nested Loop",                                       +
                       "Parent Relationship": "Outer",                                   +
                       "Parallel Aware": false,                                          +
                       "Join Type": "Inner",                                             +
                       "Startup Cost": 9536.09,                                          +
                       "Total Cost": 11931.41,                                           +
                       "Plan Rows": 2464,                                                +
                       "Plan Width": 29,                                                 +
                       "Actual Startup Time": 2210.626,                                  +
                       "Actual Total Time": 233203.135,                                  +
                       "Actual Rows": 2614,                                              +
                       "Actual Loops": 1,                                                +
                       "Inner Unique": false,                                            +
                       "Join Filter": "(t.id = ci.movie_id)",                            +
                       "Rows Removed by Join Filter": 0,                                 +
                       "Shared Hit Blocks": 64201,                                       +
                       "Shared Read Blocks": 54200,                                      +
                       "Shared Dirtied Blocks": 0,                                       +
                       "Shared Written Blocks": 0,                                       +
                       "Local Hit Blocks": 0,                                            +
                       "Local Read Blocks": 0,                                           +
                       "Local Dirtied Blocks": 0,                                        +
                       "Local Written Blocks": 0,                                        +
                       "Temp Read Blocks": 0,                                            +
                       "Temp Written Blocks": 0,                                         +
                       "Plans": [                                                        +
                         {                                                               +
                           "Node Type": "Nested Loop",                                   +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Join Type": "Inner",                                         +
                           "Startup Cost": 9536.07,                                      +
                           "Total Cost": 10909.18,                                       +
                           "Plan Rows": 2341,                                            +
                           "Plan Width": 29,                                             +
                           "Actual Startup Time": 1873.237,                              +
                           "Actual Total Time": 84923.934,                               +
                           "Actual Rows": 1259,                                          +
                           "Actual Loops": 1,                                            +
                           "Inner Unique": true,                                         +
                           "Shared Hit Blocks": 27868,                                   +
                           "Shared Read Blocks": 29119,                                  +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0,                                     +
                           "Plans": [                                                    +
                             {                                                           +
                               "Node Type": "Merge Join",                                +
                               "Parent Relationship": "Outer",                           +
                               "Parallel Aware": false,                                  +
                               "Join Type": "Inner",                                     +
                               "Startup Cost": 9536.06,                                  +
                               "Total Cost": 9942.46,                                    +
                               "Plan Rows": 15111,                                       +
                               "Plan Width": 8,                                          +
                               "Actual Startup Time": 1650.359,                          +
                               "Actual Total Time": 3004.381,                            +
                               "Actual Rows": 8790,                                      +
                               "Actual Loops": 1,                                        +
                               "Inner Unique": false,                                    +
                               "Merge Cond": "(cn.id = mc.company_id)",                  +
                               "Shared Hit Blocks": 9,                                   +
                               "Shared Read Blocks": 21778,                              +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0,                                 +
                               "Plans": [                                                +
                                 {                                                       +
                                   "Node Type": "Sort",                                  +
                                   "Parent Relationship": "Outer",                       +
                                   "Parallel Aware": false,                              +
                                   "Startup Cost": 130.61,                               +
                                   "Total Cost": 130.71,                                 +
                                   "Plan Rows": 1361,                                    +
                                   "Plan Width": 4,                                      +
                                   "Actual Startup Time": 156.575,                       +
                                   "Actual Total Time": 157.271,                         +
                                   "Actual Rows": 1361,                                  +
                                   "Actual Loops": 1,                                    +
                                   "Sort Key": ["cn.id"],                                +
                                   "Sort Method": "quicksort",                           +
                                   "Sort Space Used": 112,                               +
                                   "Sort Space Type": "Memory",                          +
                                   "Shared Hit Blocks": 6,                               +
                                   "Shared Read Blocks": 2992,                           +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0,                             +
                                   "Plans": [                                            +
                                     {                                                   +
                                       "Node Type": "Seq Scan",                          +
                                       "Parent Relationship": "Outer",                   +
                                       "Parallel Aware": false,                          +
                                       "Relation Name": "company_name",                  +
                                       "Alias": "cn",                                    +
                                       "Startup Cost": 0.00,                             +
                                       "Total Cost": 128.41,                             +
                                       "Plan Rows": 1361,                                +
                                       "Plan Width": 4,                                  +
                                       "Actual Startup Time": 0.176,                     +
                                       "Actual Total Time": 155.590,                     +
                                       "Actual Rows": 1361,                              +
                                       "Actual Loops": 1,                                +
                                       "Filter": "((country_code)::text = '[ru]'::text)",+
                                       "Rows Removed by Filter": 233636,                 +
                                       "Shared Hit Blocks": 2,                           +
                                       "Shared Read Blocks": 2992,                       +
                                       "Shared Dirtied Blocks": 0,                       +
                                       "Shared Written Blocks": 0,                       +
                                       "Local Hit Blocks": 0,                            +
                                       "Local Read Blocks": 0,                           +
                                       "Local Dirtied Blocks": 0,                        +
                                       "Local Written Blocks": 0,                        +
                                       "Temp Read Blocks": 0,                            +
                                       "Temp Written Blocks": 0                          +
                                     }                                                   +
                                   ]                                                     +
                                 },                                                      +
                                 {                                                       +
                                   "Node Type": "Sort",                                  +
                                   "Parent Relationship": "Inner",                       +
                                   "Parallel Aware": false,                              +
                                   "Startup Cost": 9405.45,                              +
                                   "Total Cost": 9608.03,                                +
                                   "Plan Rows": 2609129,                                 +
                                   "Plan Width": 12,                                     +
                                   "Actual Startup Time": 1415.752,                      +
                                   "Actual Total Time": 2066.145,                        +
                                   "Actual Rows": 2608750,                               +
                                   "Actual Loops": 1,                                    +
                                   "Sort Key": ["mc.company_id"],                        +
                                   "Sort Method": "quicksort",                           +
                                   "Sort Space Used": 220607,                            +
                                   "Sort Space Type": "Memory",                          +
                                   "Shared Hit Blocks": 3,                               +
                                   "Shared Read Blocks": 18786,                          +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0,                             +
                                   "Plans": [                                            +
                                     {                                                   +
                                       "Node Type": "Seq Scan",                          +
                                       "Parent Relationship": "Outer",                   +
                                       "Parallel Aware": false,                          +
                                       "Relation Name": "movie_companies",               +
                                       "Alias": "mc",                                    +
                                       "Startup Cost": 0.00,                             +
                                       "Total Cost": 769.75,                             +
                                       "Plan Rows": 2609129,                             +
                                       "Plan Width": 12,                                 +
                                       "Actual Startup Time": 0.006,                     +
                                       "Actual Total Time": 536.049,                     +
                                       "Actual Rows": 2609129,                           +
                                       "Actual Loops": 1,                                +
                                       "Shared Hit Blocks": 3,                           +
                                       "Shared Read Blocks": 18786,                      +
                                       "Shared Dirtied Blocks": 0,                       +
                                       "Shared Written Blocks": 0,                       +
                                       "Local Hit Blocks": 0,                            +
                                       "Local Read Blocks": 0,                           +
                                       "Local Dirtied Blocks": 0,                        +
                                       "Local Written Blocks": 0,                        +
                                       "Temp Read Blocks": 0,                            +
                                       "Temp Written Blocks": 0                          +
                                     }                                                   +
                                   ]                                                     +
                                 }                                                       +
                               ]                                                         +
                             },                                                          +
                             {                                                           +
                               "Node Type": "Index Scan",                                +
                               "Parent Relationship": "Inner",                           +
                               "Parallel Aware": false,                                  +
                               "Scan Direction": "Forward",                              +
                               "Index Name": "title_idx_id",                             +
                               "Relation Name": "title",                                 +
                               "Alias": "t",                                             +
                               "Startup Cost": 0.01,                                     +
                               "Total Cost": 0.06,                                       +
                               "Plan Rows": 1,                                           +
                               "Plan Width": 21,                                         +
                               "Actual Startup Time": 9.316,                             +
                               "Actual Total Time": 9.316,                               +
                               "Actual Rows": 0,                                         +
                               "Actual Loops": 8790,                                     +
                               "Index Cond": "(id = mc.movie_id)",                       +
                               "Rows Removed by Index Recheck": 0,                       +
                               "Filter": "(production_year > 2010)",                     +
                               "Rows Removed by Filter": 1,                              +
                               "Shared Hit Blocks": 27859,                               +
                               "Shared Read Blocks": 7341,                               +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0                                  +
                             }                                                           +
                           ]                                                             +
                         },                                                              +
                         {                                                               +
                           "Node Type": "Index Scan",                                    +
                           "Parent Relationship": "Inner",                               +
                           "Parallel Aware": false,                                      +
                           "Scan Direction": "Forward",                                  +
                           "Index Name": "movie_id_cast_info",                           +
                           "Relation Name": "cast_info",                                 +
                           "Alias": "ci",                                                +
                           "Startup Cost": 0.02,                                         +
                           "Total Cost": 0.44,                                           +
                           "Plan Rows": 1,                                               +
                           "Plan Width": 12,                                             +
                           "Actual Startup Time": 67.973,                                +
                           "Actual Total Time": 117.766,                                 +
                           "Actual Rows": 2,                                             +
                           "Actual Loops": 1259,                                         +
                           "Index Cond": "(movie_id = mc.movie_id)",                     +
                           "Rows Removed by Index Recheck": 0,                           +
                           "Filter": "(note ~~ '%(producer)%'::text)",                   +
                           "Rows Removed by Filter": 44,                                 +
                           "Shared Hit Blocks": 36333,                                   +
                           "Shared Read Blocks": 25081,                                  +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0                                      +
                         }                                                               +
                       ]                                                                 +
                     },                                                                  +
                     {                                                                   +
                       "Node Type": "Materialize",                                       +
                       "Parent Relationship": "Inner",                                   +
                       "Parallel Aware": false,                                          +
                       "Startup Cost": 0.00,                                             +
                       "Total Cost": 0.03,                                               +
                       "Plan Rows": 1,                                                   +
                       "Plan Width": 4,                                                  +
                       "Actual Startup Time": 0.001,                                     +
                       "Actual Total Time": 0.001,                                       +
                       "Actual Rows": 1,                                                 +
                       "Actual Loops": 2614,                                             +
                       "Shared Hit Blocks": 1,                                           +
                       "Shared Read Blocks": 0,                                          +
                       "Shared Dirtied Blocks": 0,                                       +
                       "Shared Written Blocks": 0,                                       +
                       "Local Hit Blocks": 0,                                            +
                       "Local Read Blocks": 0,                                           +
                       "Local Dirtied Blocks": 0,                                        +
                       "Local Written Blocks": 0,                                        +
                       "Temp Read Blocks": 0,                                            +
                       "Temp Written Blocks": 0,                                         +
                       "Plans": [                                                        +
                         {                                                               +
                           "Node Type": "Seq Scan",                                      +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Relation Name": "role_type",                                 +
                           "Alias": "rt",                                                +
                           "Startup Cost": 0.00,                                         +
                           "Total Cost": 0.03,                                           +
                           "Plan Rows": 1,                                               +
                           "Plan Width": 4,                                              +
                           "Actual Startup Time": 0.019,                                 +
                           "Actual Total Time": 0.027,                                   +
                           "Actual Rows": 1,                                             +
                           "Actual Loops": 1,                                            +
                           "Filter": "((role)::text = 'actor'::text)",                   +
                           "Rows Removed by Filter": 11,                                 +
                           "Shared Hit Blocks": 1,                                       +
                           "Shared Read Blocks": 0,                                      +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0                                      +
                         }                                                               +
                       ]                                                                 +
                     }                                                                   +
                   ]                                                                     +
                 },                                                                      +
                 {                                                                       +
                   "Node Type": "Index Scan",                                            +
                   "Parent Relationship": "Inner",                                       +
                   "Parallel Aware": false,                                              +
                   "Scan Direction": "Forward",                                          +
                   "Index Name": "char_name_pkey",                                       +
                   "Relation Name": "char_name",                                         +
                   "Alias": "chn",                                                       +
                   "Startup Cost": 0.01,                                                 +
                   "Total Cost": 0.12,                                                   +
                   "Plan Rows": 1,                                                       +
                   "Plan Width": 20,                                                     +
                   "Actual Startup Time": 0.000,                                         +
                   "Actual Total Time": 0.000,                                           +
                   "Actual Rows": 0,                                                     +
                   "Actual Loops": 0,                                                    +
                   "Index Cond": "(id = ci.person_role_id)",                             +
                   "Rows Removed by Index Recheck": 0,                                   +
                   "Shared Hit Blocks": 0,                                               +
                   "Shared Read Blocks": 0,                                              +
                   "Shared Dirtied Blocks": 0,                                           +
                   "Shared Written Blocks": 0,                                           +
                   "Local Hit Blocks": 0,                                                +
                   "Local Read Blocks": 0,                                               +
                   "Local Dirtied Blocks": 0,                                            +
                   "Local Written Blocks": 0,                                            +
                   "Temp Read Blocks": 0,                                                +
                   "Temp Written Blocks": 0                                              +
                 }                                                                       +
               ]                                                                         +
             },                                                                          +
             {                                                                           +
               "Node Type": "Materialize",                                               +
               "Parent Relationship": "Inner",                                           +
               "Parallel Aware": false,                                                  +
               "Startup Cost": 0.00,                                                     +
               "Total Cost": 0.03,                                                       +
               "Plan Rows": 4,                                                           +
               "Plan Width": 4,                                                          +
               "Actual Startup Time": 0.000,                                             +
               "Actual Total Time": 0.000,                                               +
               "Actual Rows": 0,                                                         +
               "Actual Loops": 0,                                                        +
               "Shared Hit Blocks": 0,                                                   +
               "Shared Read Blocks": 0,                                                  +
               "Shared Dirtied Blocks": 0,                                               +
               "Shared Written Blocks": 0,                                               +
               "Local Hit Blocks": 0,                                                    +
               "Local Read Blocks": 0,                                                   +
               "Local Dirtied Blocks": 0,                                                +
               "Local Written Blocks": 0,                                                +
               "Temp Read Blocks": 0,                                                    +
               "Temp Written Blocks": 0,                                                 +
               "Plans": [                                                                +
                 {                                                                       +
                   "Node Type": "Seq Scan",                                              +
                   "Parent Relationship": "Outer",                                       +
                   "Parallel Aware": false,                                              +
                   "Relation Name": "company_type",                                      +
                   "Alias": "ct",                                                        +
                   "Startup Cost": 0.00,                                                 +
                   "Total Cost": 0.03,                                                   +
                   "Plan Rows": 4,                                                       +
                   "Plan Width": 4,                                                      +
                   "Actual Startup Time": 0.000,                                         +
                   "Actual Total Time": 0.000,                                           +
                   "Actual Rows": 0,                                                     +
                   "Actual Loops": 0,                                                    +
                   "Shared Hit Blocks": 0,                                               +
                   "Shared Read Blocks": 0,                                              +
                   "Shared Dirtied Blocks": 0,                                           +
                   "Shared Written Blocks": 0,                                           +
                   "Local Hit Blocks": 0,                                                +
                   "Local Read Blocks": 0,                                               +
                   "Local Dirtied Blocks": 0,                                            +
                   "Local Written Blocks": 0,                                            +
                   "Temp Read Blocks": 0,                                                +
                   "Temp Written Blocks": 0                                              +
                 }                                                                       +
               ]                                                                         +
             }                                                                           +
           ]                                                                             +
         }                                                                               +
       ]                                                                                 +
     },                                                                                  +
     "Planning Time": 2908.986,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 233248.453                                                        +
   }                                                                                     +
 ]
(1 row)

