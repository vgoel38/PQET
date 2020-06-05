                                              QUERY PLAN                                              
------------------------------------------------------------------------------------------------------
 [                                                                                                   +
   {                                                                                                 +
     "Plan": {                                                                                       +
       "Node Type": "Aggregate",                                                                     +
       "Strategy": "Plain",                                                                          +
       "Partial Mode": "Simple",                                                                     +
       "Parallel Aware": false,                                                                      +
       "Startup Cost": 183152.55,                                                                    +
       "Total Cost": 183152.55,                                                                      +
       "Plan Rows": 1,                                                                               +
       "Plan Width": 96,                                                                             +
       "Actual Startup Time": 37876.754,                                                             +
       "Actual Total Time": 37876.755,                                                               +
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
           "Startup Cost": 183152.39,                                                                +
           "Total Cost": 183152.55,                                                                  +
           "Plan Rows": 1,                                                                           +
           "Plan Width": 48,                                                                         +
           "Actual Startup Time": 37876.695,                                                         +
           "Actual Total Time": 37876.701,                                                           +
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
               "Startup Cost": 180795.73,                                                            +
               "Total Cost": 180795.78,                                                              +
               "Plan Rows": 622,                                                                     +
               "Plan Width": 37,                                                                     +
               "Actual Startup Time": 35260.632,                                                     +
               "Actual Total Time": 35260.657,                                                       +
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
                   "Startup Cost": 174952.50,                                                        +
                   "Total Cost": 180794.83,                                                          +
                   "Plan Rows": 622,                                                                 +
                   "Plan Width": 37,                                                                 +
                   "Actual Startup Time": 27000.070,                                                 +
                   "Actual Total Time": 35242.836,                                                   +
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
                       "Startup Cost": 23195.37,                                                     +
                       "Total Cost": 23409.68,                                                       +
                       "Plan Rows": 19,                                                              +
                       "Plan Width": 41,                                                             +
                       "Actual Startup Time": 5169.989,                                              +
                       "Actual Total Time": 5514.712,                                                +
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
                           "Actual Startup Time": 3066.421,                                          +
                           "Actual Total Time": 3066.426,                                            +
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
                               "Actual Startup Time": 3066.398,                                      +
                               "Actual Total Time": 3066.404,                                        +
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
                                   "Actual Startup Time": 19.304,                                    +
                                   "Actual Total Time": 19.304,                                      +
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
                                       "Actual Startup Time": 19.283,                                +
                                       "Actual Total Time": 19.286,                                  +
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
                                   "Actual Startup Time": 2318.685,                                  +
                                   "Actual Total Time": 2730.213,                                    +
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
                                       "Actual Total Time": 853.815,                                 +
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
                           "Startup Cost": 5875.81,                                                  +
                           "Total Cost": 5983.06,                                                    +
                           "Plan Rows": 1381453,                                                     +
                           "Plan Width": 21,                                                         +
                           "Actual Startup Time": 2095.273,                                          +
                           "Actual Total Time": 2260.271,                                            +
                           "Actual Rows": 1355627,                                                   +
                           "Actual Loops": 1,                                                        +
                           "Sort Key": ["t.id"],                                                     +
                           "Sort Method": "quicksort",                                               +
                           "Sort Space Used": 145245,                                                +
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
                               "Plan Rows": 1381453,                                                 +
                               "Plan Width": 21,                                                     +
                               "Actual Startup Time": 20.992,                                        +
                               "Actual Total Time": 1321.095,                                        +
                               "Actual Rows": 1381453,                                               +
                               "Actual Loops": 1,                                                    +
                               "Filter": "(production_year > 2000)",                                 +
                               "Rows Removed by Filter": 1146859,                                    +
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
                       "Actual Startup Time": 21698.661,                                             +
                       "Actual Total Time": 25795.775,                                               +
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
                           "Actual Startup Time": 0.015,                                             +
                           "Actual Total Time": 7584.611,                                            +
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
               "Actual Startup Time": 2616.002,                                                      +
               "Actual Total Time": 2616.003,                                                        +
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
                   "Actual Startup Time": 288.609,                                                   +
                   "Actual Total Time": 2615.982,                                                    +
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
     "Planning Time": 2628.847,                                                                      +
     "Triggers": [                                                                                   +
     ],                                                                                              +
     "Execution Time": 38013.530                                                                     +
   }                                                                                                 +
 ]
(1 row)

