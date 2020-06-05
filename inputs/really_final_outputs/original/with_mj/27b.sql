                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                              +
   {                                                                                                                                                            +
     "Plan": {                                                                                                                                                  +
       "Node Type": "Aggregate",                                                                                                                                +
       "Strategy": "Plain",                                                                                                                                     +
       "Partial Mode": "Simple",                                                                                                                                +
       "Parallel Aware": false,                                                                                                                                 +
       "Startup Cost": 14360.68,                                                                                                                                +
       "Total Cost": 14360.68,                                                                                                                                  +
       "Plan Rows": 1,                                                                                                                                          +
       "Plan Width": 96,                                                                                                                                        +
       "Actual Startup Time": 11234.850,                                                                                                                        +
       "Actual Total Time": 11234.850,                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                        +
       "Actual Loops": 1,                                                                                                                                       +
       "Shared Hit Blocks": 33942,                                                                                                                              +
       "Shared Read Blocks": 202361,                                                                                                                            +
       "Shared Dirtied Blocks": 0,                                                                                                                              +
       "Shared Written Blocks": 0,                                                                                                                              +
       "Local Hit Blocks": 0,                                                                                                                                   +
       "Local Read Blocks": 0,                                                                                                                                  +
       "Local Dirtied Blocks": 0,                                                                                                                               +
       "Local Written Blocks": 0,                                                                                                                               +
       "Temp Read Blocks": 0,                                                                                                                                   +
       "Temp Written Blocks": 0,                                                                                                                                +
       "Plans": [                                                                                                                                               +
         {                                                                                                                                                      +
           "Node Type": "Merge Join",                                                                                                                           +
           "Parent Relationship": "Outer",                                                                                                                      +
           "Parallel Aware": false,                                                                                                                             +
           "Join Type": "Inner",                                                                                                                                +
           "Startup Cost": 14360.68,                                                                                                                            +
           "Total Cost": 14360.68,                                                                                                                              +
           "Plan Rows": 1,                                                                                                                                      +
           "Plan Width": 48,                                                                                                                                    +
           "Actual Startup Time": 11206.550,                                                                                                                    +
           "Actual Total Time": 11206.817,                                                                                                                      +
           "Actual Rows": 247,                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                   +
           "Inner Unique": true,                                                                                                                                +
           "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                              +
           "Shared Hit Blocks": 33942,                                                                                                                          +
           "Shared Read Blocks": 202361,                                                                                                                        +
           "Shared Dirtied Blocks": 0,                                                                                                                          +
           "Shared Written Blocks": 0,                                                                                                                          +
           "Local Hit Blocks": 0,                                                                                                                               +
           "Local Read Blocks": 0,                                                                                                                              +
           "Local Dirtied Blocks": 0,                                                                                                                           +
           "Local Written Blocks": 0,                                                                                                                           +
           "Temp Read Blocks": 0,                                                                                                                               +
           "Temp Written Blocks": 0,                                                                                                                            +
           "Plans": [                                                                                                                                           +
             {                                                                                                                                                  +
               "Node Type": "Sort",                                                                                                                             +
               "Parent Relationship": "Outer",                                                                                                                  +
               "Parallel Aware": false,                                                                                                                         +
               "Startup Cost": 14354.54,                                                                                                                        +
               "Total Cost": 14354.55,                                                                                                                          +
               "Plan Rows": 2,                                                                                                                                  +
               "Plan Width": 52,                                                                                                                                +
               "Actual Startup Time": 11147.606,                                                                                                                +
               "Actual Total Time": 11147.744,                                                                                                                  +
               "Actual Rows": 742,                                                                                                                              +
               "Actual Loops": 1,                                                                                                                               +
               "Sort Key": ["mk.keyword_id"],                                                                                                                   +
               "Sort Method": "quicksort",                                                                                                                      +
               "Sort Space Used": 318,                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                     +
               "Shared Hit Blocks": 33942,                                                                                                                      +
               "Shared Read Blocks": 202357,                                                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                           +
               "Temp Written Blocks": 0,                                                                                                                        +
               "Plans": [                                                                                                                                       +
                 {                                                                                                                                              +
                   "Node Type": "Merge Join",                                                                                                                   +
                   "Parent Relationship": "Outer",                                                                                                              +
                   "Parallel Aware": false,                                                                                                                     +
                   "Join Type": "Inner",                                                                                                                        +
                   "Startup Cost": 13500.11,                                                                                                                    +
                   "Total Cost": 14354.54,                                                                                                                      +
                   "Plan Rows": 2,                                                                                                                              +
                   "Plan Width": 52,                                                                                                                            +
                   "Actual Startup Time": 11137.299,                                                                                                            +
                   "Actual Total Time": 11137.930,                                                                                                              +
                   "Actual Rows": 1919,                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                           +
                   "Inner Unique": false,                                                                                                                       +
                   "Merge Cond": "(mk.movie_id = ml.movie_id)",                                                                                                 +
                   "Shared Hit Blocks": 33938,                                                                                                                  +
                   "Shared Read Blocks": 202357,                                                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                       +
                   "Temp Written Blocks": 0,                                                                                                                    +
                   "Plans": [                                                                                                                                   +
                     {                                                                                                                                          +
                       "Node Type": "Index Scan",                                                                                                               +
                       "Parent Relationship": "Outer",                                                                                                          +
                       "Parallel Aware": false,                                                                                                                 +
                       "Scan Direction": "Forward",                                                                                                             +
                       "Index Name": "movie_id_movie_keyword",                                                                                                  +
                       "Relation Name": "movie_keyword",                                                                                                        +
                       "Alias": "mk",                                                                                                                           +
                       "Startup Cost": 0.01,                                                                                                                    +
                       "Total Cost": 39285.80,                                                                                                                  +
                       "Plan Rows": 4523930,                                                                                                                    +
                       "Plan Width": 8,                                                                                                                         +
                       "Actual Startup Time": 0.026,                                                                                                            +
                       "Actual Total Time": 90.101,                                                                                                             +
                       "Actual Rows": 69431,                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                       +
                       "Shared Hit Blocks": 261,                                                                                                                +
                       "Shared Read Blocks": 567,                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                   +
                       "Temp Written Blocks": 0                                                                                                                 +
                     },                                                                                                                                         +
                     {                                                                                                                                          +
                       "Node Type": "Materialize",                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                          +
                       "Parallel Aware": false,                                                                                                                 +
                       "Startup Cost": 13500.09,                                                                                                                +
                       "Total Cost": 13500.09,                                                                                                                  +
                       "Plan Rows": 1,                                                                                                                          +
                       "Plan Width": 68,                                                                                                                        +
                       "Actual Startup Time": 11027.785,                                                                                                        +
                       "Actual Total Time": 11027.932,                                                                                                          +
                       "Actual Rows": 1911,                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                       +
                       "Shared Hit Blocks": 33677,                                                                                                              +
                       "Shared Read Blocks": 201790,                                                                                                            +
                       "Shared Dirtied Blocks": 0,                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                   +
                       "Temp Written Blocks": 0,                                                                                                                +
                       "Plans": [                                                                                                                               +
                         {                                                                                                                                      +
                           "Node Type": "Sort",                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                      +
                           "Parallel Aware": false,                                                                                                             +
                           "Startup Cost": 13500.09,                                                                                                            +
                           "Total Cost": 13500.09,                                                                                                              +
                           "Plan Rows": 1,                                                                                                                      +
                           "Plan Width": 68,                                                                                                                    +
                           "Actual Startup Time": 11027.775,                                                                                                    +
                           "Actual Total Time": 11027.791,                                                                                                      +
                           "Actual Rows": 247,                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                   +
                           "Sort Key": ["ml.movie_id"],                                                                                                         +
                           "Sort Method": "quicksort",                                                                                                          +
                           "Sort Space Used": 59,                                                                                                               +
                           "Sort Space Type": "Memory",                                                                                                         +
                           "Shared Hit Blocks": 33677,                                                                                                          +
                           "Shared Read Blocks": 201790,                                                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                               +
                           "Temp Written Blocks": 0,                                                                                                            +
                           "Plans": [                                                                                                                           +
                             {                                                                                                                                  +
                               "Node Type": "Merge Join",                                                                                                       +
                               "Parent Relationship": "Outer",                                                                                                  +
                               "Parallel Aware": false,                                                                                                         +
                               "Join Type": "Inner",                                                                                                            +
                               "Startup Cost": 13492.46,                                                                                                        +
                               "Total Cost": 13500.09,                                                                                                          +
                               "Plan Rows": 1,                                                                                                                  +
                               "Plan Width": 68,                                                                                                                +
                               "Actual Startup Time": 11018.450,                                                                                                +
                               "Actual Total Time": 11027.539,                                                                                                  +
                               "Actual Rows": 247,                                                                                                              +
                               "Actual Loops": 1,                                                                                                               +
                               "Inner Unique": false,                                                                                                           +
                               "Merge Cond": "(cn.id = mc.company_id)",                                                                                         +
                               "Shared Hit Blocks": 33677,                                                                                                      +
                               "Shared Read Blocks": 201790,                                                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                                                      +
                               "Shared Written Blocks": 0,                                                                                                      +
                               "Local Hit Blocks": 0,                                                                                                           +
                               "Local Read Blocks": 0,                                                                                                          +
                               "Local Dirtied Blocks": 0,                                                                                                       +
                               "Local Written Blocks": 0,                                                                                                       +
                               "Temp Read Blocks": 0,                                                                                                           +
                               "Temp Written Blocks": 0,                                                                                                        +
                               "Plans": [                                                                                                                       +
                                 {                                                                                                                              +
                                   "Node Type": "Sort",                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                              +
                                   "Parallel Aware": false,                                                                                                     +
                                   "Startup Cost": 283.87,                                                                                                      +
                                   "Total Cost": 287.69,                                                                                                        +
                                   "Plan Rows": 49161,                                                                                                          +
                                   "Plan Width": 23,                                                                                                            +
                                   "Actual Startup Time": 184.592,                                                                                              +
                                   "Actual Total Time": 188.215,                                                                                                +
                                   "Actual Rows": 14128,                                                                                                        +
                                   "Actual Loops": 1,                                                                                                           +
                                   "Sort Key": ["cn.id"],                                                                                                       +
                                   "Sort Method": "quicksort",                                                                                                  +
                                   "Sort Space Used": 5023,                                                                                                     +
                                   "Sort Space Type": "Memory",                                                                                                 +
                                   "Shared Hit Blocks": 2,                                                                                                      +
                                   "Shared Read Blocks": 2992,                                                                                                  +
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
                                       "Node Type": "Seq Scan",                                                                                                 +
                                       "Parent Relationship": "Outer",                                                                                          +
                                       "Parallel Aware": false,                                                                                                 +
                                       "Relation Name": "company_name",                                                                                         +
                                       "Alias": "cn",                                                                                                           +
                                       "Startup Cost": 0.00,                                                                                                    +
                                       "Total Cost": 164.90,                                                                                                    +
                                       "Plan Rows": 49161,                                                                                                      +
                                       "Plan Width": 23,                                                                                                        +
                                       "Actual Startup Time": 28.943,                                                                                           +
                                       "Actual Total Time": 155.539,                                                                                            +
                                       "Actual Rows": 48302,                                                                                                    +
                                       "Actual Loops": 1,                                                                                                       +
                                       "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",       +
                                       "Rows Removed by Filter": 186695,                                                                                        +
                                       "Shared Hit Blocks": 2,                                                                                                  +
                                       "Shared Read Blocks": 2992,                                                                                              +
                                       "Shared Dirtied Blocks": 0,                                                                                              +
                                       "Shared Written Blocks": 0,                                                                                              +
                                       "Local Hit Blocks": 0,                                                                                                   +
                                       "Local Read Blocks": 0,                                                                                                  +
                                       "Local Dirtied Blocks": 0,                                                                                               +
                                       "Local Written Blocks": 0,                                                                                               +
                                       "Temp Read Blocks": 0,                                                                                                   +
                                       "Temp Written Blocks": 0                                                                                                 +
                                     }                                                                                                                          +
                                   ]                                                                                                                            +
                                 },                                                                                                                             +
                                 {                                                                                                                              +
                                   "Node Type": "Sort",                                                                                                         +
                                   "Parent Relationship": "Inner",                                                                                              +
                                   "Parallel Aware": false,                                                                                                     +
                                   "Startup Cost": 13208.59,                                                                                                    +
                                   "Total Cost": 13208.59,                                                                                                      +
                                   "Plan Rows": 1,                                                                                                              +
                                   "Plan Width": 53,                                                                                                            +
                                   "Actual Startup Time": 10833.609,                                                                                            +
                                   "Actual Total Time": 10833.696,                                                                                              +
                                   "Actual Rows": 532,                                                                                                          +
                                   "Actual Loops": 1,                                                                                                           +
                                   "Sort Key": ["mc.company_id"],                                                                                               +
                                   "Sort Method": "quicksort",                                                                                                  +
                                   "Sort Space Used": 93,                                                                                                       +
                                   "Sort Space Type": "Memory",                                                                                                 +
                                   "Shared Hit Blocks": 33675,                                                                                                  +
                                   "Shared Read Blocks": 198798,                                                                                                +
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
                                       "Startup Cost": 13208.59,                                                                                                +
                                       "Total Cost": 13208.59,                                                                                                  +
                                       "Plan Rows": 1,                                                                                                          +
                                       "Plan Width": 53,                                                                                                        +
                                       "Actual Startup Time": 10832.415,                                                                                        +
                                       "Actual Total Time": 10832.997,                                                                                          +
                                       "Actual Rows": 532,                                                                                                      +
                                       "Actual Loops": 1,                                                                                                       +
                                       "Inner Unique": false,                                                                                                   +
                                       "Merge Cond": "(ct.id = mc.company_type_id)",                                                                            +
                                       "Shared Hit Blocks": 33675,                                                                                              +
                                       "Shared Read Blocks": 198798,                                                                                            +
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
                                           "Startup Cost": 0.03,                                                                                                +
                                           "Total Cost": 0.03,                                                                                                  +
                                           "Plan Rows": 1,                                                                                                      +
                                           "Plan Width": 4,                                                                                                     +
                                           "Actual Startup Time": 0.014,                                                                                        +
                                           "Actual Total Time": 0.014,                                                                                          +
                                           "Actual Rows": 1,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                   +
                                           "Sort Key": ["ct.id"],                                                                                               +
                                           "Sort Method": "quicksort",                                                                                          +
                                           "Sort Space Used": 25,                                                                                               +
                                           "Sort Space Type": "Memory",                                                                                         +
                                           "Shared Hit Blocks": 1,                                                                                              +
                                           "Shared Read Blocks": 0,                                                                                             +
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
                                               "Relation Name": "company_type",                                                                                 +
                                               "Alias": "ct",                                                                                                   +
                                               "Startup Cost": 0.00,                                                                                            +
                                               "Total Cost": 0.03,                                                                                              +
                                               "Plan Rows": 1,                                                                                                  +
                                               "Plan Width": 4,                                                                                                 +
                                               "Actual Startup Time": 0.009,                                                                                    +
                                               "Actual Total Time": 0.010,                                                                                      +
                                               "Actual Rows": 1,                                                                                                +
                                               "Actual Loops": 1,                                                                                               +
                                               "Filter": "((kind)::text = 'production companies'::text)",                                                       +
                                               "Rows Removed by Filter": 3,                                                                                     +
                                               "Shared Hit Blocks": 1,                                                                                          +
                                               "Shared Read Blocks": 0,                                                                                         +
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
                                         },                                                                                                                     +
                                         {                                                                                                                      +
                                           "Node Type": "Sort",                                                                                                 +
                                           "Parent Relationship": "Inner",                                                                                      +
                                           "Parallel Aware": false,                                                                                             +
                                           "Startup Cost": 13208.56,                                                                                            +
                                           "Total Cost": 13208.56,                                                                                              +
                                           "Plan Rows": 1,                                                                                                      +
                                           "Plan Width": 57,                                                                                                    +
                                           "Actual Startup Time": 10832.393,                                                                                    +
                                           "Actual Total Time": 10832.485,                                                                                      +
                                           "Actual Rows": 532,                                                                                                  +
                                           "Actual Loops": 1,                                                                                                   +
                                           "Sort Key": ["mc.company_type_id"],                                                                                  +
                                           "Sort Method": "quicksort",                                                                                          +
                                           "Sort Space Used": 99,                                                                                               +
                                           "Sort Space Type": "Memory",                                                                                         +
                                           "Shared Hit Blocks": 33674,                                                                                          +
                                           "Shared Read Blocks": 198798,                                                                                        +
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
                                               "Startup Cost": 10603.89,                                                                                        +
                                               "Total Cost": 13208.56,                                                                                          +
                                               "Plan Rows": 1,                                                                                                  +
                                               "Plan Width": 57,                                                                                                +
                                               "Actual Startup Time": 10831.187,                                                                                +
                                               "Actual Total Time": 10831.778,                                                                                  +
                                               "Actual Rows": 532,                                                                                              +
                                               "Actual Loops": 1,                                                                                               +
                                               "Inner Unique": false,                                                                                           +
                                               "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                                     +
                                               "Shared Hit Blocks": 33674,                                                                                      +
                                               "Shared Read Blocks": 198798,                                                                                    +
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
                                                   "Node Type": "Index Scan",                                                                                   +
                                                   "Parent Relationship": "Outer",                                                                              +
                                                   "Parallel Aware": false,                                                                                     +
                                                   "Scan Direction": "Forward",                                                                                 +
                                                   "Index Name": "movie_id_movie_companies",                                                                    +
                                                   "Relation Name": "movie_companies",                                                                          +
                                                   "Alias": "mc",                                                                                               +
                                                   "Startup Cost": 0.01,                                                                                        +
                                                   "Total Cost": 67925.24,                                                                                      +
                                                   "Plan Rows": 1271989,                                                                                        +
                                                   "Plan Width": 12,                                                                                            +
                                                   "Actual Startup Time": 5.187,                                                                                +
                                                   "Actual Total Time": 319.326,                                                                                +
                                                   "Actual Rows": 33502,                                                                                        +
                                                   "Actual Loops": 1,                                                                                           +
                                                   "Filter": "(note IS NULL)",                                                                                  +
                                                   "Rows Removed by Filter": 34712,                                                                             +
                                                   "Shared Hit Blocks": 30102,                                                                                  +
                                                   "Shared Read Blocks": 674,                                                                                   +
                                                   "Shared Dirtied Blocks": 0,                                                                                  +
                                                   "Shared Written Blocks": 0,                                                                                  +
                                                   "Local Hit Blocks": 0,                                                                                       +
                                                   "Local Read Blocks": 0,                                                                                      +
                                                   "Local Dirtied Blocks": 0,                                                                                   +
                                                   "Local Written Blocks": 0,                                                                                   +
                                                   "Temp Read Blocks": 0,                                                                                       +
                                                   "Temp Written Blocks": 0                                                                                     +
                                                 },                                                                                                             +
                                                 {                                                                                                              +
                                                   "Node Type": "Sort",                                                                                         +
                                                   "Parent Relationship": "Inner",                                                                              +
                                                   "Parallel Aware": false,                                                                                     +
                                                   "Startup Cost": 10603.88,                                                                                    +
                                                   "Total Cost": 10603.88,                                                                                      +
                                                   "Plan Rows": 1,                                                                                              +
                                                   "Plan Width": 45,                                                                                            +
                                                   "Actual Startup Time": 10502.245,                                                                            +
                                                   "Actual Total Time": 10502.348,                                                                              +
                                                   "Actual Rows": 525,                                                                                          +
                                                   "Actual Loops": 1,                                                                                           +
                                                   "Sort Key": ["ml.movie_id"],                                                                                 +
                                                   "Sort Method": "quicksort",                                                                                  +
                                                   "Sort Space Used": 32,                                                                                       +
                                                   "Sort Space Type": "Memory",                                                                                 +
                                                   "Shared Hit Blocks": 3572,                                                                                   +
                                                   "Shared Read Blocks": 198124,                                                                                +
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
                                                       "Startup Cost": 10603.88,                                                                                +
                                                       "Total Cost": 10603.88,                                                                                  +
                                                       "Plan Rows": 1,                                                                                          +
                                                       "Plan Width": 45,                                                                                        +
                                                       "Actual Startup Time": 10502.044,                                                                        +
                                                       "Actual Total Time": 10502.152,                                                                          +
                                                       "Actual Rows": 95,                                                                                       +
                                                       "Actual Loops": 1,                                                                                       +
                                                       "Inner Unique": true,                                                                                    +
                                                       "Merge Cond": "(ml.link_type_id = lt.id)",                                                               +
                                                       "Shared Hit Blocks": 3572,                                                                               +
                                                       "Shared Read Blocks": 198124,                                                                            +
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
                                                           "Node Type": "Sort",                                                                                 +
                                                           "Parent Relationship": "Outer",                                                                      +
                                                           "Parallel Aware": false,                                                                             +
                                                           "Startup Cost": 10603.84,                                                                            +
                                                           "Total Cost": 10603.84,                                                                              +
                                                           "Plan Rows": 1,                                                                                      +
                                                           "Plan Width": 37,                                                                                    +
                                                           "Actual Startup Time": 10501.993,                                                                    +
                                                           "Actual Total Time": 10502.009,                                                                      +
                                                           "Actual Rows": 95,                                                                                   +
                                                           "Actual Loops": 1,                                                                                   +
                                                           "Sort Key": ["ml.link_type_id"],                                                                     +
                                                           "Sort Method": "quicksort",                                                                          +
                                                           "Sort Space Used": 32,                                                                               +
                                                           "Sort Space Type": "Memory",                                                                         +
                                                           "Shared Hit Blocks": 3571,                                                                           +
                                                           "Shared Read Blocks": 198124,                                                                        +
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
                                                               "Node Type": "Merge Join",                                                                       +
                                                               "Parent Relationship": "Outer",                                                                  +
                                                               "Parallel Aware": false,                                                                         +
                                                               "Join Type": "Inner",                                                                            +
                                                               "Startup Cost": 10603.84,                                                                        +
                                                               "Total Cost": 10603.84,                                                                          +
                                                               "Plan Rows": 1,                                                                                  +
                                                               "Plan Width": 37,                                                                                +
                                                               "Actual Startup Time": 10501.815,                                                                +
                                                               "Actual Total Time": 10501.909,                                                                  +
                                                               "Actual Rows": 95,                                                                               +
                                                               "Actual Loops": 1,                                                                               +
                                                               "Inner Unique": false,                                                                           +
                                                               "Merge Cond": "(cct2.id = cc.status_id)",                                                        +
                                                               "Shared Hit Blocks": 3571,                                                                       +
                                                               "Shared Read Blocks": 198124,                                                                    +
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
                                                                   "Node Type": "Sort",                                                                         +
                                                                   "Parent Relationship": "Outer",                                                              +
                                                                   "Parallel Aware": false,                                                                     +
                                                                   "Startup Cost": 0.03,                                                                        +
                                                                   "Total Cost": 0.03,                                                                          +
                                                                   "Plan Rows": 1,                                                                              +
                                                                   "Plan Width": 4,                                                                             +
                                                                   "Actual Startup Time": 0.027,                                                                +
                                                                   "Actual Total Time": 0.027,                                                                  +
                                                                   "Actual Rows": 1,                                                                            +
                                                                   "Actual Loops": 1,                                                                           +
                                                                   "Sort Key": ["cct2.id"],                                                                     +
                                                                   "Sort Method": "quicksort",                                                                  +
                                                                   "Sort Space Used": 25,                                                                       +
                                                                   "Sort Space Type": "Memory",                                                                 +
                                                                   "Shared Hit Blocks": 1,                                                                      +
                                                                   "Shared Read Blocks": 0,                                                                     +
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
                                                                       "Relation Name": "comp_cast_type",                                                       +
                                                                       "Alias": "cct2",                                                                         +
                                                                       "Startup Cost": 0.00,                                                                    +
                                                                       "Total Cost": 0.03,                                                                      +
                                                                       "Plan Rows": 1,                                                                          +
                                                                       "Plan Width": 4,                                                                         +
                                                                       "Actual Startup Time": 0.017,                                                            +
                                                                       "Actual Total Time": 0.019,                                                              +
                                                                       "Actual Rows": 1,                                                                        +
                                                                       "Actual Loops": 1,                                                                       +
                                                                       "Filter": "((kind)::text = 'complete'::text)",                                           +
                                                                       "Rows Removed by Filter": 3,                                                             +
                                                                       "Shared Hit Blocks": 1,                                                                  +
                                                                       "Shared Read Blocks": 0,                                                                 +
                                                                       "Shared Dirtied Blocks": 0,                                                              +
                                                                       "Shared Written Blocks": 0,                                                              +
                                                                       "Local Hit Blocks": 0,                                                                   +
                                                                       "Local Read Blocks": 0,                                                                  +
                                                                       "Local Dirtied Blocks": 0,                                                               +
                                                                       "Local Written Blocks": 0,                                                               +
                                                                       "Temp Read Blocks": 0,                                                                   +
                                                                       "Temp Written Blocks": 0                                                                 +
                                                                     }                                                                                          +
                                                                   ]                                                                                            +
                                                                 },                                                                                             +
                                                                 {                                                                                              +
                                                                   "Node Type": "Sort",                                                                         +
                                                                   "Parent Relationship": "Inner",                                                              +
                                                                   "Parallel Aware": false,                                                                     +
                                                                   "Startup Cost": 10603.81,                                                                    +
                                                                   "Total Cost": 10603.81,                                                                      +
                                                                   "Plan Rows": 1,                                                                              +
                                                                   "Plan Width": 41,                                                                            +
                                                                   "Actual Startup Time": 10501.783,                                                            +
                                                                   "Actual Total Time": 10501.799,                                                              +
                                                                   "Actual Rows": 96,                                                                           +
                                                                   "Actual Loops": 1,                                                                           +
                                                                   "Sort Key": ["cc.status_id"],                                                                +
                                                                   "Sort Method": "quicksort",                                                                  +
                                                                   "Sort Space Used": 36,                                                                       +
                                                                   "Sort Space Type": "Memory",                                                                 +
                                                                   "Shared Hit Blocks": 3570,                                                                   +
                                                                   "Shared Read Blocks": 198124,                                                                +
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
                                                                       "Startup Cost": 10603.81,                                                                +
                                                                       "Total Cost": 10603.81,                                                                  +
                                                                       "Plan Rows": 1,                                                                          +
                                                                       "Plan Width": 41,                                                                        +
                                                                       "Actual Startup Time": 10501.452,                                                        +
                                                                       "Actual Total Time": 10501.619,                                                          +
                                                                       "Actual Rows": 152,                                                                      +
                                                                       "Actual Loops": 1,                                                                       +
                                                                       "Inner Unique": false,                                                                   +
                                                                       "Merge Cond": "(cct1.id = cc.subject_id)",                                               +
                                                                       "Shared Hit Blocks": 3570,                                                               +
                                                                       "Shared Read Blocks": 198124,                                                            +
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
                                                                           "Node Type": "Sort",                                                                 +
                                                                           "Parent Relationship": "Outer",                                                      +
                                                                           "Parallel Aware": false,                                                             +
                                                                           "Startup Cost": 0.03,                                                                +
                                                                           "Total Cost": 0.03,                                                                  +
                                                                           "Plan Rows": 2,                                                                      +
                                                                           "Plan Width": 4,                                                                     +
                                                                           "Actual Startup Time": 0.018,                                                        +
                                                                           "Actual Total Time": 0.019,                                                          +
                                                                           "Actual Rows": 2,                                                                    +
                                                                           "Actual Loops": 1,                                                                   +
                                                                           "Sort Key": ["cct1.id"],                                                             +
                                                                           "Sort Method": "quicksort",                                                          +
                                                                           "Sort Space Used": 25,                                                               +
                                                                           "Sort Space Type": "Memory",                                                         +
                                                                           "Shared Hit Blocks": 1,                                                              +
                                                                           "Shared Read Blocks": 0,                                                             +
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
                                                                               "Relation Name": "comp_cast_type",                                               +
                                                                               "Alias": "cct1",                                                                 +
                                                                               "Startup Cost": 0.00,                                                            +
                                                                               "Total Cost": 0.03,                                                              +
                                                                               "Plan Rows": 2,                                                                  +
                                                                               "Plan Width": 4,                                                                 +
                                                                               "Actual Startup Time": 0.009,                                                    +
                                                                               "Actual Total Time": 0.012,                                                      +
                                                                               "Actual Rows": 2,                                                                +
                                                                               "Actual Loops": 1,                                                               +
                                                                               "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                        +
                                                                               "Rows Removed by Filter": 2,                                                     +
                                                                               "Shared Hit Blocks": 1,                                                          +
                                                                               "Shared Read Blocks": 0,                                                         +
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
                                                                           "Node Type": "Sort",                                                                 +
                                                                           "Parent Relationship": "Inner",                                                      +
                                                                           "Parallel Aware": false,                                                             +
                                                                           "Startup Cost": 10603.77,                                                            +
                                                                           "Total Cost": 10603.77,                                                              +
                                                                           "Plan Rows": 2,                                                                      +
                                                                           "Plan Width": 45,                                                                    +
                                                                           "Actual Startup Time": 10501.427,                                                    +
                                                                           "Actual Total Time": 10501.454,                                                      +
                                                                           "Actual Rows": 152,                                                                  +
                                                                           "Actual Loops": 1,                                                                   +
                                                                           "Sort Key": ["cc.subject_id"],                                                       +
                                                                           "Sort Method": "quicksort",                                                          +
                                                                           "Sort Space Used": 36,                                                               +
                                                                           "Sort Space Type": "Memory",                                                         +
                                                                           "Shared Hit Blocks": 3569,                                                           +
                                                                           "Shared Read Blocks": 198124,                                                        +
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
                                                                               "Startup Cost": 10451.65,                                                        +
                                                                               "Total Cost": 10603.77,                                                          +
                                                                               "Plan Rows": 2,                                                                  +
                                                                               "Plan Width": 45,                                                                +
                                                                               "Actual Startup Time": 10497.139,                                                +
                                                                               "Actual Total Time": 10501.245,                                                  +
                                                                               "Actual Rows": 152,                                                              +
                                                                               "Actual Loops": 1,                                                               +
                                                                               "Inner Unique": false,                                                           +
                                                                               "Merge Cond": "(ml.movie_id = cc.movie_id)",                                     +
                                                                               "Shared Hit Blocks": 3569,                                                       +
                                                                               "Shared Read Blocks": 198124,                                                    +
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
                                                                                   "Node Type": "Merge Join",                                                   +
                                                                                   "Parent Relationship": "Outer",                                              +
                                                                                   "Parallel Aware": false,                                                     +
                                                                                   "Join Type": "Inner",                                                        +
                                                                                   "Startup Cost": 10451.64,                                                    +
                                                                                   "Total Cost": 10457.65,                                                      +
                                                                                   "Plan Rows": 29,                                                             +
                                                                                   "Plan Width": 33,                                                            +
                                                                                   "Actual Startup Time": 10398.144,                                            +
                                                                                   "Actual Total Time": 10406.489,                                              +
                                                                                   "Actual Rows": 308,                                                          +
                                                                                   "Actual Loops": 1,                                                           +
                                                                                   "Inner Unique": false,                                                       +
                                                                                   "Merge Cond": "(ml.movie_id = mi.movie_id)",                                 +
                                                                                   "Shared Hit Blocks": 6,                                                      +
                                                                                   "Shared Read Blocks": 198047,                                                +
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
                                                                                       "Node Type": "Merge Join",                                               +
                                                                                       "Parent Relationship": "Outer",                                          +
                                                                                       "Parallel Aware": false,                                                 +
                                                                                       "Join Type": "Inner",                                                    +
                                                                                       "Startup Cost": 1688.89,                                                 +
                                                                                       "Total Cost": 1694.12,                                                   +
                                                                                       "Plan Rows": 553,                                                        +
                                                                                       "Plan Width": 29,                                                        +
                                                                                       "Actual Startup Time": 1802.005,                                         +
                                                                                       "Actual Total Time": 1811.381,                                           +
                                                                                       "Actual Rows": 348,                                                      +
                                                                                       "Actual Loops": 1,                                                       +
                                                                                       "Inner Unique": true,                                                    +
                                                                                       "Merge Cond": "(ml.movie_id = t.id)",                                    +
                                                                                       "Shared Hit Blocks": 4,                                                  +
                                                                                       "Shared Read Blocks": 36157,                                             +
                                                                                       "Shared Dirtied Blocks": 0,                                              +
                                                                                       "Shared Written Blocks": 0,                                              +
                                                                                       "Local Hit Blocks": 0,                                                   +
                                                                                       "Local Read Blocks": 0,                                                  +
                                                                                       "Local Dirtied Blocks": 0,                                               +
                                                                                       "Local Written Blocks": 0,                                               +
                                                                                       "Temp Read Blocks": 0,                                                   +
                                                                                       "Temp Written Blocks": 0,                                                +
                                                                                       "Plans": [                                                               +
                                                                                         {                                                                      +
                                                                                           "Node Type": "Sort",                                                 +
                                                                                           "Parent Relationship": "Outer",                                      +
                                                                                           "Parallel Aware": false,                                             +
                                                                                           "Startup Cost": 76.46,                                               +
                                                                                           "Total Cost": 78.79,                                                 +
                                                                                           "Plan Rows": 29997,                                                  +
                                                                                           "Plan Width": 8,                                                     +
                                                                                           "Actual Startup Time": 46.243,                                       +
                                                                                           "Actual Total Time": 48.775,                                         +
                                                                                           "Actual Rows": 29997,                                                +
                                                                                           "Actual Loops": 1,                                                   +
                                                                                           "Sort Key": ["ml.movie_id"],                                         +
                                                                                           "Sort Method": "quicksort",                                          +
                                                                                           "Sort Space Used": 2175,                                             +
                                                                                           "Sort Space Type": "Memory",                                         +
                                                                                           "Shared Hit Blocks": 2,                                              +
                                                                                           "Shared Read Blocks": 161,                                           +
                                                                                           "Shared Dirtied Blocks": 0,                                          +
                                                                                           "Shared Written Blocks": 0,                                          +
                                                                                           "Local Hit Blocks": 0,                                               +
                                                                                           "Local Read Blocks": 0,                                              +
                                                                                           "Local Dirtied Blocks": 0,                                           +
                                                                                           "Local Written Blocks": 0,                                           +
                                                                                           "Temp Read Blocks": 0,                                               +
                                                                                           "Temp Written Blocks": 0,                                            +
                                                                                           "Plans": [                                                           +
                                                                                             {                                                                  +
                                                                                               "Node Type": "Seq Scan",                                         +
                                                                                               "Parent Relationship": "Outer",                                  +
                                                                                               "Parallel Aware": false,                                         +
                                                                                               "Relation Name": "movie_link",                                   +
                                                                                               "Alias": "ml",                                                   +
                                                                                               "Startup Cost": 0.00,                                            +
                                                                                               "Total Cost": 7.19,                                              +
                                                                                               "Plan Rows": 29997,                                              +
                                                                                               "Plan Width": 8,                                                 +
                                                                                               "Actual Startup Time": 0.020,                                    +
                                                                                               "Actual Total Time": 30.335,                                     +
                                                                                               "Actual Rows": 29997,                                            +
                                                                                               "Actual Loops": 1,                                               +
                                                                                               "Shared Hit Blocks": 2,                                          +
                                                                                               "Shared Read Blocks": 161,                                       +
                                                                                               "Shared Dirtied Blocks": 0,                                      +
                                                                                               "Shared Written Blocks": 0,                                      +
                                                                                               "Local Hit Blocks": 0,                                           +
                                                                                               "Local Read Blocks": 0,                                          +
                                                                                               "Local Dirtied Blocks": 0,                                       +
                                                                                               "Local Written Blocks": 0,                                       +
                                                                                               "Temp Read Blocks": 0,                                           +
                                                                                               "Temp Written Blocks": 0                                         +
                                                                                             }                                                                  +
                                                                                           ]                                                                    +
                                                                                         },                                                                     +
                                                                                         {                                                                      +
                                                                                           "Node Type": "Sort",                                                 +
                                                                                           "Parent Relationship": "Inner",                                      +
                                                                                           "Parallel Aware": false,                                             +
                                                                                           "Startup Cost": 1612.43,                                             +
                                                                                           "Total Cost": 1616.05,                                               +
                                                                                           "Plan Rows": 46583,                                                  +
                                                                                           "Plan Width": 21,                                                    +
                                                                                           "Actual Startup Time": 1755.617,                                     +
                                                                                           "Actual Total Time": 1756.288,                                       +
                                                                                           "Actual Rows": 4216,                                                 +
                                                                                           "Actual Loops": 1,                                                   +
                                                                                           "Sort Key": ["t.id"],                                                +
                                                                                           "Sort Method": "quicksort",                                          +
                                                                                           "Sort Space Used": 4813,                                             +
                                                                                           "Sort Space Type": "Memory",                                         +
                                                                                           "Shared Hit Blocks": 2,                                              +
                                                                                           "Shared Read Blocks": 35996,                                         +
                                                                                           "Shared Dirtied Blocks": 0,                                          +
                                                                                           "Shared Written Blocks": 0,                                          +
                                                                                           "Local Hit Blocks": 0,                                               +
                                                                                           "Local Read Blocks": 0,                                              +
                                                                                           "Local Dirtied Blocks": 0,                                           +
                                                                                           "Local Written Blocks": 0,                                           +
                                                                                           "Temp Read Blocks": 0,                                               +
                                                                                           "Temp Written Blocks": 0,                                            +
                                                                                           "Plans": [                                                           +
                                                                                             {                                                                  +
                                                                                               "Node Type": "Seq Scan",                                         +
                                                                                               "Parent Relationship": "Outer",                                  +
                                                                                               "Parallel Aware": false,                                         +
                                                                                               "Relation Name": "title",                                        +
                                                                                               "Alias": "t",                                                    +
                                                                                               "Startup Cost": 0.00,                                            +
                                                                                               "Total Cost": 1500.26,                                           +
                                                                                               "Plan Rows": 46583,                                              +
                                                                                               "Plan Width": 21,                                                +
                                                                                               "Actual Startup Time": 26.448,                                   +
                                                                                               "Actual Total Time": 1703.323,                                   +
                                                                                               "Actual Rows": 46583,                                            +
                                                                                               "Actual Loops": 1,                                               +
                                                                                               "Filter": "(production_year = 1998)",                            +
                                                                                               "Rows Removed by Filter": 2481729,                               +
                                                                                               "Shared Hit Blocks": 2,                                          +
                                                                                               "Shared Read Blocks": 35996,                                     +
                                                                                               "Shared Dirtied Blocks": 0,                                      +
                                                                                               "Shared Written Blocks": 0,                                      +
                                                                                               "Local Hit Blocks": 0,                                           +
                                                                                               "Local Read Blocks": 0,                                          +
                                                                                               "Local Dirtied Blocks": 0,                                       +
                                                                                               "Local Written Blocks": 0,                                       +
                                                                                               "Temp Read Blocks": 0,                                           +
                                                                                               "Temp Written Blocks": 0                                         +
                                                                                             }                                                                  +
                                                                                           ]                                                                    +
                                                                                         }                                                                      +
                                                                                       ]                                                                        +
                                                                                     },                                                                         +
                                                                                     {                                                                          +
                                                                                       "Node Type": "Sort",                                                     +
                                                                                       "Parent Relationship": "Inner",                                          +
                                                                                       "Parallel Aware": false,                                                 +
                                                                                       "Startup Cost": 8762.75,                                                 +
                                                                                       "Total Cost": 8773.17,                                                   +
                                                                                       "Plan Rows": 134293,                                                     +
                                                                                       "Plan Width": 4,                                                         +
                                                                                       "Actual Startup Time": 8594.023,                                         +
                                                                                       "Actual Total Time": 8594.305,                                           +
                                                                                       "Actual Rows": 3538,                                                     +
                                                                                       "Actual Loops": 1,                                                       +
                                                                                       "Sort Key": ["mi.movie_id"],                                             +
                                                                                       "Sort Method": "quicksort",                                              +
                                                                                       "Sort Space Used": 12437,                                                +
                                                                                       "Sort Space Type": "Memory",                                             +
                                                                                       "Shared Hit Blocks": 2,                                                  +
                                                                                       "Shared Read Blocks": 161890,                                            +
                                                                                       "Shared Dirtied Blocks": 0,                                              +
                                                                                       "Shared Written Blocks": 0,                                              +
                                                                                       "Local Hit Blocks": 0,                                                   +
                                                                                       "Local Read Blocks": 0,                                                  +
                                                                                       "Local Dirtied Blocks": 0,                                               +
                                                                                       "Local Written Blocks": 0,                                               +
                                                                                       "Temp Read Blocks": 0,                                                   +
                                                                                       "Temp Written Blocks": 0,                                                +
                                                                                       "Plans": [                                                               +
                                                                                         {                                                                      +
                                                                                           "Node Type": "Seq Scan",                                             +
                                                                                           "Parent Relationship": "Outer",                                      +
                                                                                           "Parallel Aware": false,                                             +
                                                                                           "Relation Name": "movie_info",                                       +
                                                                                           "Alias": "mi",                                                       +
                                                                                           "Startup Cost": 0.00,                                                +
                                                                                           "Total Cost": 8407.52,                                               +
                                                                                           "Plan Rows": 134293,                                                 +
                                                                                           "Plan Width": 4,                                                     +
                                                                                           "Actual Startup Time": 10.546,                                       +
                                                                                           "Actual Total Time": 8539.722,                                       +
                                                                                           "Actual Rows": 134239,                                               +
                                                                                           "Actual Loops": 1,                                                   +
                                                                                           "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))",+
                                                                                           "Rows Removed by Filter": 14701481,                                  +
                                                                                           "Shared Hit Blocks": 2,                                              +
                                                                                           "Shared Read Blocks": 161890,                                        +
                                                                                           "Shared Dirtied Blocks": 0,                                          +
                                                                                           "Shared Written Blocks": 0,                                          +
                                                                                           "Local Hit Blocks": 0,                                               +
                                                                                           "Local Read Blocks": 0,                                              +
                                                                                           "Local Dirtied Blocks": 0,                                           +
                                                                                           "Local Written Blocks": 0,                                           +
                                                                                           "Temp Read Blocks": 0,                                               +
                                                                                           "Temp Written Blocks": 0                                             +
                                                                                         }                                                                      +
                                                                                       ]                                                                        +
                                                                                     }                                                                          +
                                                                                   ]                                                                            +
                                                                                 },                                                                             +
                                                                                 {                                                                              +
                                                                                   "Node Type": "Index Scan",                                                   +
                                                                                   "Parent Relationship": "Inner",                                              +
                                                                                   "Parallel Aware": false,                                                     +
                                                                                   "Scan Direction": "Forward",                                                 +
                                                                                   "Index Name": "movie_id_complete_cast",                                      +
                                                                                   "Relation Name": "complete_cast",                                            +
                                                                                   "Alias": "cc",                                                               +
                                                                                   "Startup Cost": 0.01,                                                        +
                                                                                   "Total Cost": 3283.51,                                                       +
                                                                                   "Plan Rows": 135086,                                                         +
                                                                                   "Plan Width": 12,                                                            +
                                                                                   "Actual Startup Time": 0.019,                                                +
                                                                                   "Actual Total Time": 93.030,                                                 +
                                                                                   "Actual Rows": 4854,                                                         +
                                                                                   "Actual Loops": 1,                                                           +
                                                                                   "Shared Hit Blocks": 3563,                                                   +
                                                                                   "Shared Read Blocks": 77,                                                    +
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
                                                                     }                                                                                          +
                                                                   ]                                                                                            +
                                                                 }                                                                                              +
                                                               ]                                                                                                +
                                                             }                                                                                                  +
                                                           ]                                                                                                    +
                                                         },                                                                                                     +
                                                         {                                                                                                      +
                                                           "Node Type": "Sort",                                                                                 +
                                                           "Parent Relationship": "Inner",                                                                      +
                                                           "Parallel Aware": false,                                                                             +
                                                           "Startup Cost": 0.03,                                                                                +
                                                           "Total Cost": 0.03,                                                                                  +
                                                           "Plan Rows": 1,                                                                                      +
                                                           "Plan Width": 16,                                                                                    +
                                                           "Actual Startup Time": 0.045,                                                                        +
                                                           "Actual Total Time": 0.045,                                                                          +
                                                           "Actual Rows": 2,                                                                                    +
                                                           "Actual Loops": 1,                                                                                   +
                                                           "Sort Key": ["lt.id"],                                                                               +
                                                           "Sort Method": "quicksort",                                                                          +
                                                           "Sort Space Used": 25,                                                                               +
                                                           "Sort Space Type": "Memory",                                                                         +
                                                           "Shared Hit Blocks": 1,                                                                              +
                                                           "Shared Read Blocks": 0,                                                                             +
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
                                                               "Relation Name": "link_type",                                                                    +
                                                               "Alias": "lt",                                                                                   +
                                                               "Startup Cost": 0.00,                                                                            +
                                                               "Total Cost": 0.03,                                                                              +
                                                               "Plan Rows": 1,                                                                                  +
                                                               "Plan Width": 16,                                                                                +
                                                               "Actual Startup Time": 0.016,                                                                    +
                                                               "Actual Total Time": 0.031,                                                                      +
                                                               "Actual Rows": 2,                                                                                +
                                                               "Actual Loops": 1,                                                                               +
                                                               "Filter": "((link)::text ~~ '%follow%'::text)",                                                  +
                                                               "Rows Removed by Filter": 16,                                                                    +
                                                               "Shared Hit Blocks": 1,                                                                          +
                                                               "Shared Read Blocks": 0,                                                                         +
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
                                                 }                                                                                                              +
                                               ]                                                                                                                +
                                             }                                                                                                                  +
                                           ]                                                                                                                    +
                                         }                                                                                                                      +
                                       ]                                                                                                                        +
                                     }                                                                                                                          +
                                   ]                                                                                                                            +
                                 }                                                                                                                              +
                               ]                                                                                                                                +
                             }                                                                                                                                  +
                           ]                                                                                                                                    +
                         }                                                                                                                                      +
                       ]                                                                                                                                        +
                     }                                                                                                                                          +
                   ]                                                                                                                                            +
                 }                                                                                                                                              +
               ]                                                                                                                                                +
             },                                                                                                                                                 +
             {                                                                                                                                                  +
               "Node Type": "Sort",                                                                                                                             +
               "Parent Relationship": "Inner",                                                                                                                  +
               "Parallel Aware": false,                                                                                                                         +
               "Startup Cost": 6.13,                                                                                                                            +
               "Total Cost": 6.13,                                                                                                                              +
               "Plan Rows": 1,                                                                                                                                  +
               "Plan Width": 4,                                                                                                                                 +
               "Actual Startup Time": 58.618,                                                                                                                   +
               "Actual Total Time": 58.619,                                                                                                                     +
               "Actual Rows": 1,                                                                                                                                +
               "Actual Loops": 1,                                                                                                                               +
               "Sort Key": ["k.id"],                                                                                                                            +
               "Sort Method": "quicksort",                                                                                                                      +
               "Sort Space Used": 25,                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                     +
               "Shared Hit Blocks": 0,                                                                                                                          +
               "Shared Read Blocks": 4,                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                           +
               "Temp Written Blocks": 0,                                                                                                                        +
               "Plans": [                                                                                                                                       +
                 {                                                                                                                                              +
                   "Node Type": "Index Scan",                                                                                                                   +
                   "Parent Relationship": "Outer",                                                                                                              +
                   "Parallel Aware": false,                                                                                                                     +
                   "Scan Direction": "Forward",                                                                                                                 +
                   "Index Name": "keyword_idx_keyword",                                                                                                         +
                   "Relation Name": "keyword",                                                                                                                  +
                   "Alias": "k",                                                                                                                                +
                   "Startup Cost": 0.01,                                                                                                                        +
                   "Total Cost": 6.13,                                                                                                                          +
                   "Plan Rows": 1,                                                                                                                              +
                   "Plan Width": 4,                                                                                                                             +
                   "Actual Startup Time": 58.600,                                                                                                               +
                   "Actual Total Time": 58.604,                                                                                                                 +
                   "Actual Rows": 1,                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                           +
                   "Index Cond": "(keyword = 'sequel'::text)",                                                                                                  +
                   "Rows Removed by Index Recheck": 0,                                                                                                          +
                   "Shared Hit Blocks": 0,                                                                                                                      +
                   "Shared Read Blocks": 4,                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                       +
                   "Temp Written Blocks": 0                                                                                                                     +
                 }                                                                                                                                              +
               ]                                                                                                                                                +
             }                                                                                                                                                  +
           ]                                                                                                                                                    +
         }                                                                                                                                                      +
       ]                                                                                                                                                        +
     },                                                                                                                                                         +
     "Planning Time": 11289.125,                                                                                                                                +
     "Triggers": [                                                                                                                                              +
     ],                                                                                                                                                         +
     "Execution Time": 11258.618                                                                                                                                +
   }                                                                                                                                                            +
 ]
(1 row)

