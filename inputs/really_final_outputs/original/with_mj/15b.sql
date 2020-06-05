                                                               QUERY PLAN                                                                
-----------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                      +
   {                                                                                                                                    +
     "Plan": {                                                                                                                          +
       "Node Type": "Aggregate",                                                                                                        +
       "Strategy": "Plain",                                                                                                             +
       "Partial Mode": "Simple",                                                                                                        +
       "Parallel Aware": false,                                                                                                         +
       "Startup Cost": 32639.67,                                                                                                        +
       "Total Cost": 32639.67,                                                                                                          +
       "Plan Rows": 1,                                                                                                                  +
       "Plan Width": 64,                                                                                                                +
       "Actual Startup Time": 14833.775,                                                                                                +
       "Actual Total Time": 14833.775,                                                                                                  +
       "Actual Rows": 1,                                                                                                                +
       "Actual Loops": 1,                                                                                                               +
       "Shared Hit Blocks": 19,                                                                                                         +
       "Shared Read Blocks": 248265,                                                                                                    +
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
           "Node Type": "Merge Join",                                                                                                   +
           "Parent Relationship": "Outer",                                                                                              +
           "Parallel Aware": false,                                                                                                     +
           "Join Type": "Inner",                                                                                                        +
           "Startup Cost": 32639.67,                                                                                                    +
           "Total Cost": 32639.67,                                                                                                      +
           "Plan Rows": 4,                                                                                                              +
           "Plan Width": 59,                                                                                                            +
           "Actual Startup Time": 14833.730,                                                                                            +
           "Actual Total Time": 14833.741,                                                                                              +
           "Actual Rows": 37,                                                                                                           +
           "Actual Loops": 1,                                                                                                           +
           "Inner Unique": true,                                                                                                        +
           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                  +
           "Shared Hit Blocks": 19,                                                                                                     +
           "Shared Read Blocks": 248265,                                                                                                +
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
               "Node Type": "Sort",                                                                                                     +
               "Parent Relationship": "Outer",                                                                                          +
               "Parallel Aware": false,                                                                                                 +
               "Startup Cost": 32639.62,                                                                                                +
               "Total Cost": 32639.62,                                                                                                  +
               "Plan Rows": 4,                                                                                                          +
               "Plan Width": 63,                                                                                                        +
               "Actual Startup Time": 14833.696,                                                                                        +
               "Actual Total Time": 14833.698,                                                                                          +
               "Actual Rows": 37,                                                                                                       +
               "Actual Loops": 1,                                                                                                       +
               "Sort Key": ["mi.info_type_id"],                                                                                         +
               "Sort Method": "quicksort",                                                                                              +
               "Sort Space Used": 27,                                                                                                   +
               "Sort Space Type": "Memory",                                                                                             +
               "Shared Hit Blocks": 18,                                                                                                 +
               "Shared Read Blocks": 248265,                                                                                            +
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
                   "Startup Cost": 32618.78,                                                                                            +
                   "Total Cost": 32639.62,                                                                                              +
                   "Plan Rows": 4,                                                                                                      +
                   "Plan Width": 63,                                                                                                    +
                   "Actual Startup Time": 14813.683,                                                                                    +
                   "Actual Total Time": 14833.522,                                                                                      +
                   "Actual Rows": 37,                                                                                                   +
                   "Actual Loops": 1,                                                                                                   +
                   "Inner Unique": true,                                                                                                +
                   "Merge Cond": "(mk.keyword_id = k.id)",                                                                              +
                   "Shared Hit Blocks": 14,                                                                                             +
                   "Shared Read Blocks": 248265,                                                                                        +
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
                       "Startup Cost": 32224.86,                                                                                        +
                       "Total Cost": 32224.86,                                                                                          +
                       "Plan Rows": 4,                                                                                                  +
                       "Plan Width": 67,                                                                                                +
                       "Actual Startup Time": 14698.105,                                                                                +
                       "Actual Total Time": 14698.112,                                                                                  +
                       "Actual Rows": 37,                                                                                               +
                       "Actual Loops": 1,                                                                                               +
                       "Sort Key": ["mk.keyword_id"],                                                                                   +
                       "Sort Method": "quicksort",                                                                                      +
                       "Sort Space Used": 29,                                                                                           +
                       "Sort Space Type": "Memory",                                                                                     +
                       "Shared Hit Blocks": 12,                                                                                         +
                       "Shared Read Blocks": 247318,                                                                                    +
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
                           "Startup Cost": 31355.94,                                                                                    +
                           "Total Cost": 32224.86,                                                                                      +
                           "Plan Rows": 4,                                                                                              +
                           "Plan Width": 67,                                                                                            +
                           "Actual Startup Time": 14506.547,                                                                            +
                           "Actual Total Time": 14698.077,                                                                              +
                           "Actual Rows": 37,                                                                                           +
                           "Actual Loops": 1,                                                                                           +
                           "Inner Unique": false,                                                                                       +
                           "Merge Cond": "(t.id = at.movie_id)",                                                                        +
                           "Shared Hit Blocks": 12,                                                                                     +
                           "Shared Read Blocks": 247318,                                                                                +
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
                               "Startup Cost": 28878.57,                                                                                +
                               "Total Cost": 29692.24,                                                                                  +
                               "Plan Rows": 868,                                                                                        +
                               "Plan Width": 79,                                                                                        +
                               "Actual Startup Time": 12468.893,                                                                        +
                               "Actual Total Time": 13280.947,                                                                          +
                               "Actual Rows": 3585,                                                                                     +
                               "Actual Loops": 1,                                                                                       +
                               "Inner Unique": false,                                                                                   +
                               "Merge Cond": "(t.id = mk.movie_id)",                                                                    +
                               "Shared Hit Blocks": 6,                                                                                  +
                               "Shared Read Blocks": 222338,                                                                            +
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
                                   "Startup Cost": 12267.65,                                                                            +
                                   "Total Cost": 12378.83,                                                                              +
                                   "Plan Rows": 74,                                                                                     +
                                   "Plan Width": 71,                                                                                    +
                                   "Actual Startup Time": 10245.427,                                                                    +
                                   "Actual Total Time": 10431.313,                                                                      +
                                   "Actual Rows": 1503,                                                                                 +
                                   "Actual Loops": 1,                                                                                   +
                                   "Inner Unique": true,                                                                                +
                                   "Merge Cond": "(mi.movie_id = t.id)",                                                                +
                                   "Shared Hit Blocks": 3,                                                                              +
                                   "Shared Read Blocks": 197887,                                                                        +
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
                                       "Startup Cost": 8407.84,                                                                         +
                                       "Total Cost": 8407.86,                                                                           +
                                       "Plan Rows": 260,                                                                                +
                                       "Plan Width": 50,                                                                                +
                                       "Actual Startup Time": 8360.854,                                                                 +
                                       "Actual Total Time": 8361.023,                                                                   +
                                       "Actual Rows": 1676,                                                                             +
                                       "Actual Loops": 1,                                                                               +
                                       "Sort Key": ["mi.movie_id"],                                                                     +
                                       "Sort Method": "quicksort",                                                                      +
                                       "Sort Space Used": 187,                                                                          +
                                       "Sort Space Type": "Memory",                                                                     +
                                       "Shared Hit Blocks": 2,                                                                          +
                                       "Shared Read Blocks": 161890,                                                                    +
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
                                           "Relation Name": "movie_info",                                                               +
                                           "Alias": "mi",                                                                               +
                                           "Startup Cost": 0.00,                                                                        +
                                           "Total Cost": 8407.52,                                                                       +
                                           "Plan Rows": 260,                                                                            +
                                           "Plan Width": 50,                                                                            +
                                           "Actual Startup Time": 1520.269,                                                             +
                                           "Actual Total Time": 8359.035,                                                               +
                                           "Actual Rows": 1771,                                                                         +
                                           "Actual Loops": 1,                                                                           +
                                           "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",                 +
                                           "Rows Removed by Filter": 14833949,                                                          +
                                           "Shared Hit Blocks": 2,                                                                      +
                                           "Shared Read Blocks": 161890,                                                                +
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
                                       "Startup Cost": 3859.80,                                                                         +
                                       "Total Cost": 3915.41,                                                                           +
                                       "Plan Rows": 716259,                                                                             +
                                       "Plan Width": 21,                                                                                +
                                       "Actual Startup Time": 1884.513,                                                                 +
                                       "Actual Total Time": 1970.270,                                                                   +
                                       "Actual Rows": 700995,                                                                           +
                                       "Actual Loops": 1,                                                                               +
                                       "Sort Key": ["t.id"],                                                                            +
                                       "Sort Method": "quicksort",                                                                      +
                                       "Sort Space Used": 73961,                                                                        +
                                       "Sort Space Type": "Memory",                                                                     +
                                       "Shared Hit Blocks": 1,                                                                          +
                                       "Shared Read Blocks": 35997,                                                                     +
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
                                           "Total Cost": 1696.56,                                                                       +
                                           "Plan Rows": 716259,                                                                         +
                                           "Plan Width": 21,                                                                            +
                                           "Actual Startup Time": 23.837,                                                               +
                                           "Actual Total Time": 1437.870,                                                               +
                                           "Actual Rows": 716259,                                                                       +
                                           "Actual Loops": 1,                                                                           +
                                           "Filter": "((production_year >= 2005) AND (production_year <= 2010))",                       +
                                           "Rows Removed by Filter": 1812053,                                                           +
                                           "Shared Hit Blocks": 1,                                                                      +
                                           "Shared Read Blocks": 35997,                                                                 +
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
                                   "Startup Cost": 16610.92,                                                                            +
                                   "Total Cost": 16962.16,                                                                              +
                                   "Plan Rows": 4523930,                                                                                +
                                   "Plan Width": 8,                                                                                     +
                                   "Actual Startup Time": 2223.432,                                                                     +
                                   "Actual Total Time": 2444.718,                                                                       +
                                   "Actual Rows": 4265709,                                                                              +
                                   "Actual Loops": 1,                                                                                   +
                                   "Sort Key": ["mk.movie_id"],                                                                         +
                                   "Sort Method": "quicksort",                                                                          +
                                   "Sort Space Used": 408668,                                                                           +
                                   "Sort Space Type": "Memory",                                                                         +
                                   "Shared Hit Blocks": 3,                                                                              +
                                   "Shared Read Blocks": 24451,                                                                         +
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
                                       "Relation Name": "movie_keyword",                                                                +
                                       "Alias": "mk",                                                                                   +
                                       "Startup Cost": 0.00,                                                                            +
                                       "Total Cost": 1079.84,                                                                           +
                                       "Plan Rows": 4523930,                                                                            +
                                       "Plan Width": 8,                                                                                 +
                                       "Actual Startup Time": 0.013,                                                                    +
                                       "Actual Total Time": 837.881,                                                                    +
                                       "Actual Rows": 4523930,                                                                          +
                                       "Actual Loops": 1,                                                                               +
                                       "Shared Hit Blocks": 3,                                                                          +
                                       "Shared Read Blocks": 24451,                                                                     +
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
                             },                                                                                                         +
                             {                                                                                                          +
                               "Node Type": "Materialize",                                                                              +
                               "Parent Relationship": "Inner",                                                                          +
                               "Parallel Aware": false,                                                                                 +
                               "Startup Cost": 2477.38,                                                                                 +
                               "Total Cost": 2533.49,                                                                                   +
                               "Plan Rows": 1,                                                                                          +
                               "Plan Width": 8,                                                                                         +
                               "Actual Startup Time": 1335.306,                                                                         +
                               "Actual Total Time": 1416.783,                                                                           +
                               "Actual Rows": 58,                                                                                       +
                               "Actual Loops": 1,                                                                                       +
                               "Shared Hit Blocks": 6,                                                                                  +
                               "Shared Read Blocks": 24980,                                                                             +
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
                                   "Startup Cost": 2477.38,                                                                             +
                                   "Total Cost": 2533.49,                                                                               +
                                   "Plan Rows": 1,                                                                                      +
                                   "Plan Width": 8,                                                                                     +
                                   "Actual Startup Time": 1335.301,                                                                     +
                                   "Actual Total Time": 1416.762,                                                                       +
                                   "Actual Rows": 27,                                                                                   +
                                   "Actual Loops": 1,                                                                                   +
                                   "Inner Unique": false,                                                                               +
                                   "Merge Cond": "(mc.movie_id = at.movie_id)",                                                         +
                                   "Shared Hit Blocks": 6,                                                                              +
                                   "Shared Read Blocks": 24980,                                                                         +
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
                                       "Startup Cost": 1221.80,                                                                         +
                                       "Total Cost": 1221.80,                                                                           +
                                       "Plan Rows": 1,                                                                                  +
                                       "Plan Width": 4,                                                                                 +
                                       "Actual Startup Time": 949.142,                                                                  +
                                       "Actual Total Time": 949.188,                                                                    +
                                       "Actual Rows": 278,                                                                              +
                                       "Actual Loops": 1,                                                                               +
                                       "Sort Key": ["mc.movie_id"],                                                                     +
                                       "Sort Method": "quicksort",                                                                      +
                                       "Sort Space Used": 38,                                                                           +
                                       "Sort Space Type": "Memory",                                                                     +
                                       "Shared Hit Blocks": 4,                                                                          +
                                       "Shared Read Blocks": 18790,                                                                     +
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
                                           "Startup Cost": 1221.80,                                                                     +
                                           "Total Cost": 1221.80,                                                                       +
                                           "Plan Rows": 1,                                                                              +
                                           "Plan Width": 4,                                                                             +
                                           "Actual Startup Time": 949.000,                                                              +
                                           "Actual Total Time": 949.066,                                                                +
                                           "Actual Rows": 278,                                                                          +
                                           "Actual Loops": 1,                                                                           +
                                           "Inner Unique": true,                                                                        +
                                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                +
                                           "Shared Hit Blocks": 4,                                                                      +
                                           "Shared Read Blocks": 18790,                                                                 +
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
                                               "Node Type": "Sort",                                                                     +
                                               "Parent Relationship": "Outer",                                                          +
                                               "Parallel Aware": false,                                                                 +
                                               "Startup Cost": 1221.77,                                                                 +
                                               "Total Cost": 1221.77,                                                                   +
                                               "Plan Rows": 1,                                                                          +
                                               "Plan Width": 8,                                                                         +
                                               "Actual Startup Time": 948.982,                                                          +
                                               "Actual Total Time": 948.996,                                                            +
                                               "Actual Rows": 278,                                                                      +
                                               "Actual Loops": 1,                                                                       +
                                               "Sort Key": ["mc.company_type_id"],                                                      +
                                               "Sort Method": "quicksort",                                                              +
                                               "Sort Space Used": 38,                                                                   +
                                               "Sort Space Type": "Memory",                                                             +
                                               "Shared Hit Blocks": 3,                                                                  +
                                               "Shared Read Blocks": 18790,                                                             +
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
                                                   "Startup Cost": 1219.07,                                                             +
                                                   "Total Cost": 1221.77,                                                               +
                                                   "Plan Rows": 1,                                                                      +
                                                   "Plan Width": 8,                                                                     +
                                                   "Actual Startup Time": 948.819,                                                      +
                                                   "Actual Total Time": 948.926,                                                        +
                                                   "Actual Rows": 278,                                                                  +
                                                   "Actual Loops": 1,                                                                   +
                                                   "Inner Unique": false,                                                               +
                                                   "Merge Cond": "(cn.id = mc.company_id)",                                             +
                                                   "Shared Hit Blocks": 3,                                                              +
                                                   "Shared Read Blocks": 18790,                                                         +
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
                                                       "Startup Cost": 6.13,                                                            +
                                                       "Total Cost": 6.13,                                                              +
                                                       "Plan Rows": 1,                                                                  +
                                                       "Plan Width": 4,                                                                 +
                                                       "Actual Startup Time": 51.774,                                                   +
                                                       "Actual Total Time": 51.774,                                                     +
                                                       "Actual Rows": 1,                                                                +
                                                       "Actual Loops": 1,                                                               +
                                                       "Sort Key": ["cn.id"],                                                           +
                                                       "Sort Method": "quicksort",                                                      +
                                                       "Sort Space Used": 25,                                                           +
                                                       "Sort Space Type": "Memory",                                                     +
                                                       "Shared Hit Blocks": 0,                                                          +
                                                       "Shared Read Blocks": 4,                                                         +
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
                                                           "Node Type": "Index Scan",                                                   +
                                                           "Parent Relationship": "Outer",                                              +
                                                           "Parallel Aware": false,                                                     +
                                                           "Scan Direction": "Forward",                                                 +
                                                           "Index Name": "company_name_idx_name",                                       +
                                                           "Relation Name": "company_name",                                             +
                                                           "Alias": "cn",                                                               +
                                                           "Startup Cost": 0.01,                                                        +
                                                           "Total Cost": 6.13,                                                          +
                                                           "Plan Rows": 1,                                                              +
                                                           "Plan Width": 4,                                                             +
                                                           "Actual Startup Time": 51.763,                                               +
                                                           "Actual Total Time": 51.767,                                                 +
                                                           "Actual Rows": 1,                                                            +
                                                           "Actual Loops": 1,                                                           +
                                                           "Index Cond": "(name = 'YouTube'::text)",                                    +
                                                           "Rows Removed by Index Recheck": 0,                                          +
                                                           "Filter": "((country_code)::text = '[us]'::text)",                           +
                                                           "Rows Removed by Filter": 0,                                                 +
                                                           "Shared Hit Blocks": 0,                                                      +
                                                           "Shared Read Blocks": 4,                                                     +
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
                                                       "Startup Cost": 1212.93,                                                         +
                                                       "Total Cost": 1214.28,                                                           +
                                                       "Plan Rows": 17389,                                                              +
                                                       "Plan Width": 12,                                                                +
                                                       "Actual Startup Time": 897.003,                                                  +
                                                       "Actual Total Time": 897.063,                                                    +
                                                       "Actual Rows": 414,                                                              +
                                                       "Actual Loops": 1,                                                               +
                                                       "Sort Key": ["mc.company_id"],                                                   +
                                                       "Sort Method": "quicksort",                                                      +
                                                       "Sort Space Used": 4427,                                                         +
                                                       "Sort Space Type": "Memory",                                                     +
                                                       "Shared Hit Blocks": 3,                                                          +
                                                       "Shared Read Blocks": 18786,                                                     +
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
                                                           "Relation Name": "movie_companies",                                          +
                                                           "Alias": "mc",                                                               +
                                                           "Startup Cost": 0.00,                                                        +
                                                           "Total Cost": 1174.90,                                                       +
                                                           "Plan Rows": 17389,                                                          +
                                                           "Plan Width": 12,                                                            +
                                                           "Actual Startup Time": 0.031,                                                +
                                                           "Actual Total Time": 872.223,                                                +
                                                           "Actual Rows": 61664,                                                        +
                                                           "Actual Loops": 1,                                                           +
                                                           "Filter": "((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))",+
                                                           "Rows Removed by Filter": 2547465,                                           +
                                                           "Shared Hit Blocks": 3,                                                      +
                                                           "Shared Read Blocks": 18786,                                                 +
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
                                             },                                                                                         +
                                             {                                                                                          +
                                               "Node Type": "Sort",                                                                     +
                                               "Parent Relationship": "Inner",                                                          +
                                               "Parallel Aware": false,                                                                 +
                                               "Startup Cost": 0.03,                                                                    +
                                               "Total Cost": 0.03,                                                                      +
                                               "Plan Rows": 4,                                                                          +
                                               "Plan Width": 4,                                                                         +
                                               "Actual Startup Time": 0.015,                                                            +
                                               "Actual Total Time": 0.015,                                                              +
                                               "Actual Rows": 1,                                                                        +
                                               "Actual Loops": 1,                                                                       +
                                               "Sort Key": ["ct.id"],                                                                   +
                                               "Sort Method": "quicksort",                                                              +
                                               "Sort Space Used": 25,                                                                   +
                                               "Sort Space Type": "Memory",                                                             +
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
                                                   "Plan Rows": 4,                                                                      +
                                                   "Plan Width": 4,                                                                     +
                                                   "Actual Startup Time": 0.006,                                                        +
                                                   "Actual Total Time": 0.007,                                                          +
                                                   "Actual Rows": 4,                                                                    +
                                                   "Actual Loops": 1,                                                                   +
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
                                       "Startup Cost": 1255.56,                                                                         +
                                       "Total Cost": 1283.62,                                                                           +
                                       "Plan Rows": 361472,                                                                             +
                                       "Plan Width": 4,                                                                                 +
                                       "Actual Startup Time": 385.041,                                                                  +
                                       "Actual Total Time": 428.107,                                                                    +
                                       "Actual Rows": 360099,                                                                           +
                                       "Actual Loops": 1,                                                                               +
                                       "Sort Key": ["at.movie_id"],                                                                     +
                                       "Sort Method": "quicksort",                                                                      +
                                       "Sort Space Used": 29233,                                                                        +
                                       "Sort Space Type": "Memory",                                                                     +
                                       "Shared Hit Blocks": 2,                                                                          +
                                       "Shared Read Blocks": 6190,                                                                      +
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
                                           "Relation Name": "aka_title",                                                                +
                                           "Alias": "at",                                                                               +
                                           "Startup Cost": 0.00,                                                                        +
                                           "Total Cost": 219.22,                                                                        +
                                           "Plan Rows": 361472,                                                                         +
                                           "Plan Width": 4,                                                                             +
                                           "Actual Startup Time": 6.657,                                                                +
                                           "Actual Total Time": 199.414,                                                                +
                                           "Actual Rows": 361472,                                                                       +
                                           "Actual Loops": 1,                                                                           +
                                           "Shared Hit Blocks": 2,                                                                      +
                                           "Shared Read Blocks": 6190,                                                                  +
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
                       "Startup Cost": 393.92,                                                                                          +
                       "Total Cost": 404.34,                                                                                            +
                       "Plan Rows": 134170,                                                                                             +
                       "Plan Width": 4,                                                                                                 +
                       "Actual Startup Time": 115.570,                                                                                  +
                       "Actual Total Time": 124.438,                                                                                    +
                       "Actual Rows": 102271,                                                                                           +
                       "Actual Loops": 1,                                                                                               +
                       "Sort Key": ["k.id"],                                                                                            +
                       "Sort Method": "quicksort",                                                                                      +
                       "Sort Space Used": 12434,                                                                                        +
                       "Sort Space Type": "Memory",                                                                                     +
                       "Shared Hit Blocks": 2,                                                                                          +
                       "Shared Read Blocks": 947,                                                                                       +
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
                           "Relation Name": "keyword",                                                                                  +
                           "Alias": "k",                                                                                                +
                           "Startup Cost": 0.00,                                                                                        +
                           "Total Cost": 39.04,                                                                                         +
                           "Plan Rows": 134170,                                                                                         +
                           "Plan Width": 4,                                                                                             +
                           "Actual Startup Time": 25.849,                                                                               +
                           "Actual Total Time": 59.243,                                                                                 +
                           "Actual Rows": 134170,                                                                                       +
                           "Actual Loops": 1,                                                                                           +
                           "Shared Hit Blocks": 2,                                                                                      +
                           "Shared Read Blocks": 947,                                                                                   +
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
                 }                                                                                                                      +
               ]                                                                                                                        +
             },                                                                                                                         +
             {                                                                                                                          +
               "Node Type": "Sort",                                                                                                     +
               "Parent Relationship": "Inner",                                                                                          +
               "Parallel Aware": false,                                                                                                 +
               "Startup Cost": 0.05,                                                                                                    +
               "Total Cost": 0.05,                                                                                                      +
               "Plan Rows": 1,                                                                                                          +
               "Plan Width": 4,                                                                                                         +
               "Actual Startup Time": 0.031,                                                                                            +
               "Actual Total Time": 0.031,                                                                                              +
               "Actual Rows": 1,                                                                                                        +
               "Actual Loops": 1,                                                                                                       +
               "Sort Key": ["it1.id"],                                                                                                  +
               "Sort Method": "quicksort",                                                                                              +
               "Sort Space Used": 25,                                                                                                   +
               "Sort Space Type": "Memory",                                                                                             +
               "Shared Hit Blocks": 1,                                                                                                  +
               "Shared Read Blocks": 0,                                                                                                 +
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
                   "Node Type": "Seq Scan",                                                                                             +
                   "Parent Relationship": "Outer",                                                                                      +
                   "Parallel Aware": false,                                                                                             +
                   "Relation Name": "info_type",                                                                                        +
                   "Alias": "it1",                                                                                                      +
                   "Startup Cost": 0.00,                                                                                                +
                   "Total Cost": 0.05,                                                                                                  +
                   "Plan Rows": 1,                                                                                                      +
                   "Plan Width": 4,                                                                                                     +
                   "Actual Startup Time": 0.013,                                                                                        +
                   "Actual Total Time": 0.023,                                                                                          +
                   "Actual Rows": 1,                                                                                                    +
                   "Actual Loops": 1,                                                                                                   +
                   "Filter": "((info)::text = 'release dates'::text)",                                                                  +
                   "Rows Removed by Filter": 112,                                                                                       +
                   "Shared Hit Blocks": 1,                                                                                              +
                   "Shared Read Blocks": 0,                                                                                             +
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
     },                                                                                                                                 +
     "Planning Time": 9155.476,                                                                                                         +
     "Triggers": [                                                                                                                      +
     ],                                                                                                                                 +
     "Execution Time": 14860.099                                                                                                        +
   }                                                                                                                                    +
 ]
(1 row)

