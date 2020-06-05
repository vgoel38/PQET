                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                               +
   {                                                                                                                                                             +
     "Plan": {                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                  +
       "Startup Cost": 14480.39,                                                                                                                                 +
       "Total Cost": 14480.39,                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                           +
       "Plan Width": 96,                                                                                                                                         +
       "Actual Startup Time": 10502.156,                                                                                                                         +
       "Actual Total Time": 10502.156,                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                        +
       "Shared Hit Blocks": 217414,                                                                                                                              +
       "Shared Read Blocks": 169812,                                                                                                                             +
       "Shared Dirtied Blocks": 0,                                                                                                                               +
       "Shared Written Blocks": 0,                                                                                                                               +
       "Local Hit Blocks": 0,                                                                                                                                    +
       "Local Read Blocks": 0,                                                                                                                                   +
       "Local Dirtied Blocks": 0,                                                                                                                                +
       "Local Written Blocks": 0,                                                                                                                                +
       "Temp Read Blocks": 0,                                                                                                                                    +
       "Temp Written Blocks": 0,                                                                                                                                 +
       "Plans": [                                                                                                                                                +
         {                                                                                                                                                       +
           "Node Type": "Merge Join",                                                                                                                            +
           "Parent Relationship": "Outer",                                                                                                                       +
           "Parallel Aware": false,                                                                                                                              +
           "Join Type": "Inner",                                                                                                                                 +
           "Startup Cost": 14480.39,                                                                                                                             +
           "Total Cost": 14480.39,                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                       +
           "Plan Width": 48,                                                                                                                                     +
           "Actual Startup Time": 10473.782,                                                                                                                     +
           "Actual Total Time": 10474.293,                                                                                                                       +
           "Actual Rows": 477,                                                                                                                                   +
           "Actual Loops": 1,                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                 +
           "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                               +
           "Shared Hit Blocks": 217414,                                                                                                                          +
           "Shared Read Blocks": 169812,                                                                                                                         +
           "Shared Dirtied Blocks": 0,                                                                                                                           +
           "Shared Written Blocks": 0,                                                                                                                           +
           "Local Hit Blocks": 0,                                                                                                                                +
           "Local Read Blocks": 0,                                                                                                                               +
           "Local Dirtied Blocks": 0,                                                                                                                            +
           "Local Written Blocks": 0,                                                                                                                            +
           "Temp Read Blocks": 0,                                                                                                                                +
           "Temp Written Blocks": 0,                                                                                                                             +
           "Plans": [                                                                                                                                            +
             {                                                                                                                                                   +
               "Node Type": "Sort",                                                                                                                              +
               "Parent Relationship": "Outer",                                                                                                                   +
               "Parallel Aware": false,                                                                                                                          +
               "Startup Cost": 14474.26,                                                                                                                         +
               "Total Cost": 14474.26,                                                                                                                           +
               "Plan Rows": 2,                                                                                                                                   +
               "Plan Width": 52,                                                                                                                                 +
               "Actual Startup Time": 10420.358,                                                                                                                 +
               "Actual Total Time": 10420.697,                                                                                                                   +
               "Actual Rows": 1884,                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                +
               "Sort Key": ["mk.keyword_id"],                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                       +
               "Sort Space Used": 1051,                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                      +
               "Shared Hit Blocks": 217414,                                                                                                                      +
               "Shared Read Blocks": 169808,                                                                                                                     +
               "Shared Dirtied Blocks": 0,                                                                                                                       +
               "Shared Written Blocks": 0,                                                                                                                       +
               "Local Hit Blocks": 0,                                                                                                                            +
               "Local Read Blocks": 0,                                                                                                                           +
               "Local Dirtied Blocks": 0,                                                                                                                        +
               "Local Written Blocks": 0,                                                                                                                        +
               "Temp Read Blocks": 0,                                                                                                                            +
               "Temp Written Blocks": 0,                                                                                                                         +
               "Plans": [                                                                                                                                        +
                 {                                                                                                                                               +
                   "Node Type": "Merge Join",                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                               +
                   "Parallel Aware": false,                                                                                                                      +
                   "Join Type": "Inner",                                                                                                                         +
                   "Startup Cost": 13619.82,                                                                                                                     +
                   "Total Cost": 14474.26,                                                                                                                       +
                   "Plan Rows": 2,                                                                                                                               +
                   "Plan Width": 52,                                                                                                                             +
                   "Actual Startup Time": 10360.932,                                                                                                             +
                   "Actual Total Time": 10408.944,                                                                                                               +
                   "Actual Rows": 6483,                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                            +
                   "Inner Unique": false,                                                                                                                        +
                   "Merge Cond": "(mk.movie_id = ml.movie_id)",                                                                                                  +
                   "Shared Hit Blocks": 217410,                                                                                                                  +
                   "Shared Read Blocks": 169808,                                                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                                                   +
                   "Shared Written Blocks": 0,                                                                                                                   +
                   "Local Hit Blocks": 0,                                                                                                                        +
                   "Local Read Blocks": 0,                                                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                                                    +
                   "Local Written Blocks": 0,                                                                                                                    +
                   "Temp Read Blocks": 0,                                                                                                                        +
                   "Temp Written Blocks": 0,                                                                                                                     +
                   "Plans": [                                                                                                                                    +
                     {                                                                                                                                           +
                       "Node Type": "Index Scan",                                                                                                                +
                       "Parent Relationship": "Outer",                                                                                                           +
                       "Parallel Aware": false,                                                                                                                  +
                       "Scan Direction": "Forward",                                                                                                              +
                       "Index Name": "movie_id_movie_keyword",                                                                                                   +
                       "Relation Name": "movie_keyword",                                                                                                         +
                       "Alias": "mk",                                                                                                                            +
                       "Startup Cost": 0.01,                                                                                                                     +
                       "Total Cost": 39285.80,                                                                                                                   +
                       "Plan Rows": 4523930,                                                                                                                     +
                       "Plan Width": 8,                                                                                                                          +
                       "Actual Startup Time": 0.026,                                                                                                             +
                       "Actual Total Time": 90.563,                                                                                                              +
                       "Actual Rows": 69431,                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                        +
                       "Shared Hit Blocks": 261,                                                                                                                 +
                       "Shared Read Blocks": 567,                                                                                                                +
                       "Shared Dirtied Blocks": 0,                                                                                                               +
                       "Shared Written Blocks": 0,                                                                                                               +
                       "Local Hit Blocks": 0,                                                                                                                    +
                       "Local Read Blocks": 0,                                                                                                                   +
                       "Local Dirtied Blocks": 0,                                                                                                                +
                       "Local Written Blocks": 0,                                                                                                                +
                       "Temp Read Blocks": 0,                                                                                                                    +
                       "Temp Written Blocks": 0                                                                                                                  +
                     },                                                                                                                                          +
                     {                                                                                                                                           +
                       "Node Type": "Materialize",                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                           +
                       "Parallel Aware": false,                                                                                                                  +
                       "Startup Cost": 13619.81,                                                                                                                 +
                       "Total Cost": 13619.81,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                           +
                       "Plan Width": 68,                                                                                                                         +
                       "Actual Startup Time": 10298.758,                                                                                                         +
                       "Actual Total Time": 10299.270,                                                                                                           +
                       "Actual Rows": 6475,                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                        +
                       "Shared Hit Blocks": 217149,                                                                                                              +
                       "Shared Read Blocks": 169241,                                                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                                                               +
                       "Shared Written Blocks": 0,                                                                                                               +
                       "Local Hit Blocks": 0,                                                                                                                    +
                       "Local Read Blocks": 0,                                                                                                                   +
                       "Local Dirtied Blocks": 0,                                                                                                                +
                       "Local Written Blocks": 0,                                                                                                                +
                       "Temp Read Blocks": 0,                                                                                                                    +
                       "Temp Written Blocks": 0,                                                                                                                 +
                       "Plans": [                                                                                                                                +
                         {                                                                                                                                       +
                           "Node Type": "Sort",                                                                                                                  +
                           "Parent Relationship": "Outer",                                                                                                       +
                           "Parallel Aware": false,                                                                                                              +
                           "Startup Cost": 13619.81,                                                                                                             +
                           "Total Cost": 13619.81,                                                                                                               +
                           "Plan Rows": 1,                                                                                                                       +
                           "Plan Width": 68,                                                                                                                     +
                           "Actual Startup Time": 10298.747,                                                                                                     +
                           "Actual Total Time": 10298.803,                                                                                                       +
                           "Actual Rows": 705,                                                                                                                   +
                           "Actual Loops": 1,                                                                                                                    +
                           "Sort Key": ["ml.movie_id"],                                                                                                          +
                           "Sort Method": "quicksort",                                                                                                           +
                           "Sort Space Used": 124,                                                                                                               +
                           "Sort Space Type": "Memory",                                                                                                          +
                           "Shared Hit Blocks": 217149,                                                                                                          +
                           "Shared Read Blocks": 169241,                                                                                                         +
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
                               "Startup Cost": 13612.17,                                                                                                         +
                               "Total Cost": 13619.81,                                                                                                           +
                               "Plan Rows": 1,                                                                                                                   +
                               "Plan Width": 68,                                                                                                                 +
                               "Actual Startup Time": 10290.254,                                                                                                 +
                               "Actual Total Time": 10298.209,                                                                                                   +
                               "Actual Rows": 705,                                                                                                               +
                               "Actual Loops": 1,                                                                                                                +
                               "Inner Unique": false,                                                                                                            +
                               "Merge Cond": "(cn.id = mc.company_id)",                                                                                          +
                               "Shared Hit Blocks": 217149,                                                                                                      +
                               "Shared Read Blocks": 169241,                                                                                                     +
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
                                   "Startup Cost": 283.87,                                                                                                       +
                                   "Total Cost": 287.69,                                                                                                         +
                                   "Plan Rows": 49161,                                                                                                           +
                                   "Plan Width": 23,                                                                                                             +
                                   "Actual Startup Time": 172.962,                                                                                               +
                                   "Actual Total Time": 176.070,                                                                                                 +
                                   "Actual Rows": 14128,                                                                                                         +
                                   "Actual Loops": 1,                                                                                                            +
                                   "Sort Key": ["cn.id"],                                                                                                        +
                                   "Sort Method": "quicksort",                                                                                                   +
                                   "Sort Space Used": 5023,                                                                                                      +
                                   "Sort Space Type": "Memory",                                                                                                  +
                                   "Shared Hit Blocks": 2,                                                                                                       +
                                   "Shared Read Blocks": 2992,                                                                                                   +
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
                                       "Relation Name": "company_name",                                                                                          +
                                       "Alias": "cn",                                                                                                            +
                                       "Startup Cost": 0.00,                                                                                                     +
                                       "Total Cost": 164.90,                                                                                                     +
                                       "Plan Rows": 49161,                                                                                                       +
                                       "Plan Width": 23,                                                                                                         +
                                       "Actual Startup Time": 28.942,                                                                                            +
                                       "Actual Total Time": 149.207,                                                                                             +
                                       "Actual Rows": 48302,                                                                                                     +
                                       "Actual Loops": 1,                                                                                                        +
                                       "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",        +
                                       "Rows Removed by Filter": 186695,                                                                                         +
                                       "Shared Hit Blocks": 2,                                                                                                   +
                                       "Shared Read Blocks": 2992,                                                                                               +
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
                                 },                                                                                                                              +
                                 {                                                                                                                               +
                                   "Node Type": "Sort",                                                                                                          +
                                   "Parent Relationship": "Inner",                                                                                               +
                                   "Parallel Aware": false,                                                                                                      +
                                   "Startup Cost": 13328.30,                                                                                                     +
                                   "Total Cost": 13328.30,                                                                                                       +
                                   "Plan Rows": 1,                                                                                                               +
                                   "Plan Width": 53,                                                                                                             +
                                   "Actual Startup Time": 10116.974,                                                                                             +
                                   "Actual Total Time": 10117.168,                                                                                               +
                                   "Actual Rows": 1621,                                                                                                          +
                                   "Actual Loops": 1,                                                                                                            +
                                   "Sort Key": ["mc.company_id"],                                                                                                +
                                   "Sort Method": "quicksort",                                                                                                   +
                                   "Sort Space Used": 236,                                                                                                       +
                                   "Sort Space Type": "Memory",                                                                                                  +
                                   "Shared Hit Blocks": 217147,                                                                                                  +
                                   "Shared Read Blocks": 166249,                                                                                                 +
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
                                       "Startup Cost": 13328.30,                                                                                                 +
                                       "Total Cost": 13328.30,                                                                                                   +
                                       "Plan Rows": 1,                                                                                                           +
                                       "Plan Width": 53,                                                                                                         +
                                       "Actual Startup Time": 10113.424,                                                                                         +
                                       "Actual Total Time": 10115.190,                                                                                           +
                                       "Actual Rows": 1621,                                                                                                      +
                                       "Actual Loops": 1,                                                                                                        +
                                       "Inner Unique": false,                                                                                                    +
                                       "Merge Cond": "(ct.id = mc.company_type_id)",                                                                             +
                                       "Shared Hit Blocks": 217147,                                                                                              +
                                       "Shared Read Blocks": 166249,                                                                                             +
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
                                           "Node Type": "Sort",                                                                                                  +
                                           "Parent Relationship": "Outer",                                                                                       +
                                           "Parallel Aware": false,                                                                                              +
                                           "Startup Cost": 0.03,                                                                                                 +
                                           "Total Cost": 0.03,                                                                                                   +
                                           "Plan Rows": 1,                                                                                                       +
                                           "Plan Width": 4,                                                                                                      +
                                           "Actual Startup Time": 0.012,                                                                                         +
                                           "Actual Total Time": 0.012,                                                                                           +
                                           "Actual Rows": 1,                                                                                                     +
                                           "Actual Loops": 1,                                                                                                    +
                                           "Sort Key": ["ct.id"],                                                                                                +
                                           "Sort Method": "quicksort",                                                                                           +
                                           "Sort Space Used": 25,                                                                                                +
                                           "Sort Space Type": "Memory",                                                                                          +
                                           "Shared Hit Blocks": 1,                                                                                               +
                                           "Shared Read Blocks": 0,                                                                                              +
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
                                               "Relation Name": "company_type",                                                                                  +
                                               "Alias": "ct",                                                                                                    +
                                               "Startup Cost": 0.00,                                                                                             +
                                               "Total Cost": 0.03,                                                                                               +
                                               "Plan Rows": 1,                                                                                                   +
                                               "Plan Width": 4,                                                                                                  +
                                               "Actual Startup Time": 0.008,                                                                                     +
                                               "Actual Total Time": 0.009,                                                                                       +
                                               "Actual Rows": 1,                                                                                                 +
                                               "Actual Loops": 1,                                                                                                +
                                               "Filter": "((kind)::text = 'production companies'::text)",                                                        +
                                               "Rows Removed by Filter": 3,                                                                                      +
                                               "Shared Hit Blocks": 1,                                                                                           +
                                               "Shared Read Blocks": 0,                                                                                          +
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
                                           "Node Type": "Sort",                                                                                                  +
                                           "Parent Relationship": "Inner",                                                                                       +
                                           "Parallel Aware": false,                                                                                              +
                                           "Startup Cost": 13328.27,                                                                                             +
                                           "Total Cost": 13328.27,                                                                                               +
                                           "Plan Rows": 1,                                                                                                       +
                                           "Plan Width": 57,                                                                                                     +
                                           "Actual Startup Time": 10113.323,                                                                                     +
                                           "Actual Total Time": 10113.614,                                                                                       +
                                           "Actual Rows": 1737,                                                                                                  +
                                           "Actual Loops": 1,                                                                                                    +
                                           "Sort Key": ["mc.company_type_id"],                                                                                   +
                                           "Sort Method": "quicksort",                                                                                           +
                                           "Sort Space Used": 293,                                                                                               +
                                           "Sort Space Type": "Memory",                                                                                          +
                                           "Shared Hit Blocks": 217146,                                                                                          +
                                           "Shared Read Blocks": 166249,                                                                                         +
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
                                               "Startup Cost": 10723.60,                                                                                         +
                                               "Total Cost": 13328.27,                                                                                           +
                                               "Plan Rows": 1,                                                                                                   +
                                               "Plan Width": 57,                                                                                                 +
                                               "Actual Startup Time": 9945.543,                                                                                  +
                                               "Actual Total Time": 10111.300,                                                                                   +
                                               "Actual Rows": 1737,                                                                                              +
                                               "Actual Loops": 1,                                                                                                +
                                               "Inner Unique": false,                                                                                            +
                                               "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                                      +
                                               "Shared Hit Blocks": 217146,                                                                                      +
                                               "Shared Read Blocks": 166249,                                                                                     +
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
                                                   "Node Type": "Index Scan",                                                                                    +
                                                   "Parent Relationship": "Outer",                                                                               +
                                                   "Parallel Aware": false,                                                                                      +
                                                   "Scan Direction": "Forward",                                                                                  +
                                                   "Index Name": "movie_id_movie_companies",                                                                     +
                                                   "Relation Name": "movie_companies",                                                                           +
                                                   "Alias": "mc",                                                                                                +
                                                   "Startup Cost": 0.01,                                                                                         +
                                                   "Total Cost": 67925.24,                                                                                       +
                                                   "Plan Rows": 1271989,                                                                                         +
                                                   "Plan Width": 12,                                                                                             +
                                                   "Actual Startup Time": 8.479,                                                                                 +
                                                   "Actual Total Time": 304.374,                                                                                 +
                                                   "Actual Rows": 33502,                                                                                         +
                                                   "Actual Loops": 1,                                                                                            +
                                                   "Filter": "(note IS NULL)",                                                                                   +
                                                   "Rows Removed by Filter": 34712,                                                                              +
                                                   "Shared Hit Blocks": 30102,                                                                                   +
                                                   "Shared Read Blocks": 674,                                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                                   +
                                                   "Shared Written Blocks": 0,                                                                                   +
                                                   "Local Hit Blocks": 0,                                                                                        +
                                                   "Local Read Blocks": 0,                                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                                    +
                                                   "Local Written Blocks": 0,                                                                                    +
                                                   "Temp Read Blocks": 0,                                                                                        +
                                                   "Temp Written Blocks": 0                                                                                      +
                                                 },                                                                                                              +
                                                 {                                                                                                               +
                                                   "Node Type": "Sort",                                                                                          +
                                                   "Parent Relationship": "Inner",                                                                               +
                                                   "Parallel Aware": false,                                                                                      +
                                                   "Startup Cost": 10723.59,                                                                                     +
                                                   "Total Cost": 10723.59,                                                                                       +
                                                   "Plan Rows": 1,                                                                                               +
                                                   "Plan Width": 45,                                                                                             +
                                                   "Actual Startup Time": 9795.232,                                                                              +
                                                   "Actual Total Time": 9795.545,                                                                                +
                                                   "Actual Rows": 1730,                                                                                          +
                                                   "Actual Loops": 1,                                                                                            +
                                                   "Sort Key": ["ml.movie_id"],                                                                                  +
                                                   "Sort Method": "quicksort",                                                                                   +
                                                   "Sort Space Used": 41,                                                                                        +
                                                   "Sort Space Type": "Memory",                                                                                  +
                                                   "Shared Hit Blocks": 187044,                                                                                  +
                                                   "Shared Read Blocks": 165575,                                                                                 +
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
                                                       "Node Type": "Merge Join",                                                                                +
                                                       "Parent Relationship": "Outer",                                                                           +
                                                       "Parallel Aware": false,                                                                                  +
                                                       "Join Type": "Inner",                                                                                     +
                                                       "Startup Cost": 10723.59,                                                                                 +
                                                       "Total Cost": 10723.59,                                                                                   +
                                                       "Plan Rows": 1,                                                                                           +
                                                       "Plan Width": 45,                                                                                         +
                                                       "Actual Startup Time": 9795.072,                                                                          +
                                                       "Actual Total Time": 9795.154,                                                                            +
                                                       "Actual Rows": 213,                                                                                       +
                                                       "Actual Loops": 1,                                                                                        +
                                                       "Inner Unique": true,                                                                                     +
                                                       "Merge Cond": "(ml.link_type_id = lt.id)",                                                                +
                                                       "Shared Hit Blocks": 187044,                                                                              +
                                                       "Shared Read Blocks": 165575,                                                                             +
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
                                                           "Node Type": "Sort",                                                                                  +
                                                           "Parent Relationship": "Outer",                                                                       +
                                                           "Parallel Aware": false,                                                                              +
                                                           "Startup Cost": 10723.55,                                                                             +
                                                           "Total Cost": 10723.55,                                                                               +
                                                           "Plan Rows": 4,                                                                                       +
                                                           "Plan Width": 37,                                                                                     +
                                                           "Actual Startup Time": 9795.048,                                                                      +
                                                           "Actual Total Time": 9795.060,                                                                        +
                                                           "Actual Rows": 214,                                                                                   +
                                                           "Actual Loops": 1,                                                                                    +
                                                           "Sort Key": ["ml.link_type_id"],                                                                      +
                                                           "Sort Method": "quicksort",                                                                           +
                                                           "Sort Space Used": 46,                                                                                +
                                                           "Sort Space Type": "Memory",                                                                          +
                                                           "Shared Hit Blocks": 187043,                                                                          +
                                                           "Shared Read Blocks": 165575,                                                                         +
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
                                                               "Node Type": "Merge Join",                                                                        +
                                                               "Parent Relationship": "Outer",                                                                   +
                                                               "Parallel Aware": false,                                                                          +
                                                               "Join Type": "Inner",                                                                             +
                                                               "Startup Cost": 10723.55,                                                                         +
                                                               "Total Cost": 10723.55,                                                                           +
                                                               "Plan Rows": 4,                                                                                   +
                                                               "Plan Width": 37,                                                                                 +
                                                               "Actual Startup Time": 9794.895,                                                                  +
                                                               "Actual Total Time": 9794.974,                                                                    +
                                                               "Actual Rows": 267,                                                                               +
                                                               "Actual Loops": 1,                                                                                +
                                                               "Inner Unique": false,                                                                            +
                                                               "Merge Cond": "(cct2.id = cc.status_id)",                                                         +
                                                               "Shared Hit Blocks": 187043,                                                                      +
                                                               "Shared Read Blocks": 165575,                                                                     +
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
                                                                   "Node Type": "Sort",                                                                          +
                                                                   "Parent Relationship": "Outer",                                                               +
                                                                   "Parallel Aware": false,                                                                      +
                                                                   "Startup Cost": 0.03,                                                                         +
                                                                   "Total Cost": 0.03,                                                                           +
                                                                   "Plan Rows": 1,                                                                               +
                                                                   "Plan Width": 4,                                                                              +
                                                                   "Actual Startup Time": 0.027,                                                                 +
                                                                   "Actual Total Time": 0.027,                                                                   +
                                                                   "Actual Rows": 1,                                                                             +
                                                                   "Actual Loops": 1,                                                                            +
                                                                   "Sort Key": ["cct2.id"],                                                                      +
                                                                   "Sort Method": "quicksort",                                                                   +
                                                                   "Sort Space Used": 25,                                                                        +
                                                                   "Sort Space Type": "Memory",                                                                  +
                                                                   "Shared Hit Blocks": 1,                                                                       +
                                                                   "Shared Read Blocks": 0,                                                                      +
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
                                                                       "Node Type": "Seq Scan",                                                                  +
                                                                       "Parent Relationship": "Outer",                                                           +
                                                                       "Parallel Aware": false,                                                                  +
                                                                       "Relation Name": "comp_cast_type",                                                        +
                                                                       "Alias": "cct2",                                                                          +
                                                                       "Startup Cost": 0.00,                                                                     +
                                                                       "Total Cost": 0.03,                                                                       +
                                                                       "Plan Rows": 1,                                                                           +
                                                                       "Plan Width": 4,                                                                          +
                                                                       "Actual Startup Time": 0.018,                                                             +
                                                                       "Actual Total Time": 0.020,                                                               +
                                                                       "Actual Rows": 1,                                                                         +
                                                                       "Actual Loops": 1,                                                                        +
                                                                       "Filter": "((kind)::text = 'complete'::text)",                                            +
                                                                       "Rows Removed by Filter": 3,                                                              +
                                                                       "Shared Hit Blocks": 1,                                                                   +
                                                                       "Shared Read Blocks": 0,                                                                  +
                                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                                       "Shared Written Blocks": 0,                                                               +
                                                                       "Local Hit Blocks": 0,                                                                    +
                                                                       "Local Read Blocks": 0,                                                                   +
                                                                       "Local Dirtied Blocks": 0,                                                                +
                                                                       "Local Written Blocks": 0,                                                                +
                                                                       "Temp Read Blocks": 0,                                                                    +
                                                                       "Temp Written Blocks": 0                                                                  +
                                                                     }                                                                                           +
                                                                   ]                                                                                             +
                                                                 },                                                                                              +
                                                                 {                                                                                               +
                                                                   "Node Type": "Sort",                                                                          +
                                                                   "Parent Relationship": "Inner",                                                               +
                                                                   "Parallel Aware": false,                                                                      +
                                                                   "Startup Cost": 10723.52,                                                                     +
                                                                   "Total Cost": 10723.52,                                                                       +
                                                                   "Plan Rows": 16,                                                                              +
                                                                   "Plan Width": 41,                                                                             +
                                                                   "Actual Startup Time": 9794.863,                                                              +
                                                                   "Actual Total Time": 9794.877,                                                                +
                                                                   "Actual Rows": 268,                                                                           +
                                                                   "Actual Loops": 1,                                                                            +
                                                                   "Sort Key": ["cc.status_id"],                                                                 +
                                                                   "Sort Method": "quicksort",                                                                   +
                                                                   "Sort Space Used": 52,                                                                        +
                                                                   "Sort Space Type": "Memory",                                                                  +
                                                                   "Shared Hit Blocks": 187042,                                                                  +
                                                                   "Shared Read Blocks": 165575,                                                                 +
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
                                                                       "Node Type": "Merge Join",                                                                +
                                                                       "Parent Relationship": "Outer",                                                           +
                                                                       "Parallel Aware": false,                                                                  +
                                                                       "Join Type": "Inner",                                                                     +
                                                                       "Startup Cost": 10723.50,                                                                 +
                                                                       "Total Cost": 10723.51,                                                                   +
                                                                       "Plan Rows": 16,                                                                          +
                                                                       "Plan Width": 41,                                                                         +
                                                                       "Actual Startup Time": 9794.651,                                                          +
                                                                       "Actual Total Time": 9794.759,                                                            +
                                                                       "Actual Rows": 328,                                                                       +
                                                                       "Actual Loops": 1,                                                                        +
                                                                       "Inner Unique": false,                                                                    +
                                                                       "Merge Cond": "(cct1.id = cc.subject_id)",                                                +
                                                                       "Shared Hit Blocks": 187042,                                                              +
                                                                       "Shared Read Blocks": 165575,                                                             +
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
                                                                           "Node Type": "Sort",                                                                  +
                                                                           "Parent Relationship": "Outer",                                                       +
                                                                           "Parallel Aware": false,                                                              +
                                                                           "Startup Cost": 0.03,                                                                 +
                                                                           "Total Cost": 0.03,                                                                   +
                                                                           "Plan Rows": 2,                                                                       +
                                                                           "Plan Width": 4,                                                                      +
                                                                           "Actual Startup Time": 0.026,                                                         +
                                                                           "Actual Total Time": 0.027,                                                           +
                                                                           "Actual Rows": 2,                                                                     +
                                                                           "Actual Loops": 1,                                                                    +
                                                                           "Sort Key": ["cct1.id"],                                                              +
                                                                           "Sort Method": "quicksort",                                                           +
                                                                           "Sort Space Used": 25,                                                                +
                                                                           "Sort Space Type": "Memory",                                                          +
                                                                           "Shared Hit Blocks": 1,                                                               +
                                                                           "Shared Read Blocks": 0,                                                              +
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
                                                                               "Node Type": "Seq Scan",                                                          +
                                                                               "Parent Relationship": "Outer",                                                   +
                                                                               "Parallel Aware": false,                                                          +
                                                                               "Relation Name": "comp_cast_type",                                                +
                                                                               "Alias": "cct1",                                                                  +
                                                                               "Startup Cost": 0.00,                                                             +
                                                                               "Total Cost": 0.03,                                                               +
                                                                               "Plan Rows": 2,                                                                   +
                                                                               "Plan Width": 4,                                                                  +
                                                                               "Actual Startup Time": 0.017,                                                     +
                                                                               "Actual Total Time": 0.020,                                                       +
                                                                               "Actual Rows": 2,                                                                 +
                                                                               "Actual Loops": 1,                                                                +
                                                                               "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                         +
                                                                               "Rows Removed by Filter": 2,                                                      +
                                                                               "Shared Hit Blocks": 1,                                                           +
                                                                               "Shared Read Blocks": 0,                                                          +
                                                                               "Shared Dirtied Blocks": 0,                                                       +
                                                                               "Shared Written Blocks": 0,                                                       +
                                                                               "Local Hit Blocks": 0,                                                            +
                                                                               "Local Read Blocks": 0,                                                           +
                                                                               "Local Dirtied Blocks": 0,                                                        +
                                                                               "Local Written Blocks": 0,                                                        +
                                                                               "Temp Read Blocks": 0,                                                            +
                                                                               "Temp Written Blocks": 0                                                          +
                                                                             }                                                                                   +
                                                                           ]                                                                                     +
                                                                         },                                                                                      +
                                                                         {                                                                                       +
                                                                           "Node Type": "Sort",                                                                  +
                                                                           "Parent Relationship": "Inner",                                                       +
                                                                           "Parallel Aware": false,                                                              +
                                                                           "Startup Cost": 10723.47,                                                             +
                                                                           "Total Cost": 10723.47,                                                               +
                                                                           "Plan Rows": 31,                                                                      +
                                                                           "Plan Width": 45,                                                                     +
                                                                           "Actual Startup Time": 9794.619,                                                      +
                                                                           "Actual Total Time": 9794.637,                                                        +
                                                                           "Actual Rows": 328,                                                                   +
                                                                           "Actual Loops": 1,                                                                    +
                                                                           "Sort Key": ["cc.subject_id"],                                                        +
                                                                           "Sort Method": "quicksort",                                                           +
                                                                           "Sort Space Used": 52,                                                                +
                                                                           "Sort Space Type": "Memory",                                                          +
                                                                           "Shared Hit Blocks": 187041,                                                          +
                                                                           "Shared Read Blocks": 165575,                                                         +
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
                                                                               "Node Type": "Merge Join",                                                        +
                                                                               "Parent Relationship": "Outer",                                                   +
                                                                               "Parallel Aware": false,                                                          +
                                                                               "Join Type": "Inner",                                                             +
                                                                               "Startup Cost": 8842.26,                                                          +
                                                                               "Total Cost": 10723.44,                                                           +
                                                                               "Plan Rows": 31,                                                                  +
                                                                               "Plan Width": 45,                                                                 +
                                                                               "Actual Startup Time": 9653.932,                                                  +
                                                                               "Actual Total Time": 9794.485,                                                    +
                                                                               "Actual Rows": 328,                                                               +
                                                                               "Actual Loops": 1,                                                                +
                                                                               "Inner Unique": false,                                                            +
                                                                               "Merge Cond": "(ml.movie_id = cc.movie_id)",                                      +
                                                                               "Shared Hit Blocks": 187041,                                                      +
                                                                               "Shared Read Blocks": 165575,                                                     +
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
                                                                                   "Startup Cost": 8839.22,                                                      +
                                                                                   "Total Cost": 10577.22,                                                       +
                                                                                   "Plan Rows": 574,                                                             +
                                                                                   "Plan Width": 33,                                                             +
                                                                                   "Actual Startup Time": 9292.700,                                              +
                                                                                   "Actual Total Time": 9727.411,                                                +
                                                                                   "Actual Rows": 1503,                                                          +
                                                                                   "Actual Loops": 1,                                                            +
                                                                                   "Inner Unique": false,                                                        +
                                                                                   "Merge Cond": "(ml.movie_id = mi.movie_id)",                                  +
                                                                                   "Shared Hit Blocks": 183209,                                                  +
                                                                                   "Shared Read Blocks": 165490,                                                 +
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
                                                                                       "Node Type": "Merge Join",                                                +
                                                                                       "Parent Relationship": "Outer",                                           +
                                                                                       "Parallel Aware": false,                                                  +
                                                                                       "Join Type": "Inner",                                                     +
                                                                                       "Startup Cost": 76.48,                                                    +
                                                                                       "Total Cost": 1812.73,                                                    +
                                                                                       "Plan Rows": 10804,                                                       +
                                                                                       "Plan Width": 29,                                                         +
                                                                                       "Actual Startup Time": 271.708,                                           +
                                                                                       "Actual Total Time": 1194.298,                                            +
                                                                                       "Actual Rows": 13627,                                                     +
                                                                                       "Actual Loops": 1,                                                        +
                                                                                       "Inner Unique": false,                                                    +
                                                                                       "Merge Cond": "(t.id = ml.movie_id)",                                     +
                                                                                       "Shared Hit Blocks": 183207,                                              +
                                                                                       "Shared Read Blocks": 3600,                                               +
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
                                                                                           "Node Type": "Index Scan",                                            +
                                                                                           "Parent Relationship": "Outer",                                       +
                                                                                           "Parallel Aware": false,                                              +
                                                                                           "Scan Direction": "Forward",                                          +
                                                                                           "Index Name": "title_idx_id",                                         +
                                                                                           "Relation Name": "title",                                             +
                                                                                           "Alias": "t",                                                         +
                                                                                           "Startup Cost": 0.01,                                                 +
                                                                                           "Total Cost": 23434.65,                                               +
                                                                                           "Plan Rows": 910581,                                                  +
                                                                                           "Plan Width": 21,                                                     +
                                                                                           "Actual Startup Time": 0.032,                                         +
                                                                                           "Actual Total Time": 1128.494,                                        +
                                                                                           "Actual Rows": 59833,                                                 +
                                                                                           "Actual Loops": 1,                                                    +
                                                                                           "Filter": "((production_year >= 1950) AND (production_year <= 2000))",+
                                                                                           "Rows Removed by Filter": 126370,                                     +
                                                                                           "Shared Hit Blocks": 183205,                                          +
                                                                                           "Shared Read Blocks": 3439,                                           +
                                                                                           "Shared Dirtied Blocks": 0,                                           +
                                                                                           "Shared Written Blocks": 0,                                           +
                                                                                           "Local Hit Blocks": 0,                                                +
                                                                                           "Local Read Blocks": 0,                                               +
                                                                                           "Local Dirtied Blocks": 0,                                            +
                                                                                           "Local Written Blocks": 0,                                            +
                                                                                           "Temp Read Blocks": 0,                                                +
                                                                                           "Temp Written Blocks": 0                                              +
                                                                                         },                                                                      +
                                                                                         {                                                                       +
                                                                                           "Node Type": "Sort",                                                  +
                                                                                           "Parent Relationship": "Inner",                                       +
                                                                                           "Parallel Aware": false,                                              +
                                                                                           "Startup Cost": 76.46,                                                +
                                                                                           "Total Cost": 78.79,                                                  +
                                                                                           "Plan Rows": 29997,                                                   +
                                                                                           "Plan Width": 8,                                                      +
                                                                                           "Actual Startup Time": 49.022,                                        +
                                                                                           "Actual Total Time": 51.776,                                          +
                                                                                           "Actual Rows": 29997,                                                 +
                                                                                           "Actual Loops": 1,                                                    +
                                                                                           "Sort Key": ["ml.movie_id"],                                          +
                                                                                           "Sort Method": "quicksort",                                           +
                                                                                           "Sort Space Used": 2175,                                              +
                                                                                           "Sort Space Type": "Memory",                                          +
                                                                                           "Shared Hit Blocks": 2,                                               +
                                                                                           "Shared Read Blocks": 161,                                            +
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
                                                                                               "Node Type": "Seq Scan",                                          +
                                                                                               "Parent Relationship": "Outer",                                   +
                                                                                               "Parallel Aware": false,                                          +
                                                                                               "Relation Name": "movie_link",                                    +
                                                                                               "Alias": "ml",                                                    +
                                                                                               "Startup Cost": 0.00,                                             +
                                                                                               "Total Cost": 7.19,                                               +
                                                                                               "Plan Rows": 29997,                                               +
                                                                                               "Plan Width": 8,                                                  +
                                                                                               "Actual Startup Time": 0.013,                                     +
                                                                                               "Actual Total Time": 31.343,                                      +
                                                                                               "Actual Rows": 29997,                                             +
                                                                                               "Actual Loops": 1,                                                +
                                                                                               "Shared Hit Blocks": 2,                                           +
                                                                                               "Shared Read Blocks": 161,                                        +
                                                                                               "Shared Dirtied Blocks": 0,                                       +
                                                                                               "Shared Written Blocks": 0,                                       +
                                                                                               "Local Hit Blocks": 0,                                            +
                                                                                               "Local Read Blocks": 0,                                           +
                                                                                               "Local Dirtied Blocks": 0,                                        +
                                                                                               "Local Written Blocks": 0,                                        +
                                                                                               "Temp Read Blocks": 0,                                            +
                                                                                               "Temp Written Blocks": 0                                          +
                                                                                             }                                                                   +
                                                                                           ]                                                                     +
                                                                                         }                                                                       +
                                                                                       ]                                                                         +
                                                                                     },                                                                          +
                                                                                     {                                                                           +
                                                                                       "Node Type": "Sort",                                                      +
                                                                                       "Parent Relationship": "Inner",                                           +
                                                                                       "Parallel Aware": false,                                                  +
                                                                                       "Startup Cost": 8762.75,                                                  +
                                                                                       "Total Cost": 8773.17,                                                    +
                                                                                       "Plan Rows": 134293,                                                      +
                                                                                       "Plan Width": 4,                                                          +
                                                                                       "Actual Startup Time": 8530.372,                                          +
                                                                                       "Actual Total Time": 8530.780,                                            +
                                                                                       "Actual Rows": 4707,                                                      +
                                                                                       "Actual Loops": 1,                                                        +
                                                                                       "Sort Key": ["mi.movie_id"],                                              +
                                                                                       "Sort Method": "quicksort",                                               +
                                                                                       "Sort Space Used": 12437,                                                 +
                                                                                       "Sort Space Type": "Memory",                                              +
                                                                                       "Shared Hit Blocks": 2,                                                   +
                                                                                       "Shared Read Blocks": 161890,                                             +
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
                                                                                           "Relation Name": "movie_info",                                        +
                                                                                           "Alias": "mi",                                                        +
                                                                                           "Startup Cost": 0.00,                                                 +
                                                                                           "Total Cost": 8407.52,                                                +
                                                                                           "Plan Rows": 134293,                                                  +
                                                                                           "Plan Width": 4,                                                      +
                                                                                           "Actual Startup Time": 8.964,                                         +
                                                                                           "Actual Total Time": 8479.200,                                        +
                                                                                           "Actual Rows": 134239,                                                +
                                                                                           "Actual Loops": 1,                                                    +
                                                                                           "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))", +
                                                                                           "Rows Removed by Filter": 14701481,                                   +
                                                                                           "Shared Hit Blocks": 2,                                               +
                                                                                           "Shared Read Blocks": 161890,                                         +
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
                                                                                 },                                                                              +
                                                                                 {                                                                               +
                                                                                   "Node Type": "Index Scan",                                                    +
                                                                                   "Parent Relationship": "Inner",                                               +
                                                                                   "Parallel Aware": false,                                                      +
                                                                                   "Scan Direction": "Forward",                                                  +
                                                                                   "Index Name": "movie_id_complete_cast",                                       +
                                                                                   "Relation Name": "complete_cast",                                             +
                                                                                   "Alias": "cc",                                                                +
                                                                                   "Startup Cost": 0.01,                                                         +
                                                                                   "Total Cost": 3283.51,                                                        +
                                                                                   "Plan Rows": 135086,                                                          +
                                                                                   "Plan Width": 12,                                                             +
                                                                                   "Actual Startup Time": 0.017,                                                 +
                                                                                   "Actual Total Time": 66.003,                                                  +
                                                                                   "Actual Rows": 5454,                                                          +
                                                                                   "Actual Loops": 1,                                                            +
                                                                                   "Shared Hit Blocks": 3832,                                                    +
                                                                                   "Shared Read Blocks": 85,                                                     +
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
                                                                     }                                                                                           +
                                                                   ]                                                                                             +
                                                                 }                                                                                               +
                                                               ]                                                                                                 +
                                                             }                                                                                                   +
                                                           ]                                                                                                     +
                                                         },                                                                                                      +
                                                         {                                                                                                       +
                                                           "Node Type": "Sort",                                                                                  +
                                                           "Parent Relationship": "Inner",                                                                       +
                                                           "Parallel Aware": false,                                                                              +
                                                           "Startup Cost": 0.03,                                                                                 +
                                                           "Total Cost": 0.03,                                                                                   +
                                                           "Plan Rows": 1,                                                                                       +
                                                           "Plan Width": 16,                                                                                     +
                                                           "Actual Startup Time": 0.020,                                                                         +
                                                           "Actual Total Time": 0.020,                                                                           +
                                                           "Actual Rows": 2,                                                                                     +
                                                           "Actual Loops": 1,                                                                                    +
                                                           "Sort Key": ["lt.id"],                                                                                +
                                                           "Sort Method": "quicksort",                                                                           +
                                                           "Sort Space Used": 25,                                                                                +
                                                           "Sort Space Type": "Memory",                                                                          +
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
                                                               "Relation Name": "link_type",                                                                     +
                                                               "Alias": "lt",                                                                                    +
                                                               "Startup Cost": 0.00,                                                                             +
                                                               "Total Cost": 0.03,                                                                               +
                                                               "Plan Rows": 1,                                                                                   +
                                                               "Plan Width": 16,                                                                                 +
                                                               "Actual Startup Time": 0.008,                                                                     +
                                                               "Actual Total Time": 0.013,                                                                       +
                                                               "Actual Rows": 2,                                                                                 +
                                                               "Actual Loops": 1,                                                                                +
                                                               "Filter": "((link)::text ~~ '%follow%'::text)",                                                   +
                                                               "Rows Removed by Filter": 16,                                                                     +
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
                                                 }                                                                                                               +
                                               ]                                                                                                                 +
                                             }                                                                                                                   +
                                           ]                                                                                                                     +
                                         }                                                                                                                       +
                                       ]                                                                                                                         +
                                     }                                                                                                                           +
                                   ]                                                                                                                             +
                                 }                                                                                                                               +
                               ]                                                                                                                                 +
                             }                                                                                                                                   +
                           ]                                                                                                                                     +
                         }                                                                                                                                       +
                       ]                                                                                                                                         +
                     }                                                                                                                                           +
                   ]                                                                                                                                             +
                 }                                                                                                                                               +
               ]                                                                                                                                                 +
             },                                                                                                                                                  +
             {                                                                                                                                                   +
               "Node Type": "Sort",                                                                                                                              +
               "Parent Relationship": "Inner",                                                                                                                   +
               "Parallel Aware": false,                                                                                                                          +
               "Startup Cost": 6.13,                                                                                                                             +
               "Total Cost": 6.13,                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                  +
               "Actual Startup Time": 52.540,                                                                                                                    +
               "Actual Total Time": 52.541,                                                                                                                      +
               "Actual Rows": 1,                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                +
               "Sort Key": ["k.id"],                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                       +
               "Sort Space Used": 25,                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                      +
               "Shared Hit Blocks": 0,                                                                                                                           +
               "Shared Read Blocks": 4,                                                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                                                       +
               "Shared Written Blocks": 0,                                                                                                                       +
               "Local Hit Blocks": 0,                                                                                                                            +
               "Local Read Blocks": 0,                                                                                                                           +
               "Local Dirtied Blocks": 0,                                                                                                                        +
               "Local Written Blocks": 0,                                                                                                                        +
               "Temp Read Blocks": 0,                                                                                                                            +
               "Temp Written Blocks": 0,                                                                                                                         +
               "Plans": [                                                                                                                                        +
                 {                                                                                                                                               +
                   "Node Type": "Index Scan",                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                               +
                   "Parallel Aware": false,                                                                                                                      +
                   "Scan Direction": "Forward",                                                                                                                  +
                   "Index Name": "keyword_idx_keyword",                                                                                                          +
                   "Relation Name": "keyword",                                                                                                                   +
                   "Alias": "k",                                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                                         +
                   "Total Cost": 6.13,                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                               +
                   "Plan Width": 4,                                                                                                                              +
                   "Actual Startup Time": 52.524,                                                                                                                +
                   "Actual Total Time": 52.528,                                                                                                                  +
                   "Actual Rows": 1,                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                            +
                   "Index Cond": "(keyword = 'sequel'::text)",                                                                                                   +
                   "Rows Removed by Index Recheck": 0,                                                                                                           +
                   "Shared Hit Blocks": 0,                                                                                                                       +
                   "Shared Read Blocks": 4,                                                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                                                   +
                   "Shared Written Blocks": 0,                                                                                                                   +
                   "Local Hit Blocks": 0,                                                                                                                        +
                   "Local Read Blocks": 0,                                                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                                                    +
                   "Local Written Blocks": 0,                                                                                                                    +
                   "Temp Read Blocks": 0,                                                                                                                        +
                   "Temp Written Blocks": 0                                                                                                                      +
                 }                                                                                                                                               +
               ]                                                                                                                                                 +
             }                                                                                                                                                   +
           ]                                                                                                                                                     +
         }                                                                                                                                                       +
       ]                                                                                                                                                         +
     },                                                                                                                                                          +
     "Planning Time": 11446.998,                                                                                                                                 +
     "Triggers": [                                                                                                                                               +
     ],                                                                                                                                                          +
     "Execution Time": 10517.745                                                                                                                                 +
   }                                                                                                                                                             +
 ]
(1 row)

