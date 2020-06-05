                                                             QUERY PLAN                                                              
-------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                  +
   {                                                                                                                                +
     "Plan": {                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                    +
       "Strategy": "Plain",                                                                                                         +
       "Partial Mode": "Simple",                                                                                                    +
       "Parallel Aware": false,                                                                                                     +
       "Startup Cost": 166921.24,                                                                                                   +
       "Total Cost": 166921.24,                                                                                                     +
       "Plan Rows": 1,                                                                                                              +
       "Plan Width": 64,                                                                                                            +
       "Actual Startup Time": 29032.148,                                                                                            +
       "Actual Total Time": 29032.149,                                                                                              +
       "Actual Rows": 1,                                                                                                            +
       "Actual Loops": 1,                                                                                                           +
       "Shared Hit Blocks": 18,                                                                                                     +
       "Shared Read Blocks": 406629,                                                                                                +
       "Shared Dirtied Blocks": 0,                                                                                                  +
       "Shared Written Blocks": 0,                                                                                                  +
       "Local Hit Blocks": 0,                                                                                                       +
       "Local Read Blocks": 0,                                                                                                      +
       "Local Dirtied Blocks": 0,                                                                                                   +
       "Local Written Blocks": 0,                                                                                                   +
       "Temp Read Blocks": 0,                                                                                                       +
       "Temp Written Blocks": 0,                                                                                                    +
       "Plans": [                                                                                                                   +
         {                                                                                                                          +
           "Node Type": "Merge Join",                                                                                               +
           "Parent Relationship": "Outer",                                                                                          +
           "Parallel Aware": false,                                                                                                 +
           "Join Type": "Inner",                                                                                                    +
           "Startup Cost": 166921.24,                                                                                               +
           "Total Cost": 166921.24,                                                                                                 +
           "Plan Rows": 1,                                                                                                          +
           "Plan Width": 32,                                                                                                        +
           "Actual Startup Time": 29032.074,                                                                                        +
           "Actual Total Time": 29032.093,                                                                                          +
           "Actual Rows": 16,                                                                                                       +
           "Actual Loops": 1,                                                                                                       +
           "Inner Unique": true,                                                                                                    +
           "Merge Cond": "(pi.info_type_id = it.id)",                                                                               +
           "Shared Hit Blocks": 18,                                                                                                 +
           "Shared Read Blocks": 406629,                                                                                            +
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
               "Node Type": "Sort",                                                                                                 +
               "Parent Relationship": "Outer",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Startup Cost": 166921.19,                                                                                           +
               "Total Cost": 166921.19,                                                                                             +
               "Plan Rows": 1,                                                                                                      +
               "Plan Width": 36,                                                                                                    +
               "Actual Startup Time": 29010.431,                                                                                    +
               "Actual Total Time": 29010.435,                                                                                      +
               "Actual Rows": 16,                                                                                                   +
               "Actual Loops": 1,                                                                                                   +
               "Sort Key": ["pi.info_type_id"],                                                                                     +
               "Sort Method": "quicksort",                                                                                          +
               "Sort Space Used": 26,                                                                                               +
               "Sort Space Type": "Memory",                                                                                         +
               "Shared Hit Blocks": 18,                                                                                             +
               "Shared Read Blocks": 406628,                                                                                        +
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
                   "Node Type": "Merge Join",                                                                                       +
                   "Parent Relationship": "Outer",                                                                                  +
                   "Parallel Aware": false,                                                                                         +
                   "Join Type": "Inner",                                                                                            +
                   "Startup Cost": 166921.19,                                                                                       +
                   "Total Cost": 166921.19,                                                                                         +
                   "Plan Rows": 1,                                                                                                  +
                   "Plan Width": 36,                                                                                                +
                   "Actual Startup Time": 28986.817,                                                                                +
                   "Actual Total Time": 28986.822,                                                                                  +
                   "Actual Rows": 16,                                                                                               +
                   "Actual Loops": 1,                                                                                               +
                   "Inner Unique": true,                                                                                            +
                   "Merge Cond": "(ml.link_type_id = lt.id)",                                                                       +
                   "Shared Hit Blocks": 14,                                                                                         +
                   "Shared Read Blocks": 406628,                                                                                    +
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
                       "Node Type": "Sort",                                                                                         +
                       "Parent Relationship": "Outer",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Startup Cost": 166921.15,                                                                                   +
                       "Total Cost": 166921.15,                                                                                     +
                       "Plan Rows": 1,                                                                                              +
                       "Plan Width": 40,                                                                                            +
                       "Actual Startup Time": 28986.786,                                                                            +
                       "Actual Total Time": 28986.788,                                                                              +
                       "Actual Rows": 46,                                                                                           +
                       "Actual Loops": 1,                                                                                           +
                       "Sort Key": ["ml.link_type_id"],                                                                             +
                       "Sort Method": "quicksort",                                                                                  +
                       "Sort Space Used": 28,                                                                                       +
                       "Sort Space Type": "Memory",                                                                                 +
                       "Shared Hit Blocks": 13,                                                                                     +
                       "Shared Read Blocks": 406628,                                                                                +
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
                           "Node Type": "Merge Join",                                                                               +
                           "Parent Relationship": "Outer",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Join Type": "Inner",                                                                                    +
                           "Startup Cost": 166904.69,                                                                               +
                           "Total Cost": 166921.15,                                                                                 +
                           "Plan Rows": 1,                                                                                          +
                           "Plan Width": 40,                                                                                        +
                           "Actual Startup Time": 28978.975,                                                                        +
                           "Actual Total Time": 28986.752,                                                                          +
                           "Actual Rows": 46,                                                                                       +
                           "Actual Loops": 1,                                                                                       +
                           "Inner Unique": true,                                                                                    +
                           "Merge Cond": "(ci.movie_id = t.id)",                                                                    +
                           "Shared Hit Blocks": 13,                                                                                 +
                           "Shared Read Blocks": 406628,                                                                            +
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
                               "Startup Cost": 165016.62,                                                                           +
                               "Total Cost": 165021.28,                                                                             +
                               "Plan Rows": 1,                                                                                      +
                               "Plan Width": 31,                                                                                    +
                               "Actual Startup Time": 27201.681,                                                                    +
                               "Actual Total Time": 27205.355,                                                                      +
                               "Actual Rows": 176,                                                                                  +
                               "Actual Loops": 1,                                                                                   +
                               "Inner Unique": false,                                                                               +
                               "Merge Cond": "(ci.movie_id = ml.linked_movie_id)",                                                  +
                               "Shared Hit Blocks": 12,                                                                             +
                               "Shared Read Blocks": 370631,                                                                        +
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
                                   "Startup Cost": 164940.16,                                                                       +
                                   "Total Cost": 164940.16,                                                                         +
                                   "Plan Rows": 8,                                                                                  +
                                   "Plan Width": 23,                                                                                +
                                   "Actual Startup Time": 27139.454,                                                                +
                                   "Actual Total Time": 27139.511,                                                                  +
                                   "Actual Rows": 353,                                                                              +
                                   "Actual Loops": 1,                                                                               +
                                   "Sort Key": ["ci.movie_id"],                                                                     +
                                   "Sort Method": "quicksort",                                                                      +
                                   "Sort Space Used": 52,                                                                           +
                                   "Sort Space Type": "Memory",                                                                     +
                                   "Shared Hit Blocks": 10,                                                                         +
                                   "Shared Read Blocks": 370470,                                                                    +
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
                                       "Startup Cost": 159208.68,                                                                   +
                                       "Total Cost": 164940.15,                                                                     +
                                       "Plan Rows": 8,                                                                              +
                                       "Plan Width": 23,                                                                            +
                                       "Actual Startup Time": 25095.561,                                                            +
                                       "Actual Total Time": 27139.327,                                                              +
                                       "Actual Rows": 353,                                                                          +
                                       "Actual Loops": 1,                                                                           +
                                       "Inner Unique": true,                                                                        +
                                       "Merge Cond": "(an.person_id = n.id)",                                                       +
                                       "Shared Hit Blocks": 10,                                                                     +
                                       "Shared Read Blocks": 370470,                                                                +
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
                                           "Node Type": "Merge Join",                                                               +
                                           "Parent Relationship": "Outer",                                                          +
                                           "Parallel Aware": false,                                                                 +
                                           "Join Type": "Inner",                                                                    +
                                           "Startup Cost": 156295.80,                                                               +
                                           "Total Cost": 162012.90,                                                                 +
                                           "Plan Rows": 2838,                                                                       +
                                           "Plan Width": 20,                                                                        +
                                           "Actual Startup Time": 21941.857,                                                        +
                                           "Actual Total Time": 24468.580,                                                          +
                                           "Actual Rows": 6878,                                                                     +
                                           "Actual Loops": 1,                                                                       +
                                           "Inner Unique": false,                                                                   +
                                           "Merge Cond": "(an.person_id = ci.person_id)",                                           +
                                           "Shared Hit Blocks": 8,                                                                  +
                                           "Shared Read Blocks": 314859,                                                            +
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
                                               "Startup Cost": 4538.67,                                                             +
                                               "Total Cost": 4643.03,                                                               +
                                               "Plan Rows": 81,                                                                     +
                                               "Plan Width": 12,                                                                    +
                                               "Actual Startup Time": 3083.514,                                                     +
                                               "Actual Total Time": 3125.087,                                                       +
                                               "Actual Rows": 49,                                                                   +
                                               "Actual Loops": 1,                                                                   +
                                               "Inner Unique": false,                                                               +
                                               "Merge Cond": "(pi.person_id = an.person_id)",                                       +
                                               "Shared Hit Blocks": 4,                                                              +
                                               "Shared Read Blocks": 62209,                                                         +
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
                                                   "Startup Cost": 2029.08,                                                         +
                                                   "Total Cost": 2029.08,                                                           +
                                                   "Plan Rows": 64,                                                                 +
                                                   "Plan Width": 8,                                                                 +
                                                   "Actual Startup Time": 2381.392,                                                 +
                                                   "Actual Total Time": 2381.403,                                                   +
                                                   "Actual Rows": 37,                                                               +
                                                   "Actual Loops": 1,                                                               +
                                                   "Sort Key": ["pi.person_id"],                                                    +
                                                   "Sort Method": "quicksort",                                                      +
                                                   "Sort Space Used": 28,                                                           +
                                                   "Sort Space Type": "Memory",                                                     +
                                                   "Shared Hit Blocks": 2,                                                          +
                                                   "Shared Read Blocks": 50816,                                                     +
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
                                                       "Relation Name": "person_info",                                              +
                                                       "Alias": "pi",                                                               +
                                                       "Startup Cost": 0.00,                                                        +
                                                       "Total Cost": 2029.02,                                                       +
                                                       "Plan Rows": 64,                                                             +
                                                       "Plan Width": 8,                                                             +
                                                       "Actual Startup Time": 42.075,                                               +
                                                       "Actual Total Time": 2381.044,                                               +
                                                       "Actual Rows": 64,                                                           +
                                                       "Actual Loops": 1,                                                           +
                                                       "Filter": "(note = 'Volker Boehm'::text)",                                   +
                                                       "Rows Removed by Filter": 2963600,                                           +
                                                       "Shared Hit Blocks": 2,                                                      +
                                                       "Shared Read Blocks": 50816,                                                 +
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
                                                   "Startup Cost": 2509.59,                                                         +
                                                   "Total Cost": 2561.76,                                                           +
                                                   "Plan Rows": 671965,                                                             +
                                                   "Plan Width": 4,                                                                 +
                                                   "Actual Startup Time": 700.969,                                                  +
                                                   "Actual Total Time": 716.866,                                                    +
                                                   "Actual Rows": 277874,                                                           +
                                                   "Actual Loops": 1,                                                               +
                                                   "Sort Key": ["an.person_id"],                                                    +
                                                   "Sort Method": "quicksort",                                                      +
                                                   "Sort Space Used": 56203,                                                        +
                                                   "Sort Space Type": "Memory",                                                     +
                                                   "Shared Hit Blocks": 2,                                                          +
                                                   "Shared Read Blocks": 11393,                                                     +
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
                                                       "Relation Name": "aka_name",                                                 +
                                                       "Alias": "an",                                                               +
                                                       "Startup Cost": 0.00,                                                        +
                                                       "Total Cost": 489.73,                                                        +
                                                       "Plan Rows": 671965,                                                         +
                                                       "Plan Width": 4,                                                             +
                                                       "Actual Startup Time": 0.013,                                                +
                                                       "Actual Total Time": 410.113,                                                +
                                                       "Actual Rows": 674692,                                                       +
                                                       "Actual Loops": 1,                                                           +
                                                       "Filter": "(name ~~ '%a%'::text)",                                           +
                                                       "Rows Removed by Filter": 226651,                                            +
                                                       "Shared Hit Blocks": 2,                                                      +
                                                       "Shared Read Blocks": 11393,                                                 +
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
                                             },                                                                                     +
                                             {                                                                                      +
                                               "Node Type": "Sort",                                                                 +
                                               "Parent Relationship": "Inner",                                                      +
                                               "Parallel Aware": false,                                                             +
                                               "Startup Cost": 151757.13,                                                           +
                                               "Total Cost": 154571.13,                                                             +
                                               "Plan Rows": 36244344,                                                               +
                                               "Plan Width": 8,                                                                     +
                                               "Actual Startup Time": 18794.864,                                                    +
                                               "Actual Total Time": 19689.950,                                                      +
                                               "Actual Rows": 17655576,                                                             +
                                               "Actual Loops": 1,                                                                   +
                                               "Sort Key": ["ci.person_id"],                                                        +
                                               "Sort Method": "quicksort",                                                          +
                                               "Sort Space Used": 3271818,                                                          +
                                               "Sort Space Type": "Memory",                                                         +
                                               "Shared Hit Blocks": 4,                                                              +
                                               "Shared Read Blocks": 252650,                                                        +
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
                                                   "Node Type": "Seq Scan",                                                         +
                                                   "Parent Relationship": "Outer",                                                  +
                                                   "Parallel Aware": false,                                                         +
                                                   "Relation Name": "cast_info",                                                    +
                                                   "Alias": "ci",                                                                   +
                                                   "Startup Cost": 0.00,                                                            +
                                                   "Total Cost": 10431.00,                                                          +
                                                   "Plan Rows": 36244344,                                                           +
                                                   "Plan Width": 8,                                                                 +
                                                   "Actual Startup Time": 0.012,                                                    +
                                                   "Actual Total Time": 6716.846,                                                   +
                                                   "Actual Rows": 36244344,                                                         +
                                                   "Actual Loops": 1,                                                               +
                                                   "Shared Hit Blocks": 4,                                                          +
                                                   "Shared Read Blocks": 252650,                                                    +
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
                                             }                                                                                      +
                                           ]                                                                                        +
                                         },                                                                                         +
                                         {                                                                                          +
                                           "Node Type": "Sort",                                                                     +
                                           "Parent Relationship": "Inner",                                                          +
                                           "Parallel Aware": false,                                                                 +
                                           "Startup Cost": 2912.88,                                                                 +
                                           "Total Cost": 2919.95,                                                                   +
                                           "Plan Rows": 91148,                                                                      +
                                           "Plan Width": 19,                                                                        +
                                           "Actual Startup Time": 2648.718,                                                         +
                                           "Actual Total Time": 2658.365,                                                           +
                                           "Actual Rows": 91976,                                                                    +
                                           "Actual Loops": 1,                                                                       +
                                           "Sort Key": ["n.id"],                                                                    +
                                           "Sort Method": "quicksort",                                                              +
                                           "Sort Space Used": 9811,                                                                 +
                                           "Sort Space Type": "Memory",                                                             +
                                           "Shared Hit Blocks": 2,                                                                  +
                                           "Shared Read Blocks": 55611,                                                             +
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
                                               "Relation Name": "name",                                                             +
                                               "Alias": "n",                                                                        +
                                               "Startup Cost": 0.00,                                                                +
                                               "Total Cost": 2679.69,                                                               +
                                               "Plan Rows": 91148,                                                                  +
                                               "Plan Width": 19,                                                                    +
                                               "Actual Startup Time": 20.860,                                                       +
                                               "Actual Total Time": 2596.828,                                                       +
                                               "Actual Rows": 91976,                                                                +
                                               "Actual Loops": 1,                                                                   +
                                               "Filter": "(((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))",+
                                               "Rows Removed by Filter": 4075515,                                                   +
                                               "Shared Hit Blocks": 2,                                                              +
                                               "Shared Read Blocks": 55611,                                                         +
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
                                   "Startup Cost": 76.46,                                                                           +
                                   "Total Cost": 78.79,                                                                             +
                                   "Plan Rows": 29997,                                                                              +
                                   "Plan Width": 8,                                                                                 +
                                   "Actual Startup Time": 59.266,                                                                   +
                                   "Actual Total Time": 62.164,                                                                     +
                                   "Actual Rows": 29916,                                                                            +
                                   "Actual Loops": 1,                                                                               +
                                   "Sort Key": ["ml.linked_movie_id"],                                                              +
                                   "Sort Method": "quicksort",                                                                      +
                                   "Sort Space Used": 2175,                                                                         +
                                   "Sort Space Type": "Memory",                                                                     +
                                   "Shared Hit Blocks": 2,                                                                          +
                                   "Shared Read Blocks": 161,                                                                       +
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
                                       "Relation Name": "movie_link",                                                               +
                                       "Alias": "ml",                                                                               +
                                       "Startup Cost": 0.00,                                                                        +
                                       "Total Cost": 7.19,                                                                          +
                                       "Plan Rows": 29997,                                                                          +
                                       "Plan Width": 8,                                                                             +
                                       "Actual Startup Time": 25.405,                                                               +
                                       "Actual Total Time": 38.391,                                                                 +
                                       "Actual Rows": 29997,                                                                        +
                                       "Actual Loops": 1,                                                                           +
                                       "Shared Hit Blocks": 2,                                                                      +
                                       "Shared Read Blocks": 161,                                                                   +
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
                               "Node Type": "Sort",                                                                                 +
                               "Parent Relationship": "Inner",                                                                      +
                               "Parallel Aware": false,                                                                             +
                               "Startup Cost": 1888.08,                                                                             +
                               "Total Cost": 1893.98,                                                                               +
                               "Plan Rows": 76065,                                                                                  +
                               "Plan Width": 21,                                                                                    +
                               "Actual Startup Time": 1762.136,                                                                     +
                               "Actual Total Time": 1770.666,                                                                       +
                               "Actual Rows": 72415,                                                                                +
                               "Actual Loops": 1,                                                                                   +
                               "Sort Key": ["t.id"],                                                                                +
                               "Sort Method": "quicksort",                                                                          +
                               "Sort Space Used": 8367,                                                                             +
                               "Sort Space Type": "Memory",                                                                         +
                               "Shared Hit Blocks": 1,                                                                              +
                               "Shared Read Blocks": 35997,                                                                         +
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
                                   "Node Type": "Seq Scan",                                                                         +
                                   "Parent Relationship": "Outer",                                                                  +
                                   "Parallel Aware": false,                                                                         +
                                   "Relation Name": "title",                                                                        +
                                   "Alias": "t",                                                                                    +
                                   "Startup Cost": 0.00,                                                                            +
                                   "Total Cost": 1696.56,                                                                           +
                                   "Plan Rows": 76065,                                                                              +
                                   "Plan Width": 21,                                                                                +
                                   "Actual Startup Time": 25.650,                                                                   +
                                   "Actual Total Time": 1690.451,                                                                   +
                                   "Actual Rows": 76065,                                                                            +
                                   "Actual Loops": 1,                                                                               +
                                   "Filter": "((production_year >= 1980) AND (production_year <= 1984))",                           +
                                   "Rows Removed by Filter": 2452247,                                                               +
                                   "Shared Hit Blocks": 1,                                                                          +
                                   "Shared Read Blocks": 35997,                                                                     +
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
                         }                                                                                                          +
                       ]                                                                                                            +
                     },                                                                                                             +
                     {                                                                                                              +
                       "Node Type": "Sort",                                                                                         +
                       "Parent Relationship": "Inner",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Startup Cost": 0.03,                                                                                        +
                       "Total Cost": 0.03,                                                                                          +
                       "Plan Rows": 1,                                                                                              +
                       "Plan Width": 4,                                                                                             +
                       "Actual Startup Time": 0.022,                                                                                +
                       "Actual Total Time": 0.022,                                                                                  +
                       "Actual Rows": 1,                                                                                            +
                       "Actual Loops": 1,                                                                                           +
                       "Sort Key": ["lt.id"],                                                                                       +
                       "Sort Method": "quicksort",                                                                                  +
                       "Sort Space Used": 25,                                                                                       +
                       "Sort Space Type": "Memory",                                                                                 +
                       "Shared Hit Blocks": 1,                                                                                      +
                       "Shared Read Blocks": 0,                                                                                     +
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
                           "Node Type": "Seq Scan",                                                                                 +
                           "Parent Relationship": "Outer",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Relation Name": "link_type",                                                                            +
                           "Alias": "lt",                                                                                           +
                           "Startup Cost": 0.00,                                                                                    +
                           "Total Cost": 0.03,                                                                                      +
                           "Plan Rows": 1,                                                                                          +
                           "Plan Width": 4,                                                                                         +
                           "Actual Startup Time": 0.012,                                                                            +
                           "Actual Total Time": 0.013,                                                                              +
                           "Actual Rows": 1,                                                                                        +
                           "Actual Loops": 1,                                                                                       +
                           "Filter": "((link)::text = 'features'::text)",                                                           +
                           "Rows Removed by Filter": 17,                                                                            +
                           "Shared Hit Blocks": 1,                                                                                  +
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
                 }                                                                                                                  +
               ]                                                                                                                    +
             },                                                                                                                     +
             {                                                                                                                      +
               "Node Type": "Sort",                                                                                                 +
               "Parent Relationship": "Inner",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Startup Cost": 0.05,                                                                                                +
               "Total Cost": 0.05,                                                                                                  +
               "Plan Rows": 1,                                                                                                      +
               "Plan Width": 4,                                                                                                     +
               "Actual Startup Time": 21.635,                                                                                       +
               "Actual Total Time": 21.635,                                                                                         +
               "Actual Rows": 1,                                                                                                    +
               "Actual Loops": 1,                                                                                                   +
               "Sort Key": ["it.id"],                                                                                               +
               "Sort Method": "quicksort",                                                                                          +
               "Sort Space Used": 25,                                                                                               +
               "Sort Space Type": "Memory",                                                                                         +
               "Shared Hit Blocks": 0,                                                                                              +
               "Shared Read Blocks": 1,                                                                                             +
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
                   "Node Type": "Seq Scan",                                                                                         +
                   "Parent Relationship": "Outer",                                                                                  +
                   "Parallel Aware": false,                                                                                         +
                   "Relation Name": "info_type",                                                                                    +
                   "Alias": "it",                                                                                                   +
                   "Startup Cost": 0.00,                                                                                            +
                   "Total Cost": 0.05,                                                                                              +
                   "Plan Rows": 1,                                                                                                  +
                   "Plan Width": 4,                                                                                                 +
                   "Actual Startup Time": 21.594,                                                                                   +
                   "Actual Total Time": 21.628,                                                                                     +
                   "Actual Rows": 1,                                                                                                +
                   "Actual Loops": 1,                                                                                               +
                   "Filter": "((info)::text = 'mini biography'::text)",                                                             +
                   "Rows Removed by Filter": 112,                                                                                   +
                   "Shared Hit Blocks": 0,                                                                                          +
                   "Shared Read Blocks": 1,                                                                                         +
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
         }                                                                                                                          +
       ]                                                                                                                            +
     },                                                                                                                             +
     "Planning Time": 6671.728,                                                                                                     +
     "Triggers": [                                                                                                                  +
     ],                                                                                                                             +
     "Execution Time": 29132.539                                                                                                    +
   }                                                                                                                                +
 ]
(1 row)

