                                              QUERY PLAN                                              
------------------------------------------------------------------------------------------------------
 [                                                                                                   +
   {                                                                                                 +
     "Plan": {                                                                                       +
       "Node Type": "Aggregate",                                                                     +
       "Strategy": "Plain",                                                                          +
       "Partial Mode": "Simple",                                                                     +
       "Parallel Aware": false,                                                                      +
       "Startup Cost": 179752.62,                                                                    +
       "Total Cost": 179752.62,                                                                      +
       "Plan Rows": 1,                                                                               +
       "Plan Width": 96,                                                                             +
       "Actual Startup Time": 36618.212,                                                             +
       "Actual Total Time": 36618.212,                                                               +
       "Actual Rows": 1,                                                                             +
       "Actual Loops": 1,                                                                            +
       "Shared Hit Blocks": 13,                                                                      +
       "Shared Read Blocks": 368714,                                                                 +
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
           "Startup Cost": 179752.53,                                                                +
           "Total Cost": 179752.62,                                                                  +
           "Plan Rows": 1,                                                                           +
           "Plan Width": 48,                                                                         +
           "Actual Startup Time": 36618.159,                                                         +
           "Actual Total Time": 36618.163,                                                           +
           "Actual Rows": 6,                                                                         +
           "Actual Loops": 1,                                                                        +
           "Inner Unique": true,                                                                     +
           "Merge Cond": "(ci.person_id = n.id)",                                                    +
           "Shared Hit Blocks": 13,                                                                  +
           "Shared Read Blocks": 368714,                                                             +
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
               "Startup Cost": 177395.87,                                                            +
               "Total Cost": 177395.89,                                                              +
               "Plan Rows": 176,                                                                     +
               "Plan Width": 37,                                                                     +
               "Actual Startup Time": 33912.804,                                                     +
               "Actual Total Time": 33912.825,                                                       +
               "Actual Rows": 122,                                                                   +
               "Actual Loops": 1,                                                                    +
               "Sort Key": ["ci.person_id"],                                                         +
               "Sort Method": "quicksort",                                                           +
               "Sort Space Used": 169,                                                               +
               "Sort Space Type": "Memory",                                                          +
               "Shared Hit Blocks": 12,                                                              +
               "Shared Read Blocks": 313102,                                                         +
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
                   "Startup Cost": 171706.90,                                                        +
                   "Total Cost": 177395.67,                                                          +
                   "Plan Rows": 176,                                                                 +
                   "Plan Width": 37,                                                                 +
                   "Actual Startup Time": 25926.191,                                                 +
                   "Actual Total Time": 33895.033,                                                   +
                   "Actual Rows": 1224,                                                              +
                   "Actual Loops": 1,                                                                +
                   "Inner Unique": false,                                                            +
                   "Merge Cond": "(t.id = ci.movie_id)",                                             +
                   "Shared Hit Blocks": 8,                                                           +
                   "Shared Read Blocks": 313102,                                                     +
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
                       "Startup Cost": 19949.77,                                                     +
                       "Total Cost": 20010.54,                                                       +
                       "Plan Rows": 5,                                                               +
                       "Plan Width": 41,                                                             +
                       "Actual Startup Time": 4840.519,                                              +
                       "Actual Total Time": 4934.436,                                                +
                       "Actual Rows": 11,                                                            +
                       "Actual Loops": 1,                                                            +
                       "Inner Unique": true,                                                         +
                       "Merge Cond": "(mk.movie_id = t.id)",                                         +
                       "Shared Hit Blocks": 4,                                                       +
                       "Shared Read Blocks": 60452,                                                  +
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
                           "Startup Cost": 17319.56,                                                 +
                           "Total Cost": 17319.56,                                                   +
                           "Plan Rows": 34,                                                          +
                           "Plan Width": 20,                                                         +
                           "Actual Startup Time": 2987.176,                                          +
                           "Actual Total Time": 2987.181,                                            +
                           "Actual Rows": 14,                                                        +
                           "Actual Loops": 1,                                                        +
                           "Sort Key": ["mk.movie_id"],                                              +
                           "Sort Method": "quicksort",                                               +
                           "Sort Space Used": 26,                                                    +
                           "Sort Space Type": "Memory",                                              +
                           "Shared Hit Blocks": 3,                                                   +
                           "Shared Read Blocks": 24455,                                              +
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
                               "Startup Cost": 16617.06,                                             +
                               "Total Cost": 17319.53,                                               +
                               "Plan Rows": 34,                                                      +
                               "Plan Width": 20,                                                     +
                               "Actual Startup Time": 2987.152,                                      +
                               "Actual Total Time": 2987.158,                                        +
                               "Actual Rows": 14,                                                    +
                               "Actual Loops": 1,                                                    +
                               "Inner Unique": false,                                                +
                               "Merge Cond": "(k.id = mk.keyword_id)",                               +
                               "Shared Hit Blocks": 3,                                               +
                               "Shared Read Blocks": 24455,                                          +
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
                                   "Node Type": "Sort",                                              +
                                   "Parent Relationship": "Outer",                                   +
                                   "Parallel Aware": false,                                          +
                                   "Startup Cost": 6.13,                                             +
                                   "Total Cost": 6.13,                                               +
                                   "Plan Rows": 1,                                                   +
                                   "Plan Width": 20,                                                 +
                                   "Actual Startup Time": 19.313,                                    +
                                   "Actual Total Time": 19.314,                                      +
                                   "Actual Rows": 1,                                                 +
                                   "Actual Loops": 1,                                                +
                                   "Sort Key": ["k.id"],                                             +
                                   "Sort Method": "quicksort",                                       +
                                   "Sort Space Used": 25,                                            +
                                   "Sort Space Type": "Memory",                                      +
                                   "Shared Hit Blocks": 0,                                           +
                                   "Shared Read Blocks": 4,                                          +
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
                                       "Node Type": "Index Scan",                                    +
                                       "Parent Relationship": "Outer",                               +
                                       "Parallel Aware": false,                                      +
                                       "Scan Direction": "Forward",                                  +
                                       "Index Name": "keyword_idx_keyword",                          +
                                       "Relation Name": "keyword",                                   +
                                       "Alias": "k",                                                 +
                                       "Startup Cost": 0.01,                                         +
                                       "Total Cost": 6.13,                                           +
                                       "Plan Rows": 1,                                               +
                                       "Plan Width": 20,                                             +
                                       "Actual Startup Time": 19.288,                                +
                                       "Actual Total Time": 19.291,                                  +
                                       "Actual Rows": 1,                                             +
                                       "Actual Loops": 1,                                            +
                                       "Index Cond": "(keyword = 'marvel-cinematic-universe'::text)",+
                                       "Rows Removed by Index Recheck": 0,                           +
                                       "Shared Hit Blocks": 0,                                       +
                                       "Shared Read Blocks": 4,                                      +
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
                                   "Node Type": "Sort",                                              +
                                   "Parent Relationship": "Inner",                                   +
                                   "Parallel Aware": false,                                          +
                                   "Startup Cost": 16610.92,                                         +
                                   "Total Cost": 16962.16,                                           +
                                   "Plan Rows": 4523930,                                             +
                                   "Plan Width": 8,                                                  +
                                   "Actual Startup Time": 2238.843,                                  +
                                   "Actual Total Time": 2652.697,                                    +
                                   "Actual Rows": 2796683,                                           +
                                   "Actual Loops": 1,                                                +
                                   "Sort Key": ["mk.keyword_id"],                                    +
                                   "Sort Method": "quicksort",                                       +
                                   "Sort Space Used": 408668,                                        +
                                   "Sort Space Type": "Memory",                                      +
                                   "Shared Hit Blocks": 3,                                           +
                                   "Shared Read Blocks": 24451,                                      +
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
                                       "Relation Name": "movie_keyword",                             +
                                       "Alias": "mk",                                                +
                                       "Startup Cost": 0.00,                                         +
                                       "Total Cost": 1079.84,                                        +
                                       "Plan Rows": 4523930,                                         +
                                       "Plan Width": 8,                                              +
                                       "Actual Startup Time": 0.015,                                 +
                                       "Actual Total Time": 792.485,                                 +
                                       "Actual Rows": 4523930,                                       +
                                       "Actual Loops": 1,                                            +
                                       "Shared Hit Blocks": 3,                                       +
                                       "Shared Read Blocks": 24451,                                  +
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
                           "Startup Cost": 2630.21,                                                  +
                           "Total Cost": 2660.62,                                                    +
                           "Plan Rows": 391667,                                                      +
                           "Plan Width": 21,                                                         +
                           "Actual Startup Time": 1850.765,                                          +
                           "Actual Total Time": 1895.765,                                            +
                           "Actual Rows": 383801,                                                    +
                           "Actual Loops": 1,                                                        +
                           "Sort Key": ["t.id"],                                                     +
                           "Sort Method": "quicksort",                                               +
                           "Sort Space Used": 39792,                                                 +
                           "Sort Space Type": "Memory",                                              +
                           "Shared Hit Blocks": 1,                                                   +
                           "Shared Read Blocks": 35997,                                              +
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
                               "Relation Name": "title",                                             +
                               "Alias": "t",                                                         +
                               "Startup Cost": 0.00,                                                 +
                               "Total Cost": 1500.26,                                                +
                               "Plan Rows": 391667,                                                  +
                               "Plan Width": 21,                                                     +
                               "Actual Startup Time": 8.604,                                         +
                               "Actual Total Time": 1581.907,                                        +
                               "Actual Rows": 391666,                                                +
                               "Actual Loops": 1,                                                    +
                               "Filter": "(production_year > 2010)",                                 +
                               "Rows Removed by Filter": 2136646,                                    +
                               "Shared Hit Blocks": 1,                                               +
                               "Shared Read Blocks": 35997,                                          +
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
                       "Node Type": "Sort",                                                          +
                       "Parent Relationship": "Inner",                                               +
                       "Parallel Aware": false,                                                      +
                       "Startup Cost": 151757.13,                                                    +
                       "Total Cost": 154571.13,                                                      +
                       "Plan Rows": 36244344,                                                        +
                       "Plan Width": 8,                                                              +
                       "Actual Startup Time": 20955.134,                                             +
                       "Actual Total Time": 25039.219,                                               +
                       "Actual Rows": 34806442,                                                      +
                       "Actual Loops": 1,                                                            +
                       "Sort Key": ["ci.movie_id"],                                                  +
                       "Sort Method": "quicksort",                                                   +
                       "Sort Space Used": 3271818,                                                   +
                       "Sort Space Type": "Memory",                                                  +
                       "Shared Hit Blocks": 4,                                                       +
                       "Shared Read Blocks": 252650,                                                 +
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
                           "Node Type": "Seq Scan",                                                  +
                           "Parent Relationship": "Outer",                                           +
                           "Parallel Aware": false,                                                  +
                           "Relation Name": "cast_info",                                             +
                           "Alias": "ci",                                                            +
                           "Startup Cost": 0.00,                                                     +
                           "Total Cost": 10431.00,                                                   +
                           "Plan Rows": 36244344,                                                    +
                           "Plan Width": 8,                                                          +
                           "Actual Startup Time": 0.012,                                             +
                           "Actual Total Time": 6792.824,                                            +
                           "Actual Rows": 36244344,                                                  +
                           "Actual Loops": 1,                                                        +
                           "Shared Hit Blocks": 4,                                                   +
                           "Shared Read Blocks": 252650,                                             +
                           "Shared Dirtied Blocks": 0,                                               +
                           "Shared Written Blocks": 0,                                               +
                           "Local Hit Blocks": 0,                                                    +
                           "Local Read Blocks": 0,                                                   +
                           "Local Dirtied Blocks": 0,                                                +
                           "Local Written Blocks": 0,                                                +
                           "Temp Read Blocks": 0,                                                    +
                           "Temp Written Blocks": 0                                                  +
                         }                                                                           +
                       ]                                                                             +
                     }                                                                               +
                   ]                                                                                 +
                 }                                                                                   +
               ]                                                                                     +
             },                                                                                      +
             {                                                                                       +
               "Node Type": "Sort",                                                                  +
               "Parent Relationship": "Inner",                                                       +
               "Parallel Aware": false,                                                              +
               "Startup Cost": 2356.66,                                                              +
               "Total Cost": 2356.69,                                                                +
               "Plan Rows": 400,                                                                     +
               "Plan Width": 19,                                                                     +
               "Actual Startup Time": 2705.311,                                                      +
               "Actual Total Time": 2705.311,                                                        +
               "Actual Rows": 2,                                                                     +
               "Actual Loops": 1,                                                                    +
               "Sort Key": ["n.id"],                                                                 +
               "Sort Method": "quicksort",                                                           +
               "Sort Space Used": 25,                                                                +
               "Sort Space Type": "Memory",                                                          +
               "Shared Hit Blocks": 1,                                                               +
               "Shared Read Blocks": 55612,                                                          +
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
                   "Relation Name": "name",                                                          +
                   "Alias": "n",                                                                     +
                   "Startup Cost": 0.00,                                                             +
                   "Total Cost": 2356.12,                                                            +
                   "Plan Rows": 400,                                                                 +
                   "Plan Width": 19,                                                                 +
                   "Actual Startup Time": 278.108,                                                   +
                   "Actual Total Time": 2705.291,                                                    +
                   "Actual Rows": 2,                                                                 +
                   "Actual Loops": 1,                                                                +
                   "Filter": "(name ~~ '%Downey%Robert%'::text)",                                    +
                   "Rows Removed by Filter": 4167489,                                                +
                   "Shared Hit Blocks": 1,                                                           +
                   "Shared Read Blocks": 55612,                                                      +
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
             }                                                                                       +
           ]                                                                                         +
         }                                                                                           +
       ]                                                                                             +
     },                                                                                              +
     "Planning Time": 2840.949,                                                                      +
     "Triggers": [                                                                                   +
     ],                                                                                              +
     "Execution Time": 36748.143                                                                     +
   }                                                                                                 +
 ]
(1 row)

