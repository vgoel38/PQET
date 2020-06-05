                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 20009.97,                                                                                                     +
       "Total Cost": 20009.97,                                                                                                       +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 32,                                                                                                             +
       "Actual Startup Time": 34916.734,                                                                                             +
       "Actual Total Time": 34916.734,                                                                                               +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 3533,                                                                                                    +
       "Shared Read Blocks": 61149,                                                                                                  +
       "Shared Dirtied Blocks": 0,                                                                                                   +
       "Shared Written Blocks": 0,                                                                                                   +
       "Local Hit Blocks": 0,                                                                                                        +
       "Local Read Blocks": 0,                                                                                                       +
       "Local Dirtied Blocks": 0,                                                                                                    +
       "Local Written Blocks": 0,                                                                                                    +
       "Temp Read Blocks": 0,                                                                                                        +
       "Temp Written Blocks": 0,                                                                                                     +
       "Plans": [                                                                                                                    +
         {                                                                                                                           +
           "Node Type": "Nested Loop",                                                                                               +
           "Parent Relationship": "Outer",                                                                                           +
           "Parallel Aware": false,                                                                                                  +
           "Join Type": "Inner",                                                                                                     +
           "Startup Cost": 8449.41,                                                                                                  +
           "Total Cost": 20007.72,                                                                                                   +
           "Plan Rows": 28943,                                                                                                       +
           "Plan Width": 17,                                                                                                         +
           "Actual Startup Time": 3279.845,                                                                                          +
           "Actual Total Time": 34913.792,                                                                                           +
           "Actual Rows": 669,                                                                                                       +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Shared Hit Blocks": 3533,                                                                                                +
           "Shared Read Blocks": 61149,                                                                                              +
           "Shared Dirtied Blocks": 0,                                                                                               +
           "Shared Written Blocks": 0,                                                                                               +
           "Local Hit Blocks": 0,                                                                                                    +
           "Local Read Blocks": 0,                                                                                                   +
           "Local Dirtied Blocks": 0,                                                                                                +
           "Local Written Blocks": 0,                                                                                                +
           "Temp Read Blocks": 0,                                                                                                    +
           "Temp Written Blocks": 0,                                                                                                 +
           "Plans": [                                                                                                                +
             {                                                                                                                       +
               "Node Type": "Nested Loop",                                                                                           +
               "Parent Relationship": "Outer",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Join Type": "Inner",                                                                                                 +
               "Startup Cost": 8449.41,                                                                                              +
               "Total Cost": 19873.93,                                                                                               +
               "Plan Rows": 28943,                                                                                                   +
               "Plan Width": 21,                                                                                                     +
               "Actual Startup Time": 3279.818,                                                                                      +
               "Actual Total Time": 34901.712,                                                                                       +
               "Actual Rows": 669,                                                                                                   +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": false,                                                                                                +
               "Shared Hit Blocks": 2195,                                                                                            +
               "Shared Read Blocks": 61149,                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                           +
               "Shared Written Blocks": 0,                                                                                           +
               "Local Hit Blocks": 0,                                                                                                +
               "Local Read Blocks": 0,                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                            +
               "Local Written Blocks": 0,                                                                                            +
               "Temp Read Blocks": 0,                                                                                                +
               "Temp Written Blocks": 0,                                                                                             +
               "Plans": [                                                                                                            +
                 {                                                                                                                   +
                   "Node Type": "Merge Join",                                                                                        +
                   "Parent Relationship": "Outer",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Join Type": "Inner",                                                                                             +
                   "Startup Cost": 8449.40,                                                                                          +
                   "Total Cost": 8729.48,                                                                                            +
                   "Plan Rows": 29863,                                                                                               +
                   "Plan Width": 25,                                                                                                 +
                   "Actual Startup Time": 3249.426,                                                                                  +
                   "Actual Total Time": 4261.869,                                                                                    +
                   "Actual Rows": 767,                                                                                               +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": true,                                                                                             +
                   "Merge Cond": "(mc.movie_id = t.id)",                                                                             +
                   "Shared Hit Blocks": 8,                                                                                           +
                   "Shared Read Blocks": 54784,                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                       +
                   "Shared Written Blocks": 0,                                                                                       +
                   "Local Hit Blocks": 0,                                                                                            +
                   "Local Read Blocks": 0,                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                        +
                   "Local Written Blocks": 0,                                                                                        +
                   "Temp Read Blocks": 0,                                                                                            +
                   "Temp Written Blocks": 0,                                                                                         +
                   "Plans": [                                                                                                        +
                     {                                                                                                               +
                       "Node Type": "Sort",                                                                                          +
                       "Parent Relationship": "Outer",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Startup Cost": 1316.89,                                                                                      +
                       "Total Cost": 1320.25,                                                                                        +
                       "Plan Rows": 43168,                                                                                           +
                       "Plan Width": 4,                                                                                              +
                       "Actual Startup Time": 949.919,                                                                               +
                       "Actual Total Time": 950.662,                                                                                 +
                       "Actual Rows": 798,                                                                                           +
                       "Actual Loops": 1,                                                                                            +
                       "Sort Key": ["mc.movie_id"],                                                                                  +
                       "Sort Method": "quicksort",                                                                                   +
                       "Sort Space Used": 62,                                                                                        +
                       "Sort Space Type": "Memory",                                                                                  +
                       "Shared Hit Blocks": 7,                                                                                       +
                       "Shared Read Blocks": 18787,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                   +
                       "Shared Written Blocks": 0,                                                                                   +
                       "Local Hit Blocks": 0,                                                                                        +
                       "Local Read Blocks": 0,                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                    +
                       "Local Written Blocks": 0,                                                                                    +
                       "Temp Read Blocks": 0,                                                                                        +
                       "Temp Written Blocks": 0,                                                                                     +
                       "Plans": [                                                                                                    +
                         {                                                                                                           +
                           "Node Type": "Nested Loop",                                                                               +
                           "Parent Relationship": "Outer",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Join Type": "Inner",                                                                                     +
                           "Startup Cost": 0.00,                                                                                     +
                           "Total Cost": 1213.68,                                                                                    +
                           "Plan Rows": 43168,                                                                                       +
                           "Plan Width": 4,                                                                                          +
                           "Actual Startup Time": 599.295,                                                                           +
                           "Actual Total Time": 939.870,                                                                             +
                           "Actual Rows": 798,                                                                                       +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": true,                                                                                     +
                           "Join Filter": "(ct.id = mc.company_type_id)",                                                            +
                           "Rows Removed by Join Filter": 294830,                                                                    +
                           "Shared Hit Blocks": 3,                                                                                   +
                           "Shared Read Blocks": 18787,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                               +
                           "Shared Written Blocks": 0,                                                                               +
                           "Local Hit Blocks": 0,                                                                                    +
                           "Local Read Blocks": 0,                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                +
                           "Local Written Blocks": 0,                                                                                +
                           "Temp Read Blocks": 0,                                                                                    +
                           "Temp Written Blocks": 0,                                                                                 +
                           "Plans": [                                                                                                +
                             {                                                                                                       +
                               "Node Type": "Seq Scan",                                                                              +
                               "Parent Relationship": "Outer",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Relation Name": "movie_companies",                                                                   +
                               "Alias": "mc",                                                                                        +
                               "Startup Cost": 0.00,                                                                                 +
                               "Total Cost": 1174.90,                                                                                +
                               "Plan Rows": 172674,                                                                                  +
                               "Plan Width": 8,                                                                                      +
                               "Actual Startup Time": 0.027,                                                                         +
                               "Actual Total Time": 837.844,                                                                         +
                               "Actual Rows": 295628,                                                                                +
                               "Actual Loops": 1,                                                                                    +
                               "Filter": "((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))",                                +
                               "Rows Removed by Filter": 2313501,                                                                    +
                               "Shared Hit Blocks": 2,                                                                               +
                               "Shared Read Blocks": 18787,                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0                                                                              +
                             },                                                                                                      +
                             {                                                                                                       +
                               "Node Type": "Materialize",                                                                           +
                               "Parent Relationship": "Inner",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Startup Cost": 0.00,                                                                                 +
                               "Total Cost": 0.03,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 4,                                                                                      +
                               "Actual Startup Time": 0.000,                                                                         +
                               "Actual Total Time": 0.000,                                                                           +
                               "Actual Rows": 1,                                                                                     +
                               "Actual Loops": 295628,                                                                               +
                               "Shared Hit Blocks": 1,                                                                               +
                               "Shared Read Blocks": 0,                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0,                                                                             +
                               "Plans": [                                                                                            +
                                 {                                                                                                   +
                                   "Node Type": "Seq Scan",                                                                          +
                                   "Parent Relationship": "Outer",                                                                   +
                                   "Parallel Aware": false,                                                                          +
                                   "Relation Name": "company_type",                                                                  +
                                   "Alias": "ct",                                                                                    +
                                   "Startup Cost": 0.00,                                                                             +
                                   "Total Cost": 0.03,                                                                               +
                                   "Plan Rows": 1,                                                                                   +
                                   "Plan Width": 4,                                                                                  +
                                   "Actual Startup Time": 0.013,                                                                     +
                                   "Actual Total Time": 0.015,                                                                       +
                                   "Actual Rows": 1,                                                                                 +
                                   "Actual Loops": 1,                                                                                +
                                   "Filter": "((kind)::text = 'production companies'::text)",                                        +
                                   "Rows Removed by Filter": 3,                                                                      +
                                   "Shared Hit Blocks": 1,                                                                           +
                                   "Shared Read Blocks": 0,                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                       +
                                   "Shared Written Blocks": 0,                                                                       +
                                   "Local Hit Blocks": 0,                                                                            +
                                   "Local Read Blocks": 0,                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                        +
                                   "Local Written Blocks": 0,                                                                        +
                                   "Temp Read Blocks": 0,                                                                            +
                                   "Temp Written Blocks": 0                                                                          +
                                 }                                                                                                   +
                               ]                                                                                                     +
                             }                                                                                                       +
                           ]                                                                                                         +
                         }                                                                                                           +
                       ]                                                                                                             +
                     },                                                                                                              +
                     {                                                                                                               +
                       "Node Type": "Sort",                                                                                          +
                       "Parent Relationship": "Inner",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Startup Cost": 7132.50,                                                                                      +
                       "Total Cost": 7268.30,                                                                                        +
                       "Plan Rows": 1749033,                                                                                         +
                       "Plan Width": 21,                                                                                             +
                       "Actual Startup Time": 2284.558,                                                                              +
                       "Actual Total Time": 2723.416,                                                                                +
                       "Actual Rows": 1744819,                                                                                       +
                       "Actual Loops": 1,                                                                                            +
                       "Sort Key": ["t.id"],                                                                                         +
                       "Sort Method": "quicksort",                                                                                   +
                       "Sort Space Used": 171002,                                                                                    +
                       "Sort Space Type": "Memory",                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                       +
                       "Shared Read Blocks": 35997,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                   +
                       "Shared Written Blocks": 0,                                                                                   +
                       "Local Hit Blocks": 0,                                                                                        +
                       "Local Read Blocks": 0,                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                    +
                       "Local Written Blocks": 0,                                                                                    +
                       "Temp Read Blocks": 0,                                                                                        +
                       "Temp Written Blocks": 0,                                                                                     +
                       "Plans": [                                                                                                    +
                         {                                                                                                           +
                           "Node Type": "Seq Scan",                                                                                  +
                           "Parent Relationship": "Outer",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Relation Name": "title",                                                                                 +
                           "Alias": "t",                                                                                             +
                           "Startup Cost": 0.00,                                                                                     +
                           "Total Cost": 1500.26,                                                                                    +
                           "Plan Rows": 1749033,                                                                                     +
                           "Plan Width": 21,                                                                                         +
                           "Actual Startup Time": 5.545,                                                                             +
                           "Actual Total Time": 1344.950,                                                                            +
                           "Actual Rows": 1749032,                                                                                   +
                           "Actual Loops": 1,                                                                                        +
                           "Filter": "(production_year > 1990)",                                                                     +
                           "Rows Removed by Filter": 779280,                                                                         +
                           "Shared Hit Blocks": 1,                                                                                   +
                           "Shared Read Blocks": 35997,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                               +
                           "Shared Written Blocks": 0,                                                                               +
                           "Local Hit Blocks": 0,                                                                                    +
                           "Local Read Blocks": 0,                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                +
                           "Local Written Blocks": 0,                                                                                +
                           "Temp Read Blocks": 0,                                                                                    +
                           "Temp Written Blocks": 0                                                                                  +
                         }                                                                                                           +
                       ]                                                                                                             +
                     }                                                                                                               +
                   ]                                                                                                                 +
                 },                                                                                                                  +
                 {                                                                                                                   +
                   "Node Type": "Index Scan",                                                                                        +
                   "Parent Relationship": "Inner",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Scan Direction": "Forward",                                                                                      +
                   "Index Name": "movie_id_movie_info",                                                                              +
                   "Relation Name": "movie_info",                                                                                    +
                   "Alias": "mi",                                                                                                    +
                   "Startup Cost": 0.01,                                                                                             +
                   "Total Cost": 0.37,                                                                                               +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 8,                                                                                                  +
                   "Actual Startup Time": 36.334,                                                                                    +
                   "Actual Total Time": 39.943,                                                                                      +
                   "Actual Rows": 1,                                                                                                 +
                   "Actual Loops": 767,                                                                                              +
                   "Index Cond": "(movie_id = t.id)",                                                                                +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))",+
                   "Rows Removed by Filter": 10,                                                                                     +
                   "Shared Hit Blocks": 2187,                                                                                        +
                   "Shared Read Blocks": 6365,                                                                                       +
                   "Shared Dirtied Blocks": 0,                                                                                       +
                   "Shared Written Blocks": 0,                                                                                       +
                   "Local Hit Blocks": 0,                                                                                            +
                   "Local Read Blocks": 0,                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                        +
                   "Local Written Blocks": 0,                                                                                        +
                   "Temp Read Blocks": 0,                                                                                            +
                   "Temp Written Blocks": 0                                                                                          +
                 }                                                                                                                   +
               ]                                                                                                                     +
             },                                                                                                                      +
             {                                                                                                                       +
               "Node Type": "Index Scan",                                                                                            +
               "Parent Relationship": "Inner",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Scan Direction": "Forward",                                                                                          +
               "Index Name": "info_type_pkey",                                                                                       +
               "Relation Name": "info_type",                                                                                         +
               "Alias": "it",                                                                                                        +
               "Startup Cost": 0.00,                                                                                                 +
               "Total Cost": 0.00,                                                                                                   +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 4,                                                                                                      +
               "Actual Startup Time": 0.011,                                                                                         +
               "Actual Total Time": 0.011,                                                                                           +
               "Actual Rows": 1,                                                                                                     +
               "Actual Loops": 669,                                                                                                  +
               "Index Cond": "(id = mi.info_type_id)",                                                                               +
               "Rows Removed by Index Recheck": 0,                                                                                   +
               "Shared Hit Blocks": 1338,                                                                                            +
               "Shared Read Blocks": 0,                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                           +
               "Shared Written Blocks": 0,                                                                                           +
               "Local Hit Blocks": 0,                                                                                                +
               "Local Read Blocks": 0,                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                            +
               "Local Written Blocks": 0,                                                                                            +
               "Temp Read Blocks": 0,                                                                                                +
               "Temp Written Blocks": 0                                                                                              +
             }                                                                                                                       +
           ]                                                                                                                         +
         }                                                                                                                           +
       ]                                                                                                                             +
     },                                                                                                                              +
     "Planning Time": 2070.346,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 34955.119                                                                                                     +
   }                                                                                                                                 +
 ]
(1 row)

