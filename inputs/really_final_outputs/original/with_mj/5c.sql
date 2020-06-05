                                                                  QUERY PLAN                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                           +
   {                                                                                                                                         +
     "Plan": {                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                             +
       "Strategy": "Plain",                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                             +
       "Parallel Aware": false,                                                                                                              +
       "Startup Cost": 23366.44,                                                                                                             +
       "Total Cost": 23366.44,                                                                                                               +
       "Plan Rows": 1,                                                                                                                       +
       "Plan Width": 32,                                                                                                                     +
       "Actual Startup Time": 12258.619,                                                                                                     +
       "Actual Total Time": 12258.619,                                                                                                       +
       "Actual Rows": 1,                                                                                                                     +
       "Actual Loops": 1,                                                                                                                    +
       "Shared Hit Blocks": 11,                                                                                                              +
       "Shared Read Blocks": 216674,                                                                                                         +
       "Shared Dirtied Blocks": 0,                                                                                                           +
       "Shared Written Blocks": 0,                                                                                                           +
       "Local Hit Blocks": 0,                                                                                                                +
       "Local Read Blocks": 0,                                                                                                               +
       "Local Dirtied Blocks": 0,                                                                                                            +
       "Local Written Blocks": 0,                                                                                                            +
       "Temp Read Blocks": 0,                                                                                                                +
       "Temp Written Blocks": 0,                                                                                                             +
       "Plans": [                                                                                                                            +
         {                                                                                                                                   +
           "Node Type": "Merge Join",                                                                                                        +
           "Parent Relationship": "Outer",                                                                                                   +
           "Parallel Aware": false,                                                                                                          +
           "Join Type": "Inner",                                                                                                             +
           "Startup Cost": 23357.68,                                                                                                         +
           "Total Cost": 23364.19,                                                                                                           +
           "Plan Rows": 28943,                                                                                                               +
           "Plan Width": 17,                                                                                                                 +
           "Actual Startup Time": 12258.334,                                                                                                 +
           "Actual Total Time": 12258.497,                                                                                                   +
           "Actual Rows": 669,                                                                                                               +
           "Actual Loops": 1,                                                                                                                +
           "Inner Unique": true,                                                                                                             +
           "Merge Cond": "(mi.info_type_id = it.id)",                                                                                        +
           "Shared Hit Blocks": 11,                                                                                                          +
           "Shared Read Blocks": 216674,                                                                                                     +
           "Shared Dirtied Blocks": 0,                                                                                                       +
           "Shared Written Blocks": 0,                                                                                                       +
           "Local Hit Blocks": 0,                                                                                                            +
           "Local Read Blocks": 0,                                                                                                           +
           "Local Dirtied Blocks": 0,                                                                                                        +
           "Local Written Blocks": 0,                                                                                                        +
           "Temp Read Blocks": 0,                                                                                                            +
           "Temp Written Blocks": 0,                                                                                                         +
           "Plans": [                                                                                                                        +
             {                                                                                                                               +
               "Node Type": "Sort",                                                                                                          +
               "Parent Relationship": "Outer",                                                                                               +
               "Parallel Aware": false,                                                                                                      +
               "Startup Cost": 23357.52,                                                                                                     +
               "Total Cost": 23359.77,                                                                                                       +
               "Plan Rows": 28943,                                                                                                           +
               "Plan Width": 21,                                                                                                             +
               "Actual Startup Time": 12258.280,                                                                                             +
               "Actual Total Time": 12258.312,                                                                                               +
               "Actual Rows": 669,                                                                                                           +
               "Actual Loops": 1,                                                                                                            +
               "Sort Key": ["mi.info_type_id"],                                                                                              +
               "Sort Method": "quicksort",                                                                                                   +
               "Sort Space Used": 72,                                                                                                        +
               "Sort Space Type": "Memory",                                                                                                  +
               "Shared Hit Blocks": 10,                                                                                                      +
               "Shared Read Blocks": 216674,                                                                                                 +
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
                   "Node Type": "Merge Join",                                                                                                +
                   "Parent Relationship": "Outer",                                                                                           +
                   "Parallel Aware": false,                                                                                                  +
                   "Join Type": "Inner",                                                                                                     +
                   "Startup Cost": 22898.58,                                                                                                 +
                   "Total Cost": 23290.91,                                                                                                   +
                   "Plan Rows": 28943,                                                                                                       +
                   "Plan Width": 21,                                                                                                         +
                   "Actual Startup Time": 11708.963,                                                                                         +
                   "Actual Total Time": 12248.499,                                                                                           +
                   "Actual Rows": 669,                                                                                                       +
                   "Actual Loops": 1,                                                                                                        +
                   "Inner Unique": false,                                                                                                    +
                   "Merge Cond": "(t.id = mi.movie_id)",                                                                                     +
                   "Shared Hit Blocks": 6,                                                                                                   +
                   "Shared Read Blocks": 216674,                                                                                             +
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
                       "Node Type": "Merge Join",                                                                                            +
                       "Parent Relationship": "Outer",                                                                                       +
                       "Parallel Aware": false,                                                                                              +
                       "Join Type": "Inner",                                                                                                 +
                       "Startup Cost": 8906.92,                                                                                              +
                       "Total Cost": 9187.00,                                                                                                +
                       "Plan Rows": 29863,                                                                                                   +
                       "Plan Width": 25,                                                                                                     +
                       "Actual Startup Time": 3274.064,                                                                                      +
                       "Actual Total Time": 3710.718,                                                                                        +
                       "Actual Rows": 767,                                                                                                   +
                       "Actual Loops": 1,                                                                                                    +
                       "Inner Unique": true,                                                                                                 +
                       "Merge Cond": "(mc.movie_id = t.id)",                                                                                 +
                       "Shared Hit Blocks": 4,                                                                                               +
                       "Shared Read Blocks": 54784,                                                                                          +
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
                           "Node Type": "Sort",                                                                                              +
                           "Parent Relationship": "Outer",                                                                                   +
                           "Parallel Aware": false,                                                                                          +
                           "Startup Cost": 1774.42,                                                                                          +
                           "Total Cost": 1777.77,                                                                                            +
                           "Plan Rows": 43168,                                                                                               +
                           "Plan Width": 4,                                                                                                  +
                           "Actual Startup Time": 976.302,                                                                                   +
                           "Actual Total Time": 976.382,                                                                                     +
                           "Actual Rows": 798,                                                                                               +
                           "Actual Loops": 1,                                                                                                +
                           "Sort Key": ["mc.movie_id"],                                                                                      +
                           "Sort Method": "quicksort",                                                                                       +
                           "Sort Space Used": 62,                                                                                            +
                           "Sort Space Type": "Memory",                                                                                      +
                           "Shared Hit Blocks": 3,                                                                                           +
                           "Shared Read Blocks": 18787,                                                                                      +
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
                               "Node Type": "Merge Join",                                                                                    +
                               "Parent Relationship": "Outer",                                                                               +
                               "Parallel Aware": false,                                                                                      +
                               "Join Type": "Inner",                                                                                         +
                               "Startup Cost": 1641.41,                                                                                      +
                               "Total Cost": 1671.21,                                                                                        +
                               "Plan Rows": 43168,                                                                                           +
                               "Plan Width": 4,                                                                                              +
                               "Actual Startup Time": 975.922,                                                                               +
                               "Actual Total Time": 976.093,                                                                                 +
                               "Actual Rows": 798,                                                                                           +
                               "Actual Loops": 1,                                                                                            +
                               "Inner Unique": false,                                                                                        +
                               "Merge Cond": "(ct.id = mc.company_type_id)",                                                                 +
                               "Shared Hit Blocks": 3,                                                                                       +
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
                                   "Node Type": "Sort",                                                                                      +
                                   "Parent Relationship": "Outer",                                                                           +
                                   "Parallel Aware": false,                                                                                  +
                                   "Startup Cost": 0.03,                                                                                     +
                                   "Total Cost": 0.03,                                                                                       +
                                   "Plan Rows": 1,                                                                                           +
                                   "Plan Width": 4,                                                                                          +
                                   "Actual Startup Time": 0.044,                                                                             +
                                   "Actual Total Time": 0.044,                                                                               +
                                   "Actual Rows": 1,                                                                                         +
                                   "Actual Loops": 1,                                                                                        +
                                   "Sort Key": ["ct.id"],                                                                                    +
                                   "Sort Method": "quicksort",                                                                               +
                                   "Sort Space Used": 25,                                                                                    +
                                   "Sort Space Type": "Memory",                                                                              +
                                   "Shared Hit Blocks": 1,                                                                                   +
                                   "Shared Read Blocks": 0,                                                                                  +
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
                                       "Relation Name": "company_type",                                                                      +
                                       "Alias": "ct",                                                                                        +
                                       "Startup Cost": 0.00,                                                                                 +
                                       "Total Cost": 0.03,                                                                                   +
                                       "Plan Rows": 1,                                                                                       +
                                       "Plan Width": 4,                                                                                      +
                                       "Actual Startup Time": 0.017,                                                                         +
                                       "Actual Total Time": 0.020,                                                                           +
                                       "Actual Rows": 1,                                                                                     +
                                       "Actual Loops": 1,                                                                                    +
                                       "Filter": "((kind)::text = 'production companies'::text)",                                            +
                                       "Rows Removed by Filter": 3,                                                                          +
                                       "Shared Hit Blocks": 1,                                                                               +
                                       "Shared Read Blocks": 0,                                                                              +
                                       "Shared Dirtied Blocks": 0,                                                                           +
                                       "Shared Written Blocks": 0,                                                                           +
                                       "Local Hit Blocks": 0,                                                                                +
                                       "Local Read Blocks": 0,                                                                               +
                                       "Local Dirtied Blocks": 0,                                                                            +
                                       "Local Written Blocks": 0,                                                                            +
                                       "Temp Read Blocks": 0,                                                                                +
                                       "Temp Written Blocks": 0                                                                              +
                                     }                                                                                                       +
                                   ]                                                                                                         +
                                 },                                                                                                          +
                                 {                                                                                                           +
                                   "Node Type": "Sort",                                                                                      +
                                   "Parent Relationship": "Inner",                                                                           +
                                   "Parallel Aware": false,                                                                                  +
                                   "Startup Cost": 1641.38,                                                                                  +
                                   "Total Cost": 1654.78,                                                                                    +
                                   "Plan Rows": 172674,                                                                                      +
                                   "Plan Width": 8,                                                                                          +
                                   "Actual Startup Time": 932.941,                                                                           +
                                   "Actual Total Time": 946.061,                                                                             +
                                   "Actual Rows": 295628,                                                                                    +
                                   "Actual Loops": 1,                                                                                        +
                                   "Sort Key": ["mc.company_type_id"],                                                                       +
                                   "Sort Method": "quicksort",                                                                               +
                                   "Sort Space Used": 26146,                                                                                 +
                                   "Sort Space Type": "Memory",                                                                              +
                                   "Shared Hit Blocks": 2,                                                                                   +
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
                                       "Actual Startup Time": 0.018,                                                                         +
                                       "Actual Total Time": 867.649,                                                                         +
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
                                     }                                                                                                       +
                                   ]                                                                                                         +
                                 }                                                                                                           +
                               ]                                                                                                             +
                             }                                                                                                               +
                           ]                                                                                                                 +
                         },                                                                                                                  +
                         {                                                                                                                   +
                           "Node Type": "Sort",                                                                                              +
                           "Parent Relationship": "Inner",                                                                                   +
                           "Parallel Aware": false,                                                                                          +
                           "Startup Cost": 7132.50,                                                                                          +
                           "Total Cost": 7268.30,                                                                                            +
                           "Plan Rows": 1749033,                                                                                             +
                           "Plan Width": 21,                                                                                                 +
                           "Actual Startup Time": 2282.828,                                                                                  +
                           "Actual Total Time": 2493.447,                                                                                    +
                           "Actual Rows": 1744819,                                                                                           +
                           "Actual Loops": 1,                                                                                                +
                           "Sort Key": ["t.id"],                                                                                             +
                           "Sort Method": "quicksort",                                                                                       +
                           "Sort Space Used": 171002,                                                                                        +
                           "Sort Space Type": "Memory",                                                                                      +
                           "Shared Hit Blocks": 1,                                                                                           +
                           "Shared Read Blocks": 35997,                                                                                      +
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
                               "Node Type": "Seq Scan",                                                                                      +
                               "Parent Relationship": "Outer",                                                                               +
                               "Parallel Aware": false,                                                                                      +
                               "Relation Name": "title",                                                                                     +
                               "Alias": "t",                                                                                                 +
                               "Startup Cost": 0.00,                                                                                         +
                               "Total Cost": 1500.26,                                                                                        +
                               "Plan Rows": 1749033,                                                                                         +
                               "Plan Width": 21,                                                                                             +
                               "Actual Startup Time": 11.239,                                                                                +
                               "Actual Total Time": 1358.748,                                                                                +
                               "Actual Rows": 1749032,                                                                                       +
                               "Actual Loops": 1,                                                                                            +
                               "Filter": "(production_year > 1990)",                                                                         +
                               "Rows Removed by Filter": 779280,                                                                             +
                               "Shared Hit Blocks": 1,                                                                                       +
                               "Shared Read Blocks": 35997,                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                   +
                               "Shared Written Blocks": 0,                                                                                   +
                               "Local Hit Blocks": 0,                                                                                        +
                               "Local Read Blocks": 0,                                                                                       +
                               "Local Dirtied Blocks": 0,                                                                                    +
                               "Local Written Blocks": 0,                                                                                    +
                               "Temp Read Blocks": 0,                                                                                        +
                               "Temp Written Blocks": 0                                                                                      +
                             }                                                                                                               +
                           ]                                                                                                                 +
                         }                                                                                                                   +
                       ]                                                                                                                     +
                     },                                                                                                                      +
                     {                                                                                                                       +
                       "Node Type": "Sort",                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                       +
                       "Parallel Aware": false,                                                                                              +
                       "Startup Cost": 13991.66,                                                                                             +
                       "Total Cost": 14046.44,                                                                                               +
                       "Plan Rows": 705579,                                                                                                  +
                       "Plan Width": 8,                                                                                                      +
                       "Actual Startup Time": 8433.609,                                                                                      +
                       "Actual Total Time": 8469.825,                                                                                        +
                       "Actual Rows": 704128,                                                                                                +
                       "Actual Loops": 1,                                                                                                    +
                       "Sort Key": ["mi.movie_id"],                                                                                          +
                       "Sort Method": "quicksort",                                                                                           +
                       "Sort Space Used": 57702,                                                                                             +
                       "Sort Space Type": "Memory",                                                                                          +
                       "Shared Hit Blocks": 2,                                                                                               +
                       "Shared Read Blocks": 161890,                                                                                         +
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
                           "Node Type": "Seq Scan",                                                                                          +
                           "Parent Relationship": "Outer",                                                                                   +
                           "Parallel Aware": false,                                                                                          +
                           "Relation Name": "movie_info",                                                                                    +
                           "Alias": "mi",                                                                                                    +
                           "Startup Cost": 0.00,                                                                                             +
                           "Total Cost": 11863.04,                                                                                           +
                           "Plan Rows": 705579,                                                                                              +
                           "Plan Width": 8,                                                                                                  +
                           "Actual Startup Time": 13.763,                                                                                    +
                           "Actual Total Time": 8185.989,                                                                                    +
                           "Actual Rows": 706674,                                                                                            +
                           "Actual Loops": 1,                                                                                                +
                           "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))",+
                           "Rows Removed by Filter": 14129046,                                                                               +
                           "Shared Hit Blocks": 2,                                                                                           +
                           "Shared Read Blocks": 161890,                                                                                     +
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
                     }                                                                                                                       +
                   ]                                                                                                                         +
                 }                                                                                                                           +
               ]                                                                                                                             +
             },                                                                                                                              +
             {                                                                                                                               +
               "Node Type": "Sort",                                                                                                          +
               "Parent Relationship": "Inner",                                                                                               +
               "Parallel Aware": false,                                                                                                      +
               "Startup Cost": 0.16,                                                                                                         +
               "Total Cost": 0.17,                                                                                                           +
               "Plan Rows": 113,                                                                                                             +
               "Plan Width": 4,                                                                                                              +
               "Actual Startup Time": 0.049,                                                                                                 +
               "Actual Total Time": 0.050,                                                                                                   +
               "Actual Rows": 18,                                                                                                            +
               "Actual Loops": 1,                                                                                                            +
               "Sort Key": ["it.id"],                                                                                                        +
               "Sort Method": "quicksort",                                                                                                   +
               "Sort Space Used": 30,                                                                                                        +
               "Sort Space Type": "Memory",                                                                                                  +
               "Shared Hit Blocks": 1,                                                                                                       +
               "Shared Read Blocks": 0,                                                                                                      +
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
                   "Node Type": "Seq Scan",                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                           +
                   "Parallel Aware": false,                                                                                                  +
                   "Relation Name": "info_type",                                                                                             +
                   "Alias": "it",                                                                                                            +
                   "Startup Cost": 0.00,                                                                                                     +
                   "Total Cost": 0.04,                                                                                                       +
                   "Plan Rows": 113,                                                                                                         +
                   "Plan Width": 4,                                                                                                          +
                   "Actual Startup Time": 0.013,                                                                                             +
                   "Actual Total Time": 0.026,                                                                                               +
                   "Actual Rows": 113,                                                                                                       +
                   "Actual Loops": 1,                                                                                                        +
                   "Shared Hit Blocks": 1,                                                                                                   +
                   "Shared Read Blocks": 0,                                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                                               +
                   "Shared Written Blocks": 0,                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                +
                   "Local Written Blocks": 0,                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                    +
                   "Temp Written Blocks": 0                                                                                                  +
                 }                                                                                                                           +
               ]                                                                                                                             +
             }                                                                                                                               +
           ]                                                                                                                                 +
         }                                                                                                                                   +
       ]                                                                                                                                     +
     },                                                                                                                                      +
     "Planning Time": 1870.200,                                                                                                              +
     "Triggers": [                                                                                                                           +
     ],                                                                                                                                      +
     "Execution Time": 12300.499                                                                                                             +
   }                                                                                                                                         +
 ]
(1 row)

