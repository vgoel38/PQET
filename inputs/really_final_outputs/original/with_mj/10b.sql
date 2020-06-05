                                                QUERY PLAN                                                
----------------------------------------------------------------------------------------------------------
 [                                                                                                       +
   {                                                                                                     +
     "Plan": {                                                                                           +
       "Node Type": "Aggregate",                                                                         +
       "Strategy": "Plain",                                                                              +
       "Partial Mode": "Simple",                                                                         +
       "Parallel Aware": false,                                                                          +
       "Startup Cost": 43053.08,                                                                         +
       "Total Cost": 43053.08,                                                                           +
       "Plan Rows": 1,                                                                                   +
       "Plan Width": 64,                                                                                 +
       "Actual Startup Time": 16807.376,                                                                 +
       "Actual Total Time": 16807.376,                                                                   +
       "Actual Rows": 1,                                                                                 +
       "Actual Loops": 1,                                                                                +
       "Shared Hit Blocks": 15,                                                                          +
       "Shared Read Blocks": 310425,                                                                     +
       "Shared Dirtied Blocks": 0,                                                                       +
       "Shared Written Blocks": 0,                                                                       +
       "Local Hit Blocks": 0,                                                                            +
       "Local Read Blocks": 0,                                                                           +
       "Local Dirtied Blocks": 0,                                                                        +
       "Local Written Blocks": 0,                                                                        +
       "Temp Read Blocks": 0,                                                                            +
       "Temp Written Blocks": 0,                                                                         +
       "Plans": [                                                                                        +
         {                                                                                               +
           "Node Type": "Merge Join",                                                                    +
           "Parent Relationship": "Outer",                                                               +
           "Parallel Aware": false,                                                                      +
           "Join Type": "Inner",                                                                         +
           "Startup Cost": 42565.41,                                                                     +
           "Total Cost": 43053.06,                                                                       +
           "Plan Rows": 100,                                                                             +
           "Plan Width": 33,                                                                             +
           "Actual Startup Time": 16807.335,                                                             +
           "Actual Total Time": 16807.335,                                                               +
           "Actual Rows": 0,                                                                             +
           "Actual Loops": 1,                                                                            +
           "Inner Unique": true,                                                                         +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                 +
           "Shared Hit Blocks": 15,                                                                      +
           "Shared Read Blocks": 310425,                                                                 +
           "Shared Dirtied Blocks": 0,                                                                   +
           "Shared Written Blocks": 0,                                                                   +
           "Local Hit Blocks": 0,                                                                        +
           "Local Read Blocks": 0,                                                                       +
           "Local Dirtied Blocks": 0,                                                                    +
           "Local Written Blocks": 0,                                                                    +
           "Temp Read Blocks": 0,                                                                        +
           "Temp Written Blocks": 0,                                                                     +
           "Plans": [                                                                                    +
             {                                                                                           +
               "Node Type": "Sort",                                                                      +
               "Parent Relationship": "Outer",                                                           +
               "Parallel Aware": false,                                                                  +
               "Startup Cost": 30680.78,                                                                 +
               "Total Cost": 30680.80,                                                                   +
               "Plan Rows": 205,                                                                         +
               "Plan Width": 21,                                                                         +
               "Actual Startup Time": 16807.334,                                                         +
               "Actual Total Time": 16807.334,                                                           +
               "Actual Rows": 0,                                                                         +
               "Actual Loops": 1,                                                                        +
               "Sort Key": ["ci.person_role_id"],                                                        +
               "Sort Method": "quicksort",                                                               +
               "Sort Space Used": 25,                                                                    +
               "Sort Space Type": "Memory",                                                              +
               "Shared Hit Blocks": 15,                                                                  +
               "Shared Read Blocks": 310425,                                                             +
               "Shared Dirtied Blocks": 0,                                                               +
               "Shared Written Blocks": 0,                                                               +
               "Local Hit Blocks": 0,                                                                    +
               "Local Read Blocks": 0,                                                                   +
               "Local Dirtied Blocks": 0,                                                                +
               "Local Written Blocks": 0,                                                                +
               "Temp Read Blocks": 0,                                                                    +
               "Temp Written Blocks": 0,                                                                 +
               "Plans": [                                                                                +
                 {                                                                                       +
                   "Node Type": "Merge Join",                                                            +
                   "Parent Relationship": "Outer",                                                       +
                   "Parallel Aware": false,                                                              +
                   "Join Type": "Inner",                                                                 +
                   "Startup Cost": 30680.49,                                                             +
                   "Total Cost": 30680.53,                                                               +
                   "Plan Rows": 205,                                                                     +
                   "Plan Width": 21,                                                                     +
                   "Actual Startup Time": 16807.277,                                                     +
                   "Actual Total Time": 16807.277,                                                       +
                   "Actual Rows": 0,                                                                     +
                   "Actual Loops": 1,                                                                    +
                   "Inner Unique": true,                                                                 +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                         +
                   "Shared Hit Blocks": 11,                                                              +
                   "Shared Read Blocks": 310425,                                                         +
                   "Shared Dirtied Blocks": 0,                                                           +
                   "Shared Written Blocks": 0,                                                           +
                   "Local Hit Blocks": 0,                                                                +
                   "Local Read Blocks": 0,                                                               +
                   "Local Dirtied Blocks": 0,                                                            +
                   "Local Written Blocks": 0,                                                            +
                   "Temp Read Blocks": 0,                                                                +
                   "Temp Written Blocks": 0,                                                             +
                   "Plans": [                                                                            +
                     {                                                                                   +
                       "Node Type": "Sort",                                                              +
                       "Parent Relationship": "Outer",                                                   +
                       "Parallel Aware": false,                                                          +
                       "Startup Cost": 30680.46,                                                         +
                       "Total Cost": 30680.47,                                                           +
                       "Plan Rows": 205,                                                                 +
                       "Plan Width": 25,                                                                 +
                       "Actual Startup Time": 16807.277,                                                 +
                       "Actual Total Time": 16807.277,                                                   +
                       "Actual Rows": 0,                                                                 +
                       "Actual Loops": 1,                                                                +
                       "Sort Key": ["mc.company_type_id"],                                               +
                       "Sort Method": "quicksort",                                                       +
                       "Sort Space Used": 25,                                                            +
                       "Sort Space Type": "Memory",                                                      +
                       "Shared Hit Blocks": 11,                                                          +
                       "Shared Read Blocks": 310425,                                                     +
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
                           "Node Type": "Merge Join",                                                    +
                           "Parent Relationship": "Outer",                                               +
                           "Parallel Aware": false,                                                      +
                           "Join Type": "Inner",                                                         +
                           "Startup Cost": 30679.81,                                                     +
                           "Total Cost": 30680.21,                                                       +
                           "Plan Rows": 205,                                                             +
                           "Plan Width": 25,                                                             +
                           "Actual Startup Time": 16807.266,                                             +
                           "Actual Total Time": 16807.266,                                               +
                           "Actual Rows": 0,                                                             +
                           "Actual Loops": 1,                                                            +
                           "Inner Unique": true,                                                         +
                           "Merge Cond": "(ci.role_id = rt.id)",                                         +
                           "Shared Hit Blocks": 11,                                                      +
                           "Shared Read Blocks": 310425,                                                 +
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
                               "Node Type": "Sort",                                                      +
                               "Parent Relationship": "Outer",                                           +
                               "Parallel Aware": false,                                                  +
                               "Startup Cost": 30679.78,                                                 +
                               "Total Cost": 30679.97,                                                   +
                               "Plan Rows": 2464,                                                        +
                               "Plan Width": 29,                                                         +
                               "Actual Startup Time": 16807.235,                                         +
                               "Actual Total Time": 16807.235,                                           +
                               "Actual Rows": 1,                                                         +
                               "Actual Loops": 1,                                                        +
                               "Sort Key": ["ci.role_id"],                                               +
                               "Sort Method": "quicksort",                                               +
                               "Sort Space Used": 289,                                                   +
                               "Sort Space Type": "Memory",                                              +
                               "Shared Hit Blocks": 10,                                                  +
                               "Shared Read Blocks": 310425,                                             +
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
                                   "Node Type": "Merge Join",                                            +
                                   "Parent Relationship": "Outer",                                       +
                                   "Parallel Aware": false,                                              +
                                   "Join Type": "Inner",                                                 +
                                   "Startup Cost": 30389.97,                                             +
                                   "Total Cost": 30675.47,                                               +
                                   "Plan Rows": 2464,                                                    +
                                   "Plan Width": 29,                                                     +
                                   "Actual Startup Time": 16404.498,                                     +
                                   "Actual Total Time": 16806.519,                                       +
                                   "Actual Rows": 2614,                                                  +
                                   "Actual Loops": 1,                                                    +
                                   "Inner Unique": false,                                                +
                                   "Merge Cond": "(t.id = ci.movie_id)",                                 +
                                   "Shared Hit Blocks": 10,                                              +
                                   "Shared Read Blocks": 310425,                                         +
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
                                       "Node Type": "Merge Join",                                        +
                                       "Parent Relationship": "Outer",                                   +
                                       "Parallel Aware": false,                                          +
                                       "Join Type": "Inner",                                             +
                                       "Startup Cost": 12605.25,                                         +
                                       "Total Cost": 12668.51,                                           +
                                       "Plan Rows": 2341,                                                +
                                       "Plan Width": 29,                                                 +
                                       "Actual Startup Time": 4141.882,                                  +
                                       "Actual Total Time": 4247.925,                                    +
                                       "Actual Rows": 1259,                                              +
                                       "Actual Loops": 1,                                                +
                                       "Inner Unique": true,                                             +
                                       "Merge Cond": "(mc.movie_id = t.id)",                             +
                                       "Shared Hit Blocks": 6,                                           +
                                       "Shared Read Blocks": 57775,                                      +
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
                                           "Node Type": "Sort",                                          +
                                           "Parent Relationship": "Outer",                               +
                                           "Parallel Aware": false,                                      +
                                           "Startup Cost": 9975.04,                                      +
                                           "Total Cost": 9976.21,                                        +
                                           "Plan Rows": 15111,                                           +
                                           "Plan Width": 8,                                              +
                                           "Actual Startup Time": 2207.620,                              +
                                           "Actual Total Time": 2208.845,                                +
                                           "Actual Rows": 8790,                                          +
                                           "Actual Loops": 1,                                            +
                                           "Sort Key": ["mc.movie_id"],                                  +
                                           "Sort Method": "quicksort",                                   +
                                           "Sort Space Used": 797,                                       +
                                           "Sort Space Type": "Memory",                                  +
                                           "Shared Hit Blocks": 5,                                       +
                                           "Shared Read Blocks": 21778,                                  +
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
                                               "Actual Startup Time": 1662.424,                          +
                                               "Actual Total Time": 2204.452,                            +
                                               "Actual Rows": 8790,                                      +
                                               "Actual Loops": 1,                                        +
                                               "Inner Unique": false,                                    +
                                               "Merge Cond": "(cn.id = mc.company_id)",                  +
                                               "Shared Hit Blocks": 5,                                   +
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
                                                   "Actual Startup Time": 156.600,                       +
                                                   "Actual Total Time": 156.807,                         +
                                                   "Actual Rows": 1361,                                  +
                                                   "Actual Loops": 1,                                    +
                                                   "Sort Key": ["cn.id"],                                +
                                                   "Sort Method": "quicksort",                           +
                                                   "Sort Space Used": 112,                               +
                                                   "Sort Space Type": "Memory",                          +
                                                   "Shared Hit Blocks": 2,                               +
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
                                                       "Actual Startup Time": 0.149,                     +
                                                       "Actual Total Time": 155.521,                     +
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
                                                   "Actual Startup Time": 1426.321,                      +
                                                   "Actual Total Time": 1743.329,                        +
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
                                                       "Actual Startup Time": 0.008,                     +
                                                       "Actual Total Time": 533.613,                     +
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
                                             }                                                           +
                                           ]                                                             +
                                         },                                                              +
                                         {                                                               +
                                           "Node Type": "Sort",                                          +
                                           "Parent Relationship": "Inner",                               +
                                           "Parallel Aware": false,                                      +
                                           "Startup Cost": 2630.21,                                      +
                                           "Total Cost": 2660.62,                                        +
                                           "Plan Rows": 391667,                                          +
                                           "Plan Width": 21,                                             +
                                           "Actual Startup Time": 1933.910,                              +
                                           "Actual Total Time": 1982.970,                                +
                                           "Actual Rows": 391485,                                        +
                                           "Actual Loops": 1,                                            +
                                           "Sort Key": ["t.id"],                                         +
                                           "Sort Method": "quicksort",                                   +
                                           "Sort Space Used": 39792,                                     +
                                           "Sort Space Type": "Memory",                                  +
                                           "Shared Hit Blocks": 1,                                       +
                                           "Shared Read Blocks": 35997,                                  +
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
                                               "Node Type": "Seq Scan",                                  +
                                               "Parent Relationship": "Outer",                           +
                                               "Parallel Aware": false,                                  +
                                               "Relation Name": "title",                                 +
                                               "Alias": "t",                                             +
                                               "Startup Cost": 0.00,                                     +
                                               "Total Cost": 1500.26,                                    +
                                               "Plan Rows": 391667,                                      +
                                               "Plan Width": 21,                                         +
                                               "Actual Startup Time": 72.077,                            +
                                               "Actual Total Time": 1664.794,                            +
                                               "Actual Rows": 391666,                                    +
                                               "Actual Loops": 1,                                        +
                                               "Filter": "(production_year > 2010)",                     +
                                               "Rows Removed by Filter": 2136646,                        +
                                               "Shared Hit Blocks": 1,                                   +
                                               "Shared Read Blocks": 35997,                              +
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
                                         }                                                               +
                                       ]                                                                 +
                                     },                                                                  +
                                     {                                                                   +
                                       "Node Type": "Sort",                                              +
                                       "Parent Relationship": "Inner",                                   +
                                       "Parallel Aware": false,                                          +
                                       "Startup Cost": 17784.72,                                         +
                                       "Total Cost": 17895.73,                                           +
                                       "Plan Rows": 1429807,                                             +
                                       "Plan Width": 12,                                                 +
                                       "Actual Startup Time": 12256.487,                                 +
                                       "Actual Total Time": 12397.788,                                   +
                                       "Actual Rows": 1436082,                                           +
                                       "Actual Loops": 1,                                                +
                                       "Sort Key": ["ci.movie_id"],                                      +
                                       "Sort Method": "quicksort",                                       +
                                       "Sort Space Used": 116439,                                        +
                                       "Sort Space Type": "Memory",                                      +
                                       "Shared Hit Blocks": 4,                                           +
                                       "Shared Read Blocks": 252650,                                     +
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
                                           "Relation Name": "cast_info",                                 +
                                           "Alias": "ci",                                                +
                                           "Startup Cost": 0.00,                                         +
                                           "Total Cost": 13245.00,                                       +
                                           "Plan Rows": 1429807,                                         +
                                           "Plan Width": 12,                                             +
                                           "Actual Startup Time": 848.062,                               +
                                           "Actual Total Time": 11622.353,                               +
                                           "Actual Rows": 1435439,                                       +
                                           "Actual Loops": 1,                                            +
                                           "Filter": "(note ~~ '%(producer)%'::text)",                   +
                                           "Rows Removed by Filter": 34808905,                           +
                                           "Shared Hit Blocks": 4,                                       +
                                           "Shared Read Blocks": 252650,                                 +
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
                                 }                                                                       +
                               ]                                                                         +
                             },                                                                          +
                             {                                                                           +
                               "Node Type": "Sort",                                                      +
                               "Parent Relationship": "Inner",                                           +
                               "Parallel Aware": false,                                                  +
                               "Startup Cost": 0.03,                                                     +
                               "Total Cost": 0.03,                                                       +
                               "Plan Rows": 1,                                                           +
                               "Plan Width": 4,                                                          +
                               "Actual Startup Time": 0.027,                                             +
                               "Actual Total Time": 0.027,                                               +
                               "Actual Rows": 1,                                                         +
                               "Actual Loops": 1,                                                        +
                               "Sort Key": ["rt.id"],                                                    +
                               "Sort Method": "quicksort",                                               +
                               "Sort Space Used": 25,                                                    +
                               "Sort Space Type": "Memory",                                              +
                               "Shared Hit Blocks": 1,                                                   +
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
                                   "Relation Name": "role_type",                                         +
                                   "Alias": "rt",                                                        +
                                   "Startup Cost": 0.00,                                                 +
                                   "Total Cost": 0.03,                                                   +
                                   "Plan Rows": 1,                                                       +
                                   "Plan Width": 4,                                                      +
                                   "Actual Startup Time": 0.017,                                         +
                                   "Actual Total Time": 0.019,                                           +
                                   "Actual Rows": 1,                                                     +
                                   "Actual Loops": 1,                                                    +
                                   "Filter": "((role)::text = 'actor'::text)",                           +
                                   "Rows Removed by Filter": 11,                                         +
                                   "Shared Hit Blocks": 1,                                               +
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
                     {                                                                                   +
                       "Node Type": "Sort",                                                              +
                       "Parent Relationship": "Inner",                                                   +
                       "Parallel Aware": false,                                                          +
                       "Startup Cost": 0.03,                                                             +
                       "Total Cost": 0.03,                                                               +
                       "Plan Rows": 4,                                                                   +
                       "Plan Width": 4,                                                                  +
                       "Actual Startup Time": 0.000,                                                     +
                       "Actual Total Time": 0.000,                                                       +
                       "Actual Rows": 0,                                                                 +
                       "Actual Loops": 0,                                                                +
                       "Sort Key": ["ct.id"],                                                            +
                       "Shared Hit Blocks": 0,                                                           +
                       "Shared Read Blocks": 0,                                                          +
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
                           "Node Type": "Seq Scan",                                                      +
                           "Parent Relationship": "Outer",                                               +
                           "Parallel Aware": false,                                                      +
                           "Relation Name": "company_type",                                              +
                           "Alias": "ct",                                                                +
                           "Startup Cost": 0.00,                                                         +
                           "Total Cost": 0.03,                                                           +
                           "Plan Rows": 4,                                                               +
                           "Plan Width": 4,                                                              +
                           "Actual Startup Time": 0.000,                                                 +
                           "Actual Total Time": 0.000,                                                   +
                           "Actual Rows": 0,                                                             +
                           "Actual Loops": 0,                                                            +
                           "Shared Hit Blocks": 0,                                                       +
                           "Shared Read Blocks": 0,                                                      +
                           "Shared Dirtied Blocks": 0,                                                   +
                           "Shared Written Blocks": 0,                                                   +
                           "Local Hit Blocks": 0,                                                        +
                           "Local Read Blocks": 0,                                                       +
                           "Local Dirtied Blocks": 0,                                                    +
                           "Local Written Blocks": 0,                                                    +
                           "Temp Read Blocks": 0,                                                        +
                           "Temp Written Blocks": 0                                                      +
                         }                                                                               +
                       ]                                                                                 +
                     }                                                                                   +
                   ]                                                                                     +
                 }                                                                                       +
               ]                                                                                         +
             },                                                                                          +
             {                                                                                           +
               "Node Type": "Sort",                                                                      +
               "Parent Relationship": "Inner",                                                           +
               "Parallel Aware": false,                                                                  +
               "Startup Cost": 11884.63,                                                                 +
               "Total Cost": 12128.45,                                                                   +
               "Plan Rows": 3140339,                                                                     +
               "Plan Width": 20,                                                                         +
               "Actual Startup Time": 0.000,                                                             +
               "Actual Total Time": 0.000,                                                               +
               "Actual Rows": 0,                                                                         +
               "Actual Loops": 0,                                                                        +
               "Sort Key": ["chn.id"],                                                                   +
               "Shared Hit Blocks": 0,                                                                   +
               "Shared Read Blocks": 0,                                                                  +
               "Shared Dirtied Blocks": 0,                                                               +
               "Shared Written Blocks": 0,                                                               +
               "Local Hit Blocks": 0,                                                                    +
               "Local Read Blocks": 0,                                                                   +
               "Local Dirtied Blocks": 0,                                                                +
               "Local Written Blocks": 0,                                                                +
               "Temp Read Blocks": 0,                                                                    +
               "Temp Written Blocks": 0,                                                                 +
               "Plans": [                                                                                +
                 {                                                                                       +
                   "Node Type": "Seq Scan",                                                              +
                   "Parent Relationship": "Outer",                                                       +
                   "Parallel Aware": false,                                                              +
                   "Relation Name": "char_name",                                                         +
                   "Alias": "chn",                                                                       +
                   "Startup Cost": 0.00,                                                                 +
                   "Total Cost": 1360.36,                                                                +
                   "Plan Rows": 3140339,                                                                 +
                   "Plan Width": 20,                                                                     +
                   "Actual Startup Time": 0.000,                                                         +
                   "Actual Total Time": 0.000,                                                           +
                   "Actual Rows": 0,                                                                     +
                   "Actual Loops": 0,                                                                    +
                   "Shared Hit Blocks": 0,                                                               +
                   "Shared Read Blocks": 0,                                                              +
                   "Shared Dirtied Blocks": 0,                                                           +
                   "Shared Written Blocks": 0,                                                           +
                   "Local Hit Blocks": 0,                                                                +
                   "Local Read Blocks": 0,                                                               +
                   "Local Dirtied Blocks": 0,                                                            +
                   "Local Written Blocks": 0,                                                            +
                   "Temp Read Blocks": 0,                                                                +
                   "Temp Written Blocks": 0                                                              +
                 }                                                                                       +
               ]                                                                                         +
             }                                                                                           +
           ]                                                                                             +
         }                                                                                               +
       ]                                                                                                 +
     },                                                                                                  +
     "Planning Time": 2819.823,                                                                          +
     "Triggers": [                                                                                       +
     ],                                                                                                  +
     "Execution Time": 16865.844                                                                         +
   }                                                                                                     +
 ]
(1 row)

