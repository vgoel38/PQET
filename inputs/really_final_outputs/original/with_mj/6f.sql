                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 197744.09,                                                                                                                                        +
       "Total Cost": 197744.09,                                                                                                                                          +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 40646.264,                                                                                                                                 +
       "Actual Total Time": 40646.264,                                                                                                                                   +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 28,                                                                                                                                          +
       "Shared Read Blocks": 368730,                                                                                                                                     +
       "Shared Dirtied Blocks": 0,                                                                                                                                       +
       "Shared Written Blocks": 0,                                                                                                                                       +
       "Local Hit Blocks": 0,                                                                                                                                            +
       "Local Read Blocks": 0,                                                                                                                                           +
       "Local Dirtied Blocks": 0,                                                                                                                                        +
       "Local Written Blocks": 0,                                                                                                                                        +
       "Temp Read Blocks": 0,                                                                                                                                            +
       "Temp Written Blocks": 0,                                                                                                                                         +
       "Plans": [                                                                                                                                                        +
         {                                                                                                                                                               +
           "Node Type": "Merge Join",                                                                                                                                    +
           "Parent Relationship": "Outer",                                                                                                                               +
           "Parallel Aware": false,                                                                                                                                      +
           "Join Type": "Inner",                                                                                                                                         +
           "Startup Cost": 197111.10,                                                                                                                                    +
           "Total Cost": 197742.94,                                                                                                                                      +
           "Plan Rows": 4974,                                                                                                                                            +
           "Plan Width": 48,                                                                                                                                             +
           "Actual Startup Time": 39022.460,                                                                                                                             +
           "Actual Total Time": 40393.701,                                                                                                                               +
           "Actual Rows": 785477,                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                        +
           "Shared Hit Blocks": 28,                                                                                                                                      +
           "Shared Read Blocks": 368730,                                                                                                                                 +
           "Shared Dirtied Blocks": 0,                                                                                                                                   +
           "Shared Written Blocks": 0,                                                                                                                                   +
           "Local Hit Blocks": 0,                                                                                                                                        +
           "Local Read Blocks": 0,                                                                                                                                       +
           "Local Dirtied Blocks": 0,                                                                                                                                    +
           "Local Written Blocks": 0,                                                                                                                                    +
           "Temp Read Blocks": 0,                                                                                                                                        +
           "Temp Written Blocks": 0,                                                                                                                                     +
           "Plans": [                                                                                                                                                    +
             {                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 180847.76,                                                                                                                                +
               "Total Cost": 180848.15,                                                                                                                                  +
               "Plan Rows": 4974,                                                                                                                                        +
               "Plan Width": 37,                                                                                                                                         +
               "Actual Startup Time": 35492.994,                                                                                                                         +
               "Actual Total Time": 35618.192,                                                                                                                           +
               "Actual Rows": 785477,                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["ci.person_id"],                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 90473,                                                                                                                                 +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 27,                                                                                                                                  +
               "Shared Read Blocks": 313118,                                                                                                                             +
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
                   "Startup Cost": 174995.75,                                                                                                                            +
                   "Total Cost": 180838.28,                                                                                                                              +
                   "Plan Rows": 4974,                                                                                                                                    +
                   "Plan Width": 37,                                                                                                                                     +
                   "Actual Startup Time": 26183.884,                                                                                                                     +
                   "Actual Total Time": 35155.788,                                                                                                                       +
                   "Actual Rows": 785477,                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Inner Unique": false,                                                                                                                                +
                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                                                 +
                   "Shared Hit Blocks": 23,                                                                                                                              +
                   "Shared Read Blocks": 313118,                                                                                                                         +
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
                       "Node Type": "Merge Join",                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Join Type": "Inner",                                                                                                                             +
                       "Startup Cost": 23238.62,                                                                                                                         +
                       "Total Cost": 23452.99,                                                                                                                           +
                       "Plan Rows": 148,                                                                                                                                 +
                       "Plan Width": 41,                                                                                                                                 +
                       "Actual Startup Time": 5243.705,                                                                                                                  +
                       "Actual Total Time": 5655.275,                                                                                                                    +
                       "Actual Rows": 14165,                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                +
                       "Inner Unique": true,                                                                                                                             +
                       "Merge Cond": "(mk.movie_id = t.id)",                                                                                                             +
                       "Shared Hit Blocks": 19,                                                                                                                          +
                       "Shared Read Blocks": 60468,                                                                                                                      +
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
                           "Node Type": "Sort",                                                                                                                          +
                           "Parent Relationship": "Outer",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Startup Cost": 17362.82,                                                                                                                     +
                           "Total Cost": 17362.84,                                                                                                                       +
                           "Plan Rows": 270,                                                                                                                             +
                           "Plan Width": 20,                                                                                                                             +
                           "Actual Startup Time": 3218.864,                                                                                                              +
                           "Actual Total Time": 3224.634,                                                                                                                +
                           "Actual Rows": 35548,                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                            +
                           "Sort Key": ["mk.movie_id"],                                                                                                                  +
                           "Sort Method": "quicksort",                                                                                                                   +
                           "Sort Space Used": 3278,                                                                                                                      +
                           "Sort Space Type": "Memory",                                                                                                                  +
                           "Shared Hit Blocks": 18,                                                                                                                      +
                           "Shared Read Blocks": 24471,                                                                                                                  +
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
                               "Node Type": "Merge Join",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Join Type": "Inner",                                                                                                                     +
                               "Startup Cost": 16659.99,                                                                                                                 +
                               "Total Cost": 17362.48,                                                                                                                   +
                               "Plan Rows": 270,                                                                                                                         +
                               "Plan Width": 20,                                                                                                                         +
                               "Actual Startup Time": 2615.056,                                                                                                          +
                               "Actual Total Time": 3205.852,                                                                                                            +
                               "Actual Rows": 35548,                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                        +
                               "Inner Unique": false,                                                                                                                    +
                               "Merge Cond": "(k.id = mk.keyword_id)",                                                                                                   +
                               "Shared Hit Blocks": 18,                                                                                                                  +
                               "Shared Read Blocks": 24471,                                                                                                              +
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
                                   "Startup Cost": 49.06,                                                                                                                +
                                   "Total Cost": 49.06,                                                                                                                  +
                                   "Plan Rows": 8,                                                                                                                       +
                                   "Plan Width": 20,                                                                                                                     +
                                   "Actual Startup Time": 62.473,                                                                                                        +
                                   "Actual Total Time": 62.476,                                                                                                          +
                                   "Actual Rows": 8,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Sort Key": ["k.id"],                                                                                                                 +
                                   "Sort Method": "quicksort",                                                                                                           +
                                   "Sort Space Used": 25,                                                                                                                +
                                   "Sort Space Type": "Memory",                                                                                                          +
                                   "Shared Hit Blocks": 15,                                                                                                              +
                                   "Shared Read Blocks": 20,                                                                                                             +
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
                                       "Node Type": "Index Scan",                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Scan Direction": "Forward",                                                                                                      +
                                       "Index Name": "keyword_idx_keyword",                                                                                              +
                                       "Relation Name": "keyword",                                                                                                       +
                                       "Alias": "k",                                                                                                                     +
                                       "Startup Cost": 0.01,                                                                                                             +
                                       "Total Cost": 49.06,                                                                                                              +
                                       "Plan Rows": 8,                                                                                                                   +
                                       "Plan Width": 20,                                                                                                                 +
                                       "Actual Startup Time": 26.858,                                                                                                    +
                                       "Actual Total Time": 62.417,                                                                                                      +
                                       "Actual Rows": 8,                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",+
                                       "Rows Removed by Index Recheck": 0,                                                                                               +
                                       "Shared Hit Blocks": 15,                                                                                                          +
                                       "Shared Read Blocks": 20,                                                                                                         +
                                       "Shared Dirtied Blocks": 0,                                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                                            +
                                       "Local Read Blocks": 0,                                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                                        +
                                       "Local Written Blocks": 0,                                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                                            +
                                       "Temp Written Blocks": 0                                                                                                          +
                                     }                                                                                                                                   +
                                   ]                                                                                                                                     +
                                 },                                                                                                                                      +
                                 {                                                                                                                                       +
                                   "Node Type": "Sort",                                                                                                                  +
                                   "Parent Relationship": "Inner",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Startup Cost": 16610.92,                                                                                                             +
                                   "Total Cost": 16962.16,                                                                                                               +
                                   "Plan Rows": 4523930,                                                                                                                 +
                                   "Plan Width": 8,                                                                                                                      +
                                   "Actual Startup Time": 2411.411,                                                                                                      +
                                   "Actual Total Time": 2824.926,                                                                                                        +
                                   "Actual Rows": 2796931,                                                                                                               +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Sort Key": ["mk.keyword_id"],                                                                                                        +
                                   "Sort Method": "quicksort",                                                                                                           +
                                   "Sort Space Used": 408668,                                                                                                            +
                                   "Sort Space Type": "Memory",                                                                                                          +
                                   "Shared Hit Blocks": 3,                                                                                                               +
                                   "Shared Read Blocks": 24451,                                                                                                          +
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
                                       "Node Type": "Seq Scan",                                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Relation Name": "movie_keyword",                                                                                                 +
                                       "Alias": "mk",                                                                                                                    +
                                       "Startup Cost": 0.00,                                                                                                             +
                                       "Total Cost": 1079.84,                                                                                                            +
                                       "Plan Rows": 4523930,                                                                                                             +
                                       "Plan Width": 8,                                                                                                                  +
                                       "Actual Startup Time": 0.017,                                                                                                     +
                                       "Actual Total Time": 945.560,                                                                                                     +
                                       "Actual Rows": 4523930,                                                                                                           +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Shared Hit Blocks": 3,                                                                                                           +
                                       "Shared Read Blocks": 24451,                                                                                                      +
                                       "Shared Dirtied Blocks": 0,                                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                                            +
                                       "Local Read Blocks": 0,                                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                                        +
                                       "Local Written Blocks": 0,                                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                                            +
                                       "Temp Written Blocks": 0                                                                                                          +
                                     }                                                                                                                                   +
                                   ]                                                                                                                                     +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         },                                                                                                                                              +
                         {                                                                                                                                               +
                           "Node Type": "Sort",                                                                                                                          +
                           "Parent Relationship": "Inner",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Startup Cost": 5875.81,                                                                                                                      +
                           "Total Cost": 5983.06,                                                                                                                        +
                           "Plan Rows": 1381453,                                                                                                                         +
                           "Plan Width": 21,                                                                                                                             +
                           "Actual Startup Time": 2024.619,                                                                                                              +
                           "Actual Total Time": 2218.245,                                                                                                                +
                           "Actual Rows": 1381079,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                            +
                           "Sort Key": ["t.id"],                                                                                                                         +
                           "Sort Method": "quicksort",                                                                                                                   +
                           "Sort Space Used": 145245,                                                                                                                    +
                           "Sort Space Type": "Memory",                                                                                                                  +
                           "Shared Hit Blocks": 1,                                                                                                                       +
                           "Shared Read Blocks": 35997,                                                                                                                  +
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
                               "Node Type": "Seq Scan",                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Relation Name": "title",                                                                                                                 +
                               "Alias": "t",                                                                                                                             +
                               "Startup Cost": 0.00,                                                                                                                     +
                               "Total Cost": 1500.26,                                                                                                                    +
                               "Plan Rows": 1381453,                                                                                                                     +
                               "Plan Width": 21,                                                                                                                         +
                               "Actual Startup Time": 9.816,                                                                                                             +
                               "Actual Total Time": 1265.824,                                                                                                            +
                               "Actual Rows": 1381453,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                        +
                               "Filter": "(production_year > 2000)",                                                                                                     +
                               "Rows Removed by Filter": 1146859,                                                                                                        +
                               "Shared Hit Blocks": 1,                                                                                                                   +
                               "Shared Read Blocks": 35997,                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                    +
                               "Temp Written Blocks": 0                                                                                                                  +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         }                                                                                                                                               +
                       ]                                                                                                                                                 +
                     },                                                                                                                                                  +
                     {                                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Startup Cost": 151757.13,                                                                                                                        +
                       "Total Cost": 154571.13,                                                                                                                          +
                       "Plan Rows": 36244344,                                                                                                                            +
                       "Plan Width": 8,                                                                                                                                  +
                       "Actual Startup Time": 20936.389,                                                                                                                 +
                       "Actual Total Time": 25299.737,                                                                                                                   +
                       "Actual Rows": 36443382,                                                                                                                          +
                       "Actual Loops": 1,                                                                                                                                +
                       "Sort Key": ["ci.movie_id"],                                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                                       +
                       "Sort Space Used": 3271818,                                                                                                                       +
                       "Sort Space Type": "Memory",                                                                                                                      +
                       "Shared Hit Blocks": 4,                                                                                                                           +
                       "Shared Read Blocks": 252650,                                                                                                                     +
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
                           "Node Type": "Seq Scan",                                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Relation Name": "cast_info",                                                                                                                 +
                           "Alias": "ci",                                                                                                                                +
                           "Startup Cost": 0.00,                                                                                                                         +
                           "Total Cost": 10431.00,                                                                                                                       +
                           "Plan Rows": 36244344,                                                                                                                        +
                           "Plan Width": 8,                                                                                                                              +
                           "Actual Startup Time": 0.017,                                                                                                                 +
                           "Actual Total Time": 6849.563,                                                                                                                +
                           "Actual Rows": 36244344,                                                                                                                      +
                           "Actual Loops": 1,                                                                                                                            +
                           "Shared Hit Blocks": 4,                                                                                                                       +
                           "Shared Read Blocks": 252650,                                                                                                                 +
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
             {                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 16263.33,                                                                                                                                 +
               "Total Cost": 16586.90,                                                                                                                                   +
               "Plan Rows": 4167491,                                                                                                                                     +
               "Plan Width": 19,                                                                                                                                         +
               "Actual Startup Time": 3529.454,                                                                                                                          +
               "Actual Total Time": 3981.655,                                                                                                                            +
               "Actual Rows": 4061912,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["n.id"],                                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 405945,                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 1,                                                                                                                                   +
               "Shared Read Blocks": 55612,                                                                                                                              +
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
                   "Node Type": "Seq Scan",                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Relation Name": "name",                                                                                                                              +
                   "Alias": "n",                                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                                 +
                   "Total Cost": 2032.56,                                                                                                                                +
                   "Plan Rows": 4167491,                                                                                                                                 +
                   "Plan Width": 19,                                                                                                                                     +
                   "Actual Startup Time": 53.988,                                                                                                                        +
                   "Actual Total Time": 1547.429,                                                                                                                        +
                   "Actual Rows": 4167491,                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Shared Hit Blocks": 1,                                                                                                                               +
                   "Shared Read Blocks": 55612,                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                                              +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 2730.305,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 40828.442                                                                                                                                         +
   }                                                                                                                                                                     +
 ]
(1 row)

