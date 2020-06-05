                                            QUERY PLAN                                            
--------------------------------------------------------------------------------------------------
 [                                                                                               +
   {                                                                                             +
     "Plan": {                                                                                   +
       "Node Type": "Aggregate",                                                                 +
       "Strategy": "Plain",                                                                      +
       "Partial Mode": "Simple",                                                                 +
       "Parallel Aware": false,                                                                  +
       "Startup Cost": 178367.69,                                                                +
       "Total Cost": 178367.69,                                                                  +
       "Plan Rows": 1,                                                                           +
       "Plan Width": 96,                                                                         +
       "Actual Startup Time": 35860.097,                                                         +
       "Actual Total Time": 35860.097,                                                           +
       "Actual Rows": 1,                                                                         +
       "Actual Loops": 1,                                                                        +
       "Shared Hit Blocks": 15,                                                                  +
       "Shared Read Blocks": 333153,                                                             +
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
           "Startup Cost": 178367.63,                                                            +
           "Total Cost": 178367.69,                                                              +
           "Plan Rows": 1,                                                                       +
           "Plan Width": 48,                                                                     +
           "Actual Startup Time": 35860.046,                                                     +
           "Actual Total Time": 35860.049,                                                       +
           "Actual Rows": 2,                                                                     +
           "Actual Loops": 1,                                                                    +
           "Inner Unique": true,                                                                 +
           "Merge Cond": "(ci.person_id = n.id)",                                                +
           "Shared Hit Blocks": 15,                                                              +
           "Shared Read Blocks": 333153,                                                         +
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
               "Startup Cost": 176010.97,                                                        +
               "Total Cost": 176010.97,                                                          +
               "Plan Rows": 1,                                                                   +
               "Plan Width": 37,                                                                 +
               "Actual Startup Time": 33070.955,                                                 +
               "Actual Total Time": 33070.956,                                                   +
               "Actual Rows": 4,                                                                 +
               "Actual Loops": 1,                                                                +
               "Sort Key": ["ci.person_id"],                                                     +
               "Sort Method": "quicksort",                                                       +
               "Sort Space Used": 27,                                                            +
               "Sort Space Type": "Memory",                                                      +
               "Shared Hit Blocks": 14,                                                          +
               "Shared Read Blocks": 277541,                                                     +
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
                   "Startup Cost": 170387.36,                                                    +
                   "Total Cost": 176010.97,                                                      +
                   "Plan Rows": 1,                                                               +
                   "Plan Width": 37,                                                             +
                   "Actual Startup Time": 29760.985,                                             +
                   "Actual Total Time": 33053.599,                                               +
                   "Actual Rows": 33,                                                            +
                   "Actual Loops": 1,                                                            +
                   "Inner Unique": false,                                                        +
                   "Merge Cond": "(t.id = mk.movie_id)",                                         +
                   "Shared Hit Blocks": 10,                                                      +
                   "Shared Read Blocks": 277541,                                                 +
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
                       "Startup Cost": 153067.80,                                                +
                       "Total Cost": 158696.30,                                                  +
                       "Plan Rows": 6279,                                                        +
                       "Plan Width": 29,                                                         +
                       "Actual Startup Time": 22417.383,                                         +
                       "Actual Total Time": 30055.755,                                           +
                       "Actual Rows": 2983,                                                      +
                       "Actual Loops": 1,                                                        +
                       "Inner Unique": true,                                                     +
                       "Merge Cond": "(ci.movie_id = t.id)",                                     +
                       "Shared Hit Blocks": 7,                                                   +
                       "Shared Read Blocks": 253086,                                             +
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
                           "Node Type": "Sort",                                                  +
                           "Parent Relationship": "Outer",                                       +
                           "Parallel Aware": false,                                              +
                           "Startup Cost": 151757.13,                                            +
                           "Total Cost": 154571.13,                                              +
                           "Plan Rows": 36244344,                                                +
                           "Plan Width": 8,                                                      +
                           "Actual Startup Time": 21025.473,                                     +
                           "Actual Total Time": 25242.086,                                       +
                           "Actual Rows": 35355239,                                              +
                           "Actual Loops": 1,                                                    +
                           "Sort Key": ["ci.movie_id"],                                          +
                           "Sort Method": "quicksort",                                           +
                           "Sort Space Used": 3271818,                                           +
                           "Sort Space Type": "Memory",                                          +
                           "Shared Hit Blocks": 4,                                               +
                           "Shared Read Blocks": 252650,                                         +
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
                               "Relation Name": "cast_info",                                     +
                               "Alias": "ci",                                                    +
                               "Startup Cost": 0.00,                                             +
                               "Total Cost": 10431.00,                                           +
                               "Plan Rows": 36244344,                                            +
                               "Plan Width": 8,                                                  +
                               "Actual Startup Time": 0.017,                                     +
                               "Actual Total Time": 6907.194,                                    +
                               "Actual Rows": 36244344,                                          +
                               "Actual Loops": 1,                                                +
                               "Shared Hit Blocks": 4,                                           +
                               "Shared Read Blocks": 252650,                                     +
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
                         },                                                                      +
                         {                                                                       +
                           "Node Type": "Sort",                                                  +
                           "Parent Relationship": "Inner",                                       +
                           "Parallel Aware": false,                                              +
                           "Startup Cost": 1310.67,                                              +
                           "Total Cost": 1310.70,                                                +
                           "Plan Rows": 438,                                                     +
                           "Plan Width": 21,                                                     +
                           "Actual Startup Time": 769.281,                                       +
                           "Actual Total Time": 769.380,                                         +
                           "Actual Rows": 416,                                                   +
                           "Actual Loops": 1,                                                    +
                           "Sort Key": ["t.id"],                                                 +
                           "Sort Method": "quicksort",                                           +
                           "Sort Space Used": 55,                                                +
                           "Sort Space Type": "Memory",                                          +
                           "Shared Hit Blocks": 3,                                               +
                           "Shared Read Blocks": 436,                                            +
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
                               "Node Type": "Index Scan",                                        +
                               "Parent Relationship": "Outer",                                   +
                               "Parallel Aware": false,                                          +
                               "Scan Direction": "Forward",                                      +
                               "Index Name": "title_idx_production_year",                        +
                               "Relation Name": "title",                                         +
                               "Alias": "t",                                                     +
                               "Startup Cost": 0.01,                                             +
                               "Total Cost": 1310.07,                                            +
                               "Plan Rows": 438,                                                 +
                               "Plan Width": 21,                                                 +
                               "Actual Startup Time": 43.339,                                    +
                               "Actual Total Time": 767.282,                                     +
                               "Actual Rows": 438,                                               +
                               "Actual Loops": 1,                                                +
                               "Index Cond": "(production_year > 2014)",                         +
                               "Rows Removed by Index Recheck": 0,                               +
                               "Shared Hit Blocks": 3,                                           +
                               "Shared Read Blocks": 436,                                        +
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
                       "Startup Cost": 17319.56,                                                 +
                       "Total Cost": 17319.56,                                                   +
                       "Plan Rows": 34,                                                          +
                       "Plan Width": 20,                                                         +
                       "Actual Startup Time": 2997.518,                                          +
                       "Actual Total Time": 2997.524,                                            +
                       "Actual Rows": 45,                                                        +
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
                           "Actual Startup Time": 2997.499,                                      +
                           "Actual Total Time": 2997.505,                                        +
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
                               "Actual Startup Time": 43.185,                                    +
                               "Actual Total Time": 43.186,                                      +
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
                                   "Actual Startup Time": 43.174,                                +
                                   "Actual Total Time": 43.177,                                  +
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
                               "Actual Startup Time": 2222.741,                                  +
                               "Actual Total Time": 2641.609,                                    +
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
                                   "Actual Startup Time": 0.018,                                 +
                                   "Actual Total Time": 778.429,                                 +
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
                     }                                                                           +
                   ]                                                                             +
                 }                                                                               +
               ]                                                                                 +
             },                                                                                  +
             {                                                                                   +
               "Node Type": "Sort",                                                              +
               "Parent Relationship": "Inner",                                                   +
               "Parallel Aware": false,                                                          +
               "Startup Cost": 2356.66,                                                          +
               "Total Cost": 2356.69,                                                            +
               "Plan Rows": 400,                                                                 +
               "Plan Width": 19,                                                                 +
               "Actual Startup Time": 2789.078,                                                  +
               "Actual Total Time": 2789.078,                                                    +
               "Actual Rows": 2,                                                                 +
               "Actual Loops": 1,                                                                +
               "Sort Key": ["n.id"],                                                             +
               "Sort Method": "quicksort",                                                       +
               "Sort Space Used": 25,                                                            +
               "Sort Space Type": "Memory",                                                      +
               "Shared Hit Blocks": 1,                                                           +
               "Shared Read Blocks": 55612,                                                      +
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
                   "Relation Name": "name",                                                      +
                   "Alias": "n",                                                                 +
                   "Startup Cost": 0.00,                                                         +
                   "Total Cost": 2356.12,                                                        +
                   "Plan Rows": 400,                                                             +
                   "Plan Width": 19,                                                             +
                   "Actual Startup Time": 370.104,                                               +
                   "Actual Total Time": 2789.057,                                                +
                   "Actual Rows": 2,                                                             +
                   "Actual Loops": 1,                                                            +
                   "Filter": "(name ~~ '%Downey%Robert%'::text)",                                +
                   "Rows Removed by Filter": 4167489,                                            +
                   "Shared Hit Blocks": 1,                                                       +
                   "Shared Read Blocks": 55612,                                                  +
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
     "Planning Time": 2885.088,                                                                  +
     "Triggers": [                                                                               +
     ],                                                                                          +
     "Execution Time": 35983.027                                                                 +
   }                                                                                             +
 ]
(1 row)

