                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                               +
   {                                                                                                                                                             +
     "Plan": {                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                  +
       "Startup Cost": 183201.97,                                                                                                                                +
       "Total Cost": 183201.97,                                                                                                                                  +
       "Plan Rows": 1,                                                                                                                                           +
       "Plan Width": 96,                                                                                                                                         +
       "Actual Startup Time": 27674.122,                                                                                                                         +
       "Actual Total Time": 27674.122,                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                        +
       "Shared Hit Blocks": 28,                                                                                                                                  +
       "Shared Read Blocks": 368730,                                                                                                                             +
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
           "Startup Cost": 182987.07,                                                                                                                            +
           "Total Cost": 183201.96,                                                                                                                              +
           "Plan Rows": 1,                                                                                                                                       +
           "Plan Width": 48,                                                                                                                                     +
           "Actual Startup Time": 27375.973,                                                                                                                     +
           "Actual Total Time": 27674.035,                                                                                                                       +
           "Actual Rows": 88,                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                 +
           "Merge Cond": "(mk.movie_id = t.id)",                                                                                                                 +
           "Shared Hit Blocks": 28,                                                                                                                              +
           "Shared Read Blocks": 368730,                                                                                                                         +
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
               "Startup Cost": 177111.26,                                                                                                                        +
               "Total Cost": 177111.85,                                                                                                                          +
               "Plan Rows": 1,                                                                                                                                   +
               "Plan Width": 39,                                                                                                                                 +
               "Actual Startup Time": 25274.945,                                                                                                                 +
               "Actual Total Time": 25283.712,                                                                                                                   +
               "Actual Rows": 112,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                +
               "Inner Unique": false,                                                                                                                            +
               "Merge Cond": "(ci.movie_id = mk.movie_id)",                                                                                                      +
               "Shared Hit Blocks": 27,                                                                                                                          +
               "Shared Read Blocks": 332733,                                                                                                                     +
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
                   "Startup Cost": 159748.45,                                                                                                                    +
                   "Total Cost": 159748.72,                                                                                                                      +
                   "Plan Rows": 3479,                                                                                                                            +
                   "Plan Width": 19,                                                                                                                             +
                   "Actual Startup Time": 22219.507,                                                                                                             +
                   "Actual Total Time": 22219.579,                                                                                                               +
                   "Actual Rows": 486,                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                            +
                   "Sort Key": ["ci.movie_id"],                                                                                                                  +
                   "Sort Method": "quicksort",                                                                                                                   +
                   "Sort Space Used": 62,                                                                                                                        +
                   "Sort Space Type": "Memory",                                                                                                                  +
                   "Shared Hit Blocks": 9,                                                                                                                       +
                   "Shared Read Blocks": 308262,                                                                                                                 +
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
                       "Startup Cost": 154113.79,                                                                                                                +
                       "Total Cost": 159742.09,                                                                                                                  +
                       "Plan Rows": 3479,                                                                                                                        +
                       "Plan Width": 19,                                                                                                                         +
                       "Actual Startup Time": 22209.673,                                                                                                         +
                       "Actual Total Time": 22209.803,                                                                                                           +
                       "Actual Rows": 486,                                                                                                                       +
                       "Actual Loops": 1,                                                                                                                        +
                       "Inner Unique": true,                                                                                                                     +
                       "Merge Cond": "(ci.person_id = n.id)",                                                                                                    +
                       "Shared Hit Blocks": 5,                                                                                                                   +
                       "Shared Read Blocks": 308262,                                                                                                             +
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
                           "Startup Cost": 151757.13,                                                                                                            +
                           "Total Cost": 154571.13,                                                                                                              +
                           "Plan Rows": 36244344,                                                                                                                +
                           "Plan Width": 8,                                                                                                                      +
                           "Actual Startup Time": 18939.432,                                                                                                     +
                           "Actual Total Time": 19156.647,                                                                                                       +
                           "Actual Rows": 4303605,                                                                                                               +
                           "Actual Loops": 1,                                                                                                                    +
                           "Sort Key": ["ci.person_id"],                                                                                                         +
                           "Sort Method": "quicksort",                                                                                                           +
                           "Sort Space Used": 3271818,                                                                                                           +
                           "Sort Space Type": "Memory",                                                                                                          +
                           "Shared Hit Blocks": 4,                                                                                                               +
                           "Shared Read Blocks": 252650,                                                                                                         +
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
                               "Relation Name": "cast_info",                                                                                                     +
                               "Alias": "ci",                                                                                                                    +
                               "Startup Cost": 0.00,                                                                                                             +
                               "Total Cost": 10431.00,                                                                                                           +
                               "Plan Rows": 36244344,                                                                                                            +
                               "Plan Width": 8,                                                                                                                  +
                               "Actual Startup Time": 0.018,                                                                                                     +
                               "Actual Total Time": 6930.255,                                                                                                    +
                               "Actual Rows": 36244344,                                                                                                          +
                               "Actual Loops": 1,                                                                                                                +
                               "Shared Hit Blocks": 4,                                                                                                           +
                               "Shared Read Blocks": 252650,                                                                                                     +
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
                           "Startup Cost": 2356.66,                                                                                                              +
                           "Total Cost": 2356.69,                                                                                                                +
                           "Plan Rows": 400,                                                                                                                     +
                           "Plan Width": 19,                                                                                                                     +
                           "Actual Startup Time": 2612.472,                                                                                                      +
                           "Actual Total Time": 2612.473,                                                                                                        +
                           "Actual Rows": 2,                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                    +
                           "Sort Key": ["n.id"],                                                                                                                 +
                           "Sort Method": "quicksort",                                                                                                           +
                           "Sort Space Used": 25,                                                                                                                +
                           "Sort Space Type": "Memory",                                                                                                          +
                           "Shared Hit Blocks": 1,                                                                                                               +
                           "Shared Read Blocks": 55612,                                                                                                          +
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
                               "Relation Name": "name",                                                                                                          +
                               "Alias": "n",                                                                                                                     +
                               "Startup Cost": 0.00,                                                                                                             +
                               "Total Cost": 2356.12,                                                                                                            +
                               "Plan Rows": 400,                                                                                                                 +
                               "Plan Width": 19,                                                                                                                 +
                               "Actual Startup Time": 285.092,                                                                                                   +
                               "Actual Total Time": 2612.452,                                                                                                    +
                               "Actual Rows": 2,                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                +
                               "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                                    +
                               "Rows Removed by Filter": 4167489,                                                                                                +
                               "Shared Hit Blocks": 1,                                                                                                           +
                               "Shared Read Blocks": 55612,                                                                                                      +
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
                   "Startup Cost": 17362.82,                                                                                                                     +
                   "Total Cost": 17362.84,                                                                                                                       +
                   "Plan Rows": 270,                                                                                                                             +
                   "Plan Width": 20,                                                                                                                             +
                   "Actual Startup Time": 3055.199,                                                                                                              +
                   "Actual Total Time": 3059.433,                                                                                                                +
                   "Actual Rows": 35354,                                                                                                                         +
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
                       "Actual Startup Time": 2443.355,                                                                                                          +
                       "Actual Total Time": 3042.164,                                                                                                            +
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
                           "Actual Startup Time": 93.296,                                                                                                        +
                           "Actual Total Time": 93.300,                                                                                                          +
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
                               "Actual Startup Time": 41.039,                                                                                                    +
                               "Actual Total Time": 93.256,                                                                                                      +
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
                           "Actual Startup Time": 2207.608,                                                                                                      +
                           "Actual Total Time": 2631.066,                                                                                                        +
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
                               "Actual Total Time": 767.991,                                                                                                     +
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
                 }                                                                                                                                               +
               ]                                                                                                                                                 +
             },                                                                                                                                                  +
             {                                                                                                                                                   +
               "Node Type": "Sort",                                                                                                                              +
               "Parent Relationship": "Inner",                                                                                                                   +
               "Parallel Aware": false,                                                                                                                          +
               "Startup Cost": 5875.81,                                                                                                                          +
               "Total Cost": 5983.06,                                                                                                                            +
               "Plan Rows": 1381453,                                                                                                                             +
               "Plan Width": 21,                                                                                                                                 +
               "Actual Startup Time": 2038.330,                                                                                                                  +
               "Actual Total Time": 2202.631,                                                                                                                    +
               "Actual Rows": 1378920,                                                                                                                           +
               "Actual Loops": 1,                                                                                                                                +
               "Sort Key": ["t.id"],                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                       +
               "Sort Space Used": 145245,                                                                                                                        +
               "Sort Space Type": "Memory",                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                           +
               "Shared Read Blocks": 35997,                                                                                                                      +
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
                   "Relation Name": "title",                                                                                                                     +
                   "Alias": "t",                                                                                                                                 +
                   "Startup Cost": 0.00,                                                                                                                         +
                   "Total Cost": 1500.26,                                                                                                                        +
                   "Plan Rows": 1381453,                                                                                                                         +
                   "Plan Width": 21,                                                                                                                             +
                   "Actual Startup Time": 20.762,                                                                                                                +
                   "Actual Total Time": 1261.844,                                                                                                                +
                   "Actual Rows": 1381453,                                                                                                                       +
                   "Actual Loops": 1,                                                                                                                            +
                   "Filter": "(production_year > 2000)",                                                                                                         +
                   "Rows Removed by Filter": 1146859,                                                                                                            +
                   "Shared Hit Blocks": 1,                                                                                                                       +
                   "Shared Read Blocks": 35997,                                                                                                                  +
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
     "Planning Time": 2699.690,                                                                                                                                  +
     "Triggers": [                                                                                                                                               +
     ],                                                                                                                                                          +
     "Execution Time": 27806.795                                                                                                                                 +
   }                                                                                                                                                             +
 ]
(1 row)

