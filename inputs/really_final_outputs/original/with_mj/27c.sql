                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                      +
   {                                                                                                                                                                    +
     "Plan": {                                                                                                                                                          +
       "Node Type": "Aggregate",                                                                                                                                        +
       "Strategy": "Plain",                                                                                                                                             +
       "Partial Mode": "Simple",                                                                                                                                        +
       "Parallel Aware": false,                                                                                                                                         +
       "Startup Cost": 19902.32,                                                                                                                                        +
       "Total Cost": 19902.32,                                                                                                                                          +
       "Plan Rows": 1,                                                                                                                                                  +
       "Plan Width": 96,                                                                                                                                                +
       "Actual Startup Time": 10619.286,                                                                                                                                +
       "Actual Total Time": 10619.287,                                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                                +
       "Actual Loops": 1,                                                                                                                                               +
       "Shared Hit Blocks": 226415,                                                                                                                                     +
       "Shared Read Blocks": 169966,                                                                                                                                    +
       "Shared Dirtied Blocks": 0,                                                                                                                                      +
       "Shared Written Blocks": 0,                                                                                                                                      +
       "Local Hit Blocks": 0,                                                                                                                                           +
       "Local Read Blocks": 0,                                                                                                                                          +
       "Local Dirtied Blocks": 0,                                                                                                                                       +
       "Local Written Blocks": 0,                                                                                                                                       +
       "Temp Read Blocks": 0,                                                                                                                                           +
       "Temp Written Blocks": 0,                                                                                                                                        +
       "Plans": [                                                                                                                                                       +
         {                                                                                                                                                              +
           "Node Type": "Merge Join",                                                                                                                                   +
           "Parent Relationship": "Outer",                                                                                                                              +
           "Parallel Aware": false,                                                                                                                                     +
           "Join Type": "Inner",                                                                                                                                        +
           "Startup Cost": 19902.31,                                                                                                                                    +
           "Total Cost": 19902.31,                                                                                                                                      +
           "Plan Rows": 1,                                                                                                                                              +
           "Plan Width": 48,                                                                                                                                            +
           "Actual Startup Time": 10592.282,                                                                                                                            +
           "Actual Total Time": 10593.024,                                                                                                                              +
           "Actual Rows": 743,                                                                                                                                          +
           "Actual Loops": 1,                                                                                                                                           +
           "Inner Unique": true,                                                                                                                                        +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                                +
           "Shared Hit Blocks": 226415,                                                                                                                                 +
           "Shared Read Blocks": 169966,                                                                                                                                +
           "Shared Dirtied Blocks": 0,                                                                                                                                  +
           "Shared Written Blocks": 0,                                                                                                                                  +
           "Local Hit Blocks": 0,                                                                                                                                       +
           "Local Read Blocks": 0,                                                                                                                                      +
           "Local Dirtied Blocks": 0,                                                                                                                                   +
           "Local Written Blocks": 0,                                                                                                                                   +
           "Temp Read Blocks": 0,                                                                                                                                       +
           "Temp Written Blocks": 0,                                                                                                                                    +
           "Plans": [                                                                                                                                                   +
             {                                                                                                                                                          +
               "Node Type": "Sort",                                                                                                                                     +
               "Parent Relationship": "Outer",                                                                                                                          +
               "Parallel Aware": false,                                                                                                                                 +
               "Startup Cost": 19902.28,                                                                                                                                +
               "Total Cost": 19902.28,                                                                                                                                  +
               "Plan Rows": 1,                                                                                                                                          +
               "Plan Width": 52,                                                                                                                                        +
               "Actual Startup Time": 10592.239,                                                                                                                        +
               "Actual Total Time": 10592.373,                                                                                                                          +
               "Actual Rows": 838,                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                       +
               "Sort Key": ["mc.company_type_id"],                                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                              +
               "Sort Space Used": 136,                                                                                                                                  +
               "Sort Space Type": "Memory",                                                                                                                             +
               "Shared Hit Blocks": 226414,                                                                                                                             +
               "Shared Read Blocks": 169966,                                                                                                                            +
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
                   "Startup Cost": 19902.28,                                                                                                                            +
                   "Total Cost": 19902.28,                                                                                                                              +
                   "Plan Rows": 1,                                                                                                                                      +
                   "Plan Width": 52,                                                                                                                                    +
                   "Actual Startup Time": 10582.612,                                                                                                                    +
                   "Actual Total Time": 10582.846,                                                                                                                      +
                   "Actual Rows": 838,                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                   +
                   "Inner Unique": false,                                                                                                                               +
                   "Merge Cond": "(k.id = mk.keyword_id)",                                                                                                              +
                   "Shared Hit Blocks": 226410,                                                                                                                         +
                   "Shared Read Blocks": 169966,                                                                                                                        +
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
                       "Startup Cost": 6.13,                                                                                                                            +
                       "Total Cost": 6.13,                                                                                                                              +
                       "Plan Rows": 1,                                                                                                                                  +
                       "Plan Width": 4,                                                                                                                                 +
                       "Actual Startup Time": 22.776,                                                                                                                   +
                       "Actual Total Time": 22.776,                                                                                                                     +
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
                           "Actual Startup Time": 22.757,                                                                                                               +
                           "Actual Total Time": 22.759,                                                                                                                 +
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
                     },                                                                                                                                                 +
                     {                                                                                                                                                  +
                       "Node Type": "Sort",                                                                                                                             +
                       "Parent Relationship": "Inner",                                                                                                                  +
                       "Parallel Aware": false,                                                                                                                         +
                       "Startup Cost": 19896.15,                                                                                                                        +
                       "Total Cost": 19896.15,                                                                                                                          +
                       "Plan Rows": 2,                                                                                                                                  +
                       "Plan Width": 56,                                                                                                                                +
                       "Actual Startup Time": 10559.358,                                                                                                                +
                       "Actual Total Time": 10559.536,                                                                                                                  +
                       "Actual Rows": 3344,                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                               +
                       "Sort Key": ["mk.keyword_id"],                                                                                                                   +
                       "Sort Method": "quicksort",                                                                                                                      +
                       "Sort Space Used": 1966,                                                                                                                         +
                       "Sort Space Type": "Memory",                                                                                                                     +
                       "Shared Hit Blocks": 226410,                                                                                                                     +
                       "Shared Read Blocks": 169962,                                                                                                                    +
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
                           "Startup Cost": 19041.71,                                                                                                                    +
                           "Total Cost": 19896.15,                                                                                                                      +
                           "Plan Rows": 2,                                                                                                                              +
                           "Plan Width": 56,                                                                                                                            +
                           "Actual Startup Time": 10468.919,                                                                                                            +
                           "Actual Total Time": 10554.756,                                                                                                              +
                           "Actual Rows": 12100,                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                           +
                           "Inner Unique": false,                                                                                                                       +
                           "Merge Cond": "(mk.movie_id = ml.movie_id)",                                                                                                 +
                           "Shared Hit Blocks": 226410,                                                                                                                 +
                           "Shared Read Blocks": 169962,                                                                                                                +
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
                               "Actual Startup Time": 0.032,                                                                                                            +
                               "Actual Total Time": 109.452,                                                                                                            +
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
                               "Startup Cost": 19041.70,                                                                                                                +
                               "Total Cost": 19041.70,                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                          +
                               "Plan Width": 72,                                                                                                                        +
                               "Actual Startup Time": 10420.563,                                                                                                        +
                               "Actual Total Time": 10421.498,                                                                                                          +
                               "Actual Rows": 12092,                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                       +
                               "Shared Hit Blocks": 226149,                                                                                                             +
                               "Shared Read Blocks": 169395,                                                                                                            +
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
                                   "Startup Cost": 19041.70,                                                                                                            +
                                   "Total Cost": 19041.70,                                                                                                              +
                                   "Plan Rows": 1,                                                                                                                      +
                                   "Plan Width": 72,                                                                                                                    +
                                   "Actual Startup Time": 10420.554,                                                                                                    +
                                   "Actual Total Time": 10420.663,                                                                                                      +
                                   "Actual Rows": 1247,                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                   +
                                   "Sort Key": ["t.id"],                                                                                                                +
                                   "Sort Method": "quicksort",                                                                                                          +
                                   "Sort Space Used": 224,                                                                                                              +
                                   "Sort Space Type": "Memory",                                                                                                         +
                                   "Shared Hit Blocks": 226149,                                                                                                         +
                                   "Shared Read Blocks": 169395,                                                                                                        +
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
                                       "Startup Cost": 19034.06,                                                                                                        +
                                       "Total Cost": 19041.70,                                                                                                          +
                                       "Plan Rows": 1,                                                                                                                  +
                                       "Plan Width": 72,                                                                                                                +
                                       "Actual Startup Time": 10410.493,                                                                                                +
                                       "Actual Total Time": 10419.708,                                                                                                  +
                                       "Actual Rows": 1247,                                                                                                             +
                                       "Actual Loops": 1,                                                                                                               +
                                       "Inner Unique": false,                                                                                                           +
                                       "Merge Cond": "(cn.id = mc.company_id)",                                                                                         +
                                       "Shared Hit Blocks": 226149,                                                                                                     +
                                       "Shared Read Blocks": 169395,                                                                                                    +
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
                                           "Actual Startup Time": 169.344,                                                                                              +
                                           "Actual Total Time": 172.438,                                                                                                +
                                           "Actual Rows": 14178,                                                                                                        +
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
                                               "Actual Startup Time": 22.741,                                                                                           +
                                               "Actual Total Time": 144.547,                                                                                            +
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
                                           "Startup Cost": 18750.19,                                                                                                    +
                                           "Total Cost": 18750.19,                                                                                                      +
                                           "Plan Rows": 1,                                                                                                              +
                                           "Plan Width": 57,                                                                                                            +
                                           "Actual Startup Time": 10241.136,                                                                                            +
                                           "Actual Total Time": 10241.657,                                                                                              +
                                           "Actual Rows": 3113,                                                                                                         +
                                           "Actual Loops": 1,                                                                                                           +
                                           "Sort Key": ["mc.company_id"],                                                                                               +
                                           "Sort Method": "quicksort",                                                                                                  +
                                           "Sort Space Used": 528,                                                                                                      +
                                           "Sort Space Type": "Memory",                                                                                                 +
                                           "Shared Hit Blocks": 226147,                                                                                                 +
                                           "Shared Read Blocks": 166403,                                                                                                +
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
                                               "Startup Cost": 16140.48,                                                                                                +
                                               "Total Cost": 18750.19,                                                                                                  +
                                               "Plan Rows": 1,                                                                                                          +
                                               "Plan Width": 57,                                                                                                        +
                                               "Actual Startup Time": 9995.286,                                                                                         +
                                               "Actual Total Time": 10238.245,                                                                                          +
                                               "Actual Rows": 3113,                                                                                                     +
                                               "Actual Loops": 1,                                                                                                       +
                                               "Inner Unique": false,                                                                                                   +
                                               "Merge Cond": "(ml.movie_id = mc.movie_id)",                                                                             +
                                               "Shared Hit Blocks": 226147,                                                                                             +
                                               "Shared Read Blocks": 166403,                                                                                            +
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
                                                   "Node Type": "Merge Join",                                                                                           +
                                                   "Parent Relationship": "Outer",                                                                                      +
                                                   "Parallel Aware": false,                                                                                             +
                                                   "Join Type": "Inner",                                                                                                +
                                                   "Startup Cost": 16140.46,                                                                                            +
                                                   "Total Cost": 16145.51,                                                                                              +
                                                   "Plan Rows": 1,                                                                                                      +
                                                   "Plan Width": 45,                                                                                                    +
                                                   "Actual Startup Time": 9936.533,                                                                                     +
                                                   "Actual Total Time": 9947.700,                                                                                       +
                                                   "Actual Rows": 500,                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                   +
                                                   "Inner Unique": false,                                                                                               +
                                                   "Merge Cond": "(ml.movie_id = mi.movie_id)",                                                                         +
                                                   "Shared Hit Blocks": 187463,                                                                                         +
                                                   "Shared Read Blocks": 165590,                                                                                        +
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
                                                       "Node Type": "Sort",                                                                                             +
                                                       "Parent Relationship": "Outer",                                                                                  +
                                                       "Parallel Aware": false,                                                                                         +
                                                       "Startup Cost": 1967.38,                                                                                         +
                                                       "Total Cost": 1967.38,                                                                                           +
                                                       "Plan Rows": 4,                                                                                                  +
                                                       "Plan Width": 41,                                                                                                +
                                                       "Actual Startup Time": 950.830,                                                                                  +
                                                       "Actual Total Time": 950.889,                                                                                    +
                                                       "Actual Rows": 228,                                                                                              +
                                                       "Actual Loops": 1,                                                                                               +
                                                       "Sort Key": ["t.id"],                                                                                            +
                                                       "Sort Method": "quicksort",                                                                                      +
                                                       "Sort Space Used": 44,                                                                                           +
                                                       "Sort Space Type": "Memory",                                                                                     +
                                                       "Shared Hit Blocks": 187461,                                                                                     +
                                                       "Shared Read Blocks": 3700,                                                                                      +
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
                                                           "Node Type": "Merge Join",                                                                                   +
                                                           "Parent Relationship": "Outer",                                                                              +
                                                           "Parallel Aware": false,                                                                                     +
                                                           "Join Type": "Inner",                                                                                        +
                                                           "Startup Cost": 1967.38,                                                                                     +
                                                           "Total Cost": 1967.38,                                                                                       +
                                                           "Plan Rows": 4,                                                                                              +
                                                           "Plan Width": 41,                                                                                            +
                                                           "Actual Startup Time": 950.704,                                                                              +
                                                           "Actual Total Time": 950.762,                                                                                +
                                                           "Actual Rows": 228,                                                                                          +
                                                           "Actual Loops": 1,                                                                                           +
                                                           "Inner Unique": false,                                                                                       +
                                                           "Merge Cond": "(cct1.id = cc.subject_id)",                                                                   +
                                                           "Shared Hit Blocks": 187461,                                                                                 +
                                                           "Shared Read Blocks": 3700,                                                                                  +
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
                                                               "Node Type": "Sort",                                                                                     +
                                                               "Parent Relationship": "Outer",                                                                          +
                                                               "Parallel Aware": false,                                                                                 +
                                                               "Startup Cost": 0.03,                                                                                    +
                                                               "Total Cost": 0.03,                                                                                      +
                                                               "Plan Rows": 1,                                                                                          +
                                                               "Plan Width": 4,                                                                                         +
                                                               "Actual Startup Time": 0.012,                                                                            +
                                                               "Actual Total Time": 0.012,                                                                              +
                                                               "Actual Rows": 1,                                                                                        +
                                                               "Actual Loops": 1,                                                                                       +
                                                               "Sort Key": ["cct1.id"],                                                                                 +
                                                               "Sort Method": "quicksort",                                                                              +
                                                               "Sort Space Used": 25,                                                                                   +
                                                               "Sort Space Type": "Memory",                                                                             +
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
                                                                   "Relation Name": "comp_cast_type",                                                                   +
                                                                   "Alias": "cct1",                                                                                     +
                                                                   "Startup Cost": 0.00,                                                                                +
                                                                   "Total Cost": 0.03,                                                                                  +
                                                                   "Plan Rows": 1,                                                                                      +
                                                                   "Plan Width": 4,                                                                                     +
                                                                   "Actual Startup Time": 0.008,                                                                        +
                                                                   "Actual Total Time": 0.009,                                                                          +
                                                                   "Actual Rows": 1,                                                                                    +
                                                                   "Actual Loops": 1,                                                                                   +
                                                                   "Filter": "((kind)::text = 'cast'::text)",                                                           +
                                                                   "Rows Removed by Filter": 3,                                                                         +
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
                                                             },                                                                                                         +
                                                             {                                                                                                          +
                                                               "Node Type": "Sort",                                                                                     +
                                                               "Parent Relationship": "Inner",                                                                          +
                                                               "Parallel Aware": false,                                                                                 +
                                                               "Startup Cost": 1967.35,                                                                                 +
                                                               "Total Cost": 1967.35,                                                                                   +
                                                               "Plan Rows": 17,                                                                                         +
                                                               "Plan Width": 45,                                                                                        +
                                                               "Actual Startup Time": 950.689,                                                                          +
                                                               "Actual Total Time": 950.699,                                                                            +
                                                               "Actual Rows": 229,                                                                                      +
                                                               "Actual Loops": 1,                                                                                       +
                                                               "Sort Key": ["cc.subject_id"],                                                                           +
                                                               "Sort Method": "quicksort",                                                                              +
                                                               "Sort Space Used": 48,                                                                                   +
                                                               "Sort Space Type": "Memory",                                                                             +
                                                               "Shared Hit Blocks": 187460,                                                                             +
                                                               "Shared Read Blocks": 3700,                                                                              +
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
                                                                   "Startup Cost": 1967.33,                                                                             +
                                                                   "Total Cost": 1967.34,                                                                               +
                                                                   "Plan Rows": 17,                                                                                     +
                                                                   "Plan Width": 45,                                                                                    +
                                                                   "Actual Startup Time": 950.546,                                                                      +
                                                                   "Actual Total Time": 950.618,                                                                        +
                                                                   "Actual Rows": 257,                                                                                  +
                                                                   "Actual Loops": 1,                                                                                   +
                                                                   "Inner Unique": false,                                                                               +
                                                                   "Merge Cond": "(cct2.id = cc.status_id)",                                                            +
                                                                   "Shared Hit Blocks": 187460,                                                                         +
                                                                   "Shared Read Blocks": 3700,                                                                          +
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
                                                                       "Startup Cost": 0.03,                                                                            +
                                                                       "Total Cost": 0.03,                                                                              +
                                                                       "Plan Rows": 1,                                                                                  +
                                                                       "Plan Width": 4,                                                                                 +
                                                                       "Actual Startup Time": 0.009,                                                                    +
                                                                       "Actual Total Time": 0.009,                                                                      +
                                                                       "Actual Rows": 2,                                                                                +
                                                                       "Actual Loops": 1,                                                                               +
                                                                       "Sort Key": ["cct2.id"],                                                                         +
                                                                       "Sort Method": "quicksort",                                                                      +
                                                                       "Sort Space Used": 25,                                                                           +
                                                                       "Sort Space Type": "Memory",                                                                     +
                                                                       "Shared Hit Blocks": 1,                                                                          +
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
                                                                           "Relation Name": "comp_cast_type",                                                           +
                                                                           "Alias": "cct2",                                                                             +
                                                                           "Startup Cost": 0.00,                                                                        +
                                                                           "Total Cost": 0.03,                                                                          +
                                                                           "Plan Rows": 1,                                                                              +
                                                                           "Plan Width": 4,                                                                             +
                                                                           "Actual Startup Time": 0.006,                                                                +
                                                                           "Actual Total Time": 0.007,                                                                  +
                                                                           "Actual Rows": 2,                                                                            +
                                                                           "Actual Loops": 1,                                                                           +
                                                                           "Filter": "((kind)::text ~~ 'complete%'::text)",                                             +
                                                                           "Rows Removed by Filter": 2,                                                                 +
                                                                           "Shared Hit Blocks": 1,                                                                      +
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
                                                                     },                                                                                                 +
                                                                     {                                                                                                  +
                                                                       "Node Type": "Sort",                                                                             +
                                                                       "Parent Relationship": "Inner",                                                                  +
                                                                       "Parallel Aware": false,                                                                         +
                                                                       "Startup Cost": 1967.29,                                                                         +
                                                                       "Total Cost": 1967.30,                                                                           +
                                                                       "Plan Rows": 67,                                                                                 +
                                                                       "Plan Width": 49,                                                                                +
                                                                       "Actual Startup Time": 950.532,                                                                  +
                                                                       "Actual Total Time": 950.546,                                                                    +
                                                                       "Actual Rows": 257,                                                                              +
                                                                       "Actual Loops": 1,                                                                               +
                                                                       "Sort Key": ["cc.status_id"],                                                                    +
                                                                       "Sort Method": "quicksort",                                                                      +
                                                                       "Sort Space Used": 49,                                                                           +
                                                                       "Sort Space Type": "Memory",                                                                     +
                                                                       "Shared Hit Blocks": 187459,                                                                     +
                                                                       "Shared Read Blocks": 3700,                                                                      +
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
                                                                           "Startup Cost": 86.85,                                                                       +
                                                                           "Total Cost": 1967.23,                                                                       +
                                                                           "Plan Rows": 67,                                                                             +
                                                                           "Plan Width": 49,                                                                            +
                                                                           "Actual Startup Time": 736.524,                                                              +
                                                                           "Actual Total Time": 950.396,                                                                +
                                                                           "Actual Rows": 257,                                                                          +
                                                                           "Actual Loops": 1,                                                                           +
                                                                           "Inner Unique": false,                                                                       +
                                                                           "Merge Cond": "(ml.movie_id = cc.movie_id)",                                                 +
                                                                           "Shared Hit Blocks": 187459,                                                                 +
                                                                           "Shared Read Blocks": 3700,                                                                  +
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
                                                                               "Startup Cost": 84.06,                                                                   +
                                                                               "Total Cost": 1820.89,                                                                   +
                                                                               "Plan Rows": 1252,                                                                       +
                                                                               "Plan Width": 37,                                                                        +
                                                                               "Actual Startup Time": 376.167,                                                          +
                                                                               "Actual Total Time": 904.437,                                                            +
                                                                               "Actual Rows": 2248,                                                                     +
                                                                               "Actual Loops": 1,                                                                       +
                                                                               "Inner Unique": false,                                                                   +
                                                                               "Merge Cond": "(t.id = ml.movie_id)",                                                    +
                                                                               "Shared Hit Blocks": 183181,                                                             +
                                                                               "Shared Read Blocks": 3600,                                                              +
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
                                                                                   "Node Type": "Index Scan",                                                           +
                                                                                   "Parent Relationship": "Outer",                                                      +
                                                                                   "Parallel Aware": false,                                                             +
                                                                                   "Scan Direction": "Forward",                                                         +
                                                                                   "Index Name": "title_idx_id",                                                        +
                                                                                   "Relation Name": "title",                                                            +
                                                                                   "Alias": "t",                                                                        +
                                                                                   "Startup Cost": 0.01,                                                                +
                                                                                   "Total Cost": 23434.65,                                                              +
                                                                                   "Plan Rows": 1900368,                                                                +
                                                                                   "Plan Width": 21,                                                                    +
                                                                                   "Actual Startup Time": 0.016,                                                        +
                                                                                   "Actual Total Time": 835.389,                                                        +
                                                                                   "Actual Rows": 145332,                                                               +
                                                                                   "Actual Loops": 1,                                                                   +
                                                                                   "Filter": "((production_year >= 1950) AND (production_year <= 2010))",               +
                                                                                   "Rows Removed by Filter": 40844,                                                     +
                                                                                   "Shared Hit Blocks": 183178,                                                         +
                                                                                   "Shared Read Blocks": 3439,                                                          +
                                                                                   "Shared Dirtied Blocks": 0,                                                          +
                                                                                   "Shared Written Blocks": 0,                                                          +
                                                                                   "Local Hit Blocks": 0,                                                               +
                                                                                   "Local Read Blocks": 0,                                                              +
                                                                                   "Local Dirtied Blocks": 0,                                                           +
                                                                                   "Local Written Blocks": 0,                                                           +
                                                                                   "Temp Read Blocks": 0,                                                               +
                                                                                   "Temp Written Blocks": 0                                                             +
                                                                                 },                                                                                     +
                                                                                 {                                                                                      +
                                                                                   "Node Type": "Sort",                                                                 +
                                                                                   "Parent Relationship": "Inner",                                                      +
                                                                                   "Parallel Aware": false,                                                             +
                                                                                   "Startup Cost": 84.04,                                                               +
                                                                                   "Total Cost": 84.17,                                                                 +
                                                                                   "Plan Rows": 1666,                                                                   +
                                                                                   "Plan Width": 16,                                                                    +
                                                                                   "Actual Startup Time": 51.107,                                                       +
                                                                                   "Actual Total Time": 51.439,                                                         +
                                                                                   "Actual Rows": 2315,                                                                 +
                                                                                   "Actual Loops": 1,                                                                   +
                                                                                   "Sort Key": ["ml.movie_id"],                                                         +
                                                                                   "Sort Method": "quicksort",                                                          +
                                                                                   "Sort Space Used": 205,                                                              +
                                                                                   "Sort Space Type": "Memory",                                                         +
                                                                                   "Shared Hit Blocks": 3,                                                              +
                                                                                   "Shared Read Blocks": 161,                                                           +
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
                                                                                       "Startup Cost": 76.50,                                                           +
                                                                                       "Total Cost": 81.27,                                                             +
                                                                                       "Plan Rows": 1666,                                                               +
                                                                                       "Plan Width": 16,                                                                +
                                                                                       "Actual Startup Time": 49.053,                                                   +
                                                                                       "Actual Total Time": 50.044,                                                     +
                                                                                       "Actual Rows": 2315,                                                             +
                                                                                       "Actual Loops": 1,                                                               +
                                                                                       "Inner Unique": false,                                                           +
                                                                                       "Merge Cond": "(lt.id = ml.link_type_id)",                                       +
                                                                                       "Shared Hit Blocks": 3,                                                          +
                                                                                       "Shared Read Blocks": 161,                                                       +
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
                                                                                           "Node Type": "Sort",                                                         +
                                                                                           "Parent Relationship": "Outer",                                              +
                                                                                           "Parallel Aware": false,                                                     +
                                                                                           "Startup Cost": 0.03,                                                        +
                                                                                           "Total Cost": 0.03,                                                          +
                                                                                           "Plan Rows": 1,                                                              +
                                                                                           "Plan Width": 16,                                                            +
                                                                                           "Actual Startup Time": 0.010,                                                +
                                                                                           "Actual Total Time": 0.011,                                                  +
                                                                                           "Actual Rows": 2,                                                            +
                                                                                           "Actual Loops": 1,                                                           +
                                                                                           "Sort Key": ["lt.id"],                                                       +
                                                                                           "Sort Method": "quicksort",                                                  +
                                                                                           "Sort Space Used": 25,                                                       +
                                                                                           "Sort Space Type": "Memory",                                                 +
                                                                                           "Shared Hit Blocks": 1,                                                      +
                                                                                           "Shared Read Blocks": 0,                                                     +
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
                                                                                               "Node Type": "Seq Scan",                                                 +
                                                                                               "Parent Relationship": "Outer",                                          +
                                                                                               "Parallel Aware": false,                                                 +
                                                                                               "Relation Name": "link_type",                                            +
                                                                                               "Alias": "lt",                                                           +
                                                                                               "Startup Cost": 0.00,                                                    +
                                                                                               "Total Cost": 0.03,                                                      +
                                                                                               "Plan Rows": 1,                                                          +
                                                                                               "Plan Width": 16,                                                        +
                                                                                               "Actual Startup Time": 0.004,                                            +
                                                                                               "Actual Total Time": 0.008,                                              +
                                                                                               "Actual Rows": 2,                                                        +
                                                                                               "Actual Loops": 1,                                                       +
                                                                                               "Filter": "((link)::text ~~ '%follow%'::text)",                          +
                                                                                               "Rows Removed by Filter": 16,                                            +
                                                                                               "Shared Hit Blocks": 1,                                                  +
                                                                                               "Shared Read Blocks": 0,                                                 +
                                                                                               "Shared Dirtied Blocks": 0,                                              +
                                                                                               "Shared Written Blocks": 0,                                              +
                                                                                               "Local Hit Blocks": 0,                                                   +
                                                                                               "Local Read Blocks": 0,                                                  +
                                                                                               "Local Dirtied Blocks": 0,                                               +
                                                                                               "Local Written Blocks": 0,                                               +
                                                                                               "Temp Read Blocks": 0,                                                   +
                                                                                               "Temp Written Blocks": 0                                                 +
                                                                                             }                                                                          +
                                                                                           ]                                                                            +
                                                                                         },                                                                             +
                                                                                         {                                                                              +
                                                                                           "Node Type": "Sort",                                                         +
                                                                                           "Parent Relationship": "Inner",                                              +
                                                                                           "Parallel Aware": false,                                                     +
                                                                                           "Startup Cost": 76.46,                                                       +
                                                                                           "Total Cost": 78.79,                                                         +
                                                                                           "Plan Rows": 29997,                                                          +
                                                                                           "Plan Width": 8,                                                             +
                                                                                           "Actual Startup Time": 49.036,                                               +
                                                                                           "Actual Total Time": 49.260,                                                 +
                                                                                           "Actual Rows": 2316,                                                         +
                                                                                           "Actual Loops": 1,                                                           +
                                                                                           "Sort Key": ["ml.link_type_id"],                                             +
                                                                                           "Sort Method": "quicksort",                                                  +
                                                                                           "Sort Space Used": 2175,                                                     +
                                                                                           "Sort Space Type": "Memory",                                                 +
                                                                                           "Shared Hit Blocks": 2,                                                      +
                                                                                           "Shared Read Blocks": 161,                                                   +
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
                                                                                               "Node Type": "Seq Scan",                                                 +
                                                                                               "Parent Relationship": "Outer",                                          +
                                                                                               "Parallel Aware": false,                                                 +
                                                                                               "Relation Name": "movie_link",                                           +
                                                                                               "Alias": "ml",                                                           +
                                                                                               "Startup Cost": 0.00,                                                    +
                                                                                               "Total Cost": 7.19,                                                      +
                                                                                               "Plan Rows": 29997,                                                      +
                                                                                               "Plan Width": 8,                                                         +
                                                                                               "Actual Startup Time": 0.005,                                            +
                                                                                               "Actual Total Time": 36.230,                                             +
                                                                                               "Actual Rows": 29997,                                                    +
                                                                                               "Actual Loops": 1,                                                       +
                                                                                               "Shared Hit Blocks": 2,                                                  +
                                                                                               "Shared Read Blocks": 161,                                               +
                                                                                               "Shared Dirtied Blocks": 0,                                              +
                                                                                               "Shared Written Blocks": 0,                                              +
                                                                                               "Local Hit Blocks": 0,                                                   +
                                                                                               "Local Read Blocks": 0,                                                  +
                                                                                               "Local Dirtied Blocks": 0,                                               +
                                                                                               "Local Written Blocks": 0,                                               +
                                                                                               "Temp Read Blocks": 0,                                                   +
                                                                                               "Temp Written Blocks": 0                                                 +
                                                                                             }                                                                          +
                                                                                           ]                                                                            +
                                                                                         }                                                                              +
                                                                                       ]                                                                                +
                                                                                     }                                                                                  +
                                                                                   ]                                                                                    +
                                                                                 }                                                                                      +
                                                                               ]                                                                                        +
                                                                             },                                                                                         +
                                                                             {                                                                                          +
                                                                               "Node Type": "Index Scan",                                                               +
                                                                               "Parent Relationship": "Inner",                                                          +
                                                                               "Parallel Aware": false,                                                                 +
                                                                               "Scan Direction": "Forward",                                                             +
                                                                               "Index Name": "movie_id_complete_cast",                                                  +
                                                                               "Relation Name": "complete_cast",                                                        +
                                                                               "Alias": "cc",                                                                           +
                                                                               "Startup Cost": 0.01,                                                                    +
                                                                               "Total Cost": 3283.51,                                                                   +
                                                                               "Plan Rows": 135086,                                                                     +
                                                                               "Plan Width": 12,                                                                        +
                                                                               "Actual Startup Time": 0.021,                                                            +
                                                                               "Actual Total Time": 44.486,                                                             +
                                                                               "Actual Rows": 6169,                                                                     +
                                                                               "Actual Loops": 1,                                                                       +
                                                                               "Shared Hit Blocks": 4278,                                                               +
                                                                               "Shared Read Blocks": 100,                                                               +
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
                                                                         }                                                                                              +
                                                                       ]                                                                                                +
                                                                     }                                                                                                  +
                                                                   ]                                                                                                    +
                                                                 }                                                                                                      +
                                                               ]                                                                                                        +
                                                             }                                                                                                          +
                                                           ]                                                                                                            +
                                                         }                                                                                                              +
                                                       ]                                                                                                                +
                                                     },                                                                                                                 +
                                                     {                                                                                                                  +
                                                       "Node Type": "Sort",                                                                                             +
                                                       "Parent Relationship": "Inner",                                                                                  +
                                                       "Parallel Aware": false,                                                                                         +
                                                       "Startup Cost": 14173.08,                                                                                        +
                                                       "Total Cost": 14245.82,                                                                                          +
                                                       "Plan Rows": 936891,                                                                                             +
                                                       "Plan Width": 4,                                                                                                 +
                                                       "Actual Startup Time": 8985.421,                                                                                 +
                                                       "Actual Total Time": 8989.069,                                                                                   +
                                                       "Actual Rows": 28670,                                                                                            +
                                                       "Actual Loops": 1,                                                                                               +
                                                       "Sort Key": ["mi.movie_id"],                                                                                     +
                                                       "Sort Method": "quicksort",                                                                                      +
                                                       "Sort Space Used": 68462,                                                                                        +
                                                       "Sort Space Type": "Memory",                                                                                     +
                                                       "Shared Hit Blocks": 2,                                                                                          +
                                                       "Shared Read Blocks": 161890,                                                                                    +
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
                                                           "Node Type": "Seq Scan",                                                                                     +
                                                           "Parent Relationship": "Outer",                                                                              +
                                                           "Parallel Aware": false,                                                                                     +
                                                           "Relation Name": "movie_info",                                                                               +
                                                           "Alias": "mi",                                                                                               +
                                                           "Startup Cost": 0.00,                                                                                        +
                                                           "Total Cost": 11287.12,                                                                                      +
                                                           "Plan Rows": 936891,                                                                                         +
                                                           "Plan Width": 4,                                                                                             +
                                                           "Actual Startup Time": 31.166,                                                                               +
                                                           "Actual Total Time": 8665.170,                                                                               +
                                                           "Actual Rows": 936223,                                                                                       +
                                                           "Actual Loops": 1,                                                                                           +
                                                           "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))",+
                                                           "Rows Removed by Filter": 13899497,                                                                          +
                                                           "Shared Hit Blocks": 2,                                                                                      +
                                                           "Shared Read Blocks": 161890,                                                                                +
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
                                                     }                                                                                                                  +
                                                   ]                                                                                                                    +
                                                 },                                                                                                                     +
                                                 {                                                                                                                      +
                                                   "Node Type": "Index Scan",                                                                                           +
                                                   "Parent Relationship": "Inner",                                                                                      +
                                                   "Parallel Aware": false,                                                                                             +
                                                   "Scan Direction": "Forward",                                                                                         +
                                                   "Index Name": "movie_id_movie_companies",                                                                            +
                                                   "Relation Name": "movie_companies",                                                                                  +
                                                   "Alias": "mc",                                                                                                       +
                                                   "Startup Cost": 0.01,                                                                                                +
                                                   "Total Cost": 67925.24,                                                                                              +
                                                   "Plan Rows": 1271989,                                                                                                +
                                                   "Plan Width": 12,                                                                                                    +
                                                   "Actual Startup Time": 18.814,                                                                                       +
                                                   "Actual Total Time": 276.760,                                                                                        +
                                                   "Actual Rows": 44097,                                                                                                +
                                                   "Actual Loops": 1,                                                                                                   +
                                                   "Filter": "(note IS NULL)",                                                                                          +
                                                   "Rows Removed by Filter": 42193,                                                                                     +
                                                   "Shared Hit Blocks": 38684,                                                                                          +
                                                   "Shared Read Blocks": 813,                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                          +
                                                   "Shared Written Blocks": 0,                                                                                          +
                                                   "Local Hit Blocks": 0,                                                                                               +
                                                   "Local Read Blocks": 0,                                                                                              +
                                                   "Local Dirtied Blocks": 0,                                                                                           +
                                                   "Local Written Blocks": 0,                                                                                           +
                                                   "Temp Read Blocks": 0,                                                                                               +
                                                   "Temp Written Blocks": 0                                                                                             +
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
                     }                                                                                                                                                  +
                   ]                                                                                                                                                    +
                 }                                                                                                                                                      +
               ]                                                                                                                                                        +
             },                                                                                                                                                         +
             {                                                                                                                                                          +
               "Node Type": "Sort",                                                                                                                                     +
               "Parent Relationship": "Inner",                                                                                                                          +
               "Parallel Aware": false,                                                                                                                                 +
               "Startup Cost": 0.03,                                                                                                                                    +
               "Total Cost": 0.03,                                                                                                                                      +
               "Plan Rows": 1,                                                                                                                                          +
               "Plan Width": 4,                                                                                                                                         +
               "Actual Startup Time": 0.021,                                                                                                                            +
               "Actual Total Time": 0.021,                                                                                                                              +
               "Actual Rows": 1,                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                       +
               "Sort Key": ["ct.id"],                                                                                                                                   +
               "Sort Method": "quicksort",                                                                                                                              +
               "Sort Space Used": 25,                                                                                                                                   +
               "Sort Space Type": "Memory",                                                                                                                             +
               "Shared Hit Blocks": 1,                                                                                                                                  +
               "Shared Read Blocks": 0,                                                                                                                                 +
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
                   "Node Type": "Seq Scan",                                                                                                                             +
                   "Parent Relationship": "Outer",                                                                                                                      +
                   "Parallel Aware": false,                                                                                                                             +
                   "Relation Name": "company_type",                                                                                                                     +
                   "Alias": "ct",                                                                                                                                       +
                   "Startup Cost": 0.00,                                                                                                                                +
                   "Total Cost": 0.03,                                                                                                                                  +
                   "Plan Rows": 1,                                                                                                                                      +
                   "Plan Width": 4,                                                                                                                                     +
                   "Actual Startup Time": 0.012,                                                                                                                        +
                   "Actual Total Time": 0.014,                                                                                                                          +
                   "Actual Rows": 1,                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                   +
                   "Filter": "((kind)::text = 'production companies'::text)",                                                                                           +
                   "Rows Removed by Filter": 3,                                                                                                                         +
                   "Shared Hit Blocks": 1,                                                                                                                              +
                   "Shared Read Blocks": 0,                                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                                          +
                   "Shared Written Blocks": 0,                                                                                                                          +
                   "Local Hit Blocks": 0,                                                                                                                               +
                   "Local Read Blocks": 0,                                                                                                                              +
                   "Local Dirtied Blocks": 0,                                                                                                                           +
                   "Local Written Blocks": 0,                                                                                                                           +
                   "Temp Read Blocks": 0,                                                                                                                               +
                   "Temp Written Blocks": 0                                                                                                                             +
                 }                                                                                                                                                      +
               ]                                                                                                                                                        +
             }                                                                                                                                                          +
           ]                                                                                                                                                            +
         }                                                                                                                                                              +
       ]                                                                                                                                                                +
     },                                                                                                                                                                 +
     "Planning Time": 11474.613,                                                                                                                                        +
     "Triggers": [                                                                                                                                                      +
     ],                                                                                                                                                                 +
     "Execution Time": 10646.199                                                                                                                                        +
   }                                                                                                                                                                    +
 ]
(1 row)

