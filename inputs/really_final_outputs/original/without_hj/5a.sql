                                                       QUERY PLAN                                                        
-------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                      +
   {                                                                                                                    +
     "Plan": {                                                                                                          +
       "Node Type": "Aggregate",                                                                                        +
       "Strategy": "Plain",                                                                                             +
       "Partial Mode": "Simple",                                                                                        +
       "Parallel Aware": false,                                                                                         +
       "Startup Cost": 6237.36,                                                                                         +
       "Total Cost": 6237.36,                                                                                           +
       "Plan Rows": 1,                                                                                                  +
       "Plan Width": 32,                                                                                                +
       "Actual Startup Time": 931.473,                                                                                  +
       "Actual Total Time": 931.473,                                                                                    +
       "Actual Rows": 1,                                                                                                +
       "Actual Loops": 1,                                                                                               +
       "Shared Hit Blocks": 7,                                                                                          +
       "Shared Read Blocks": 18787,                                                                                     +
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
           "Startup Cost": 5815.64,                                                                                     +
           "Total Cost": 6237.35,                                                                                       +
           "Plan Rows": 89,                                                                                             +
           "Plan Width": 17,                                                                                            +
           "Actual Startup Time": 931.436,                                                                              +
           "Actual Total Time": 931.436,                                                                                +
           "Actual Rows": 0,                                                                                            +
           "Actual Loops": 1,                                                                                           +
           "Inner Unique": true,                                                                                        +
           "Shared Hit Blocks": 7,                                                                                      +
           "Shared Read Blocks": 18787,                                                                                 +
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
               "Startup Cost": 5815.64,                                                                                 +
               "Total Cost": 6236.94,                                                                                   +
               "Plan Rows": 89,                                                                                         +
               "Plan Width": 21,                                                                                        +
               "Actual Startup Time": 931.435,                                                                          +
               "Actual Total Time": 931.435,                                                                            +
               "Actual Rows": 0,                                                                                        +
               "Actual Loops": 1,                                                                                       +
               "Inner Unique": false,                                                                                   +
               "Shared Hit Blocks": 7,                                                                                  +
               "Shared Read Blocks": 18787,                                                                             +
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
                   "Node Type": "Merge Join",                                                                           +
                   "Parent Relationship": "Outer",                                                                      +
                   "Parallel Aware": false,                                                                             +
                   "Join Type": "Inner",                                                                                +
                   "Startup Cost": 5815.62,                                                                             +
                   "Total Cost": 5972.94,                                                                               +
                   "Plan Rows": 419,                                                                                    +
                   "Plan Width": 25,                                                                                    +
                   "Actual Startup Time": 931.435,                                                                      +
                   "Actual Total Time": 931.435,                                                                        +
                   "Actual Rows": 0,                                                                                    +
                   "Actual Loops": 1,                                                                                   +
                   "Inner Unique": true,                                                                                +
                   "Merge Cond": "(mc.movie_id = t.id)",                                                                +
                   "Shared Hit Blocks": 7,                                                                              +
                   "Shared Read Blocks": 18787,                                                                         +
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
                       "Node Type": "Sort",                                                                             +
                       "Parent Relationship": "Outer",                                                                  +
                       "Parallel Aware": false,                                                                         +
                       "Startup Cost": 1177.50,                                                                         +
                       "Total Cost": 1177.58,                                                                           +
                       "Plan Rows": 1047,                                                                               +
                       "Plan Width": 4,                                                                                 +
                       "Actual Startup Time": 931.434,                                                                  +
                       "Actual Total Time": 931.434,                                                                    +
                       "Actual Rows": 0,                                                                                +
                       "Actual Loops": 1,                                                                               +
                       "Sort Key": ["mc.movie_id"],                                                                     +
                       "Sort Method": "quicksort",                                                                      +
                       "Sort Space Used": 25,                                                                           +
                       "Sort Space Type": "Memory",                                                                     +
                       "Shared Hit Blocks": 7,                                                                          +
                       "Shared Read Blocks": 18787,                                                                     +
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
                           "Startup Cost": 0.00,                                                                        +
                           "Total Cost": 1175.87,                                                                       +
                           "Plan Rows": 1047,                                                                           +
                           "Plan Width": 4,                                                                             +
                           "Actual Startup Time": 921.786,                                                              +
                           "Actual Total Time": 921.786,                                                                +
                           "Actual Rows": 0,                                                                            +
                           "Actual Loops": 1,                                                                           +
                           "Inner Unique": true,                                                                        +
                           "Join Filter": "(ct.id = mc.company_type_id)",                                               +
                           "Rows Removed by Join Filter": 24025,                                                        +
                           "Shared Hit Blocks": 3,                                                                      +
                           "Shared Read Blocks": 18787,                                                                 +
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
                               "Node Type": "Seq Scan",                                                                 +
                               "Parent Relationship": "Outer",                                                          +
                               "Parallel Aware": false,                                                                 +
                               "Relation Name": "movie_companies",                                                      +
                               "Alias": "mc",                                                                           +
                               "Startup Cost": 0.00,                                                                    +
                               "Total Cost": 1174.90,                                                                   +
                               "Plan Rows": 4187,                                                                       +
                               "Plan Width": 8,                                                                         +
                               "Actual Startup Time": 40.479,                                                           +
                               "Actual Total Time": 911.487,                                                            +
                               "Actual Rows": 24025,                                                                    +
                               "Actual Loops": 1,                                                                       +
                               "Filter": "((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))",         +
                               "Rows Removed by Filter": 2585104,                                                       +
                               "Shared Hit Blocks": 2,                                                                  +
                               "Shared Read Blocks": 18787,                                                             +
                               "Shared Dirtied Blocks": 0,                                                              +
                               "Shared Written Blocks": 0,                                                              +
                               "Local Hit Blocks": 0,                                                                   +
                               "Local Read Blocks": 0,                                                                  +
                               "Local Dirtied Blocks": 0,                                                               +
                               "Local Written Blocks": 0,                                                               +
                               "Temp Read Blocks": 0,                                                                   +
                               "Temp Written Blocks": 0                                                                 +
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
                               "Actual Loops": 24025,                                                                   +
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
                                   "Relation Name": "company_type",                                                     +
                                   "Alias": "ct",                                                                       +
                                   "Startup Cost": 0.00,                                                                +
                                   "Total Cost": 0.03,                                                                  +
                                   "Plan Rows": 1,                                                                      +
                                   "Plan Width": 4,                                                                     +
                                   "Actual Startup Time": 0.012,                                                        +
                                   "Actual Total Time": 0.014,                                                          +
                                   "Actual Rows": 1,                                                                    +
                                   "Actual Loops": 1,                                                                   +
                                   "Filter": "((kind)::text = 'production companies'::text)",                           +
                                   "Rows Removed by Filter": 3,                                                         +
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
                         }                                                                                              +
                       ]                                                                                                +
                     },                                                                                                 +
                     {                                                                                                  +
                       "Node Type": "Sort",                                                                             +
                       "Parent Relationship": "Inner",                                                                  +
                       "Parallel Aware": false,                                                                         +
                       "Startup Cost": 4638.12,                                                                         +
                       "Total Cost": 4716.76,                                                                           +
                       "Plan Rows": 1012920,                                                                            +
                       "Plan Width": 21,                                                                                +
                       "Actual Startup Time": 0.000,                                                                    +
                       "Actual Total Time": 0.000,                                                                      +
                       "Actual Rows": 0,                                                                                +
                       "Actual Loops": 0,                                                                               +
                       "Sort Key": ["t.id"],                                                                            +
                       "Shared Hit Blocks": 0,                                                                          +
                       "Shared Read Blocks": 0,                                                                         +
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
                           "Node Type": "Seq Scan",                                                                     +
                           "Parent Relationship": "Outer",                                                              +
                           "Parallel Aware": false,                                                                     +
                           "Relation Name": "title",                                                                    +
                           "Alias": "t",                                                                                +
                           "Startup Cost": 0.00,                                                                        +
                           "Total Cost": 1500.26,                                                                       +
                           "Plan Rows": 1012920,                                                                        +
                           "Plan Width": 21,                                                                            +
                           "Actual Startup Time": 0.000,                                                                +
                           "Actual Total Time": 0.000,                                                                  +
                           "Actual Rows": 0,                                                                            +
                           "Actual Loops": 0,                                                                           +
                           "Filter": "(production_year > 2005)",                                                        +
                           "Rows Removed by Filter": 0,                                                                 +
                           "Shared Hit Blocks": 0,                                                                      +
                           "Shared Read Blocks": 0,                                                                     +
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
                 },                                                                                                     +
                 {                                                                                                      +
                   "Node Type": "Index Scan",                                                                           +
                   "Parent Relationship": "Inner",                                                                      +
                   "Parallel Aware": false,                                                                             +
                   "Scan Direction": "Forward",                                                                         +
                   "Index Name": "movie_id_movie_info",                                                                 +
                   "Relation Name": "movie_info",                                                                       +
                   "Alias": "mi",                                                                                       +
                   "Startup Cost": 0.01,                                                                                +
                   "Total Cost": 0.63,                                                                                  +
                   "Plan Rows": 1,                                                                                      +
                   "Plan Width": 8,                                                                                     +
                   "Actual Startup Time": 0.000,                                                                        +
                   "Actual Total Time": 0.000,                                                                          +
                   "Actual Rows": 0,                                                                                    +
                   "Actual Loops": 0,                                                                                   +
                   "Index Cond": "(movie_id = t.id)",                                                                   +
                   "Rows Removed by Index Recheck": 0,                                                                  +
                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",+
                   "Rows Removed by Filter": 0,                                                                         +
                   "Shared Hit Blocks": 0,                                                                              +
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
               "Node Type": "Index Scan",                                                                               +
               "Parent Relationship": "Inner",                                                                          +
               "Parallel Aware": false,                                                                                 +
               "Scan Direction": "Forward",                                                                             +
               "Index Name": "info_type_pkey",                                                                          +
               "Relation Name": "info_type",                                                                            +
               "Alias": "it",                                                                                           +
               "Startup Cost": 0.00,                                                                                    +
               "Total Cost": 0.00,                                                                                      +
               "Plan Rows": 1,                                                                                          +
               "Plan Width": 4,                                                                                         +
               "Actual Startup Time": 0.000,                                                                            +
               "Actual Total Time": 0.000,                                                                              +
               "Actual Rows": 0,                                                                                        +
               "Actual Loops": 0,                                                                                       +
               "Index Cond": "(id = mi.info_type_id)",                                                                  +
               "Rows Removed by Index Recheck": 0,                                                                      +
               "Shared Hit Blocks": 0,                                                                                  +
               "Shared Read Blocks": 0,                                                                                 +
               "Shared Dirtied Blocks": 0,                                                                              +
               "Shared Written Blocks": 0,                                                                              +
               "Local Hit Blocks": 0,                                                                                   +
               "Local Read Blocks": 0,                                                                                  +
               "Local Dirtied Blocks": 0,                                                                               +
               "Local Written Blocks": 0,                                                                               +
               "Temp Read Blocks": 0,                                                                                   +
               "Temp Written Blocks": 0                                                                                 +
             }                                                                                                          +
           ]                                                                                                            +
         }                                                                                                              +
       ]                                                                                                                +
     },                                                                                                                 +
     "Planning Time": 1986.200,                                                                                         +
     "Triggers": [                                                                                                      +
     ],                                                                                                                 +
     "Execution Time": 956.521                                                                                          +
   }                                                                                                                    +
 ]
(1 row)

