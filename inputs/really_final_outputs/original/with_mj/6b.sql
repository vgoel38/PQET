                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                   +
   {                                                                                                                                                                 +
     "Plan": {                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                      +
       "Startup Cost": 178410.99,                                                                                                                                    +
       "Total Cost": 178410.99,                                                                                                                                      +
       "Plan Rows": 1,                                                                                                                                               +
       "Plan Width": 96,                                                                                                                                             +
       "Actual Startup Time": 36127.068,                                                                                                                             +
       "Actual Total Time": 36127.068,                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                             +
       "Actual Loops": 1,                                                                                                                                            +
       "Shared Hit Blocks": 30,                                                                                                                                      +
       "Shared Read Blocks": 333169,                                                                                                                                 +
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
           "Node Type": "Merge Join",                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                           +
           "Parallel Aware": false,                                                                                                                                  +
           "Join Type": "Inner",                                                                                                                                     +
           "Startup Cost": 178410.93,                                                                                                                                +
           "Total Cost": 178410.99,                                                                                                                                  +
           "Plan Rows": 1,                                                                                                                                           +
           "Plan Width": 48,                                                                                                                                         +
           "Actual Startup Time": 36127.022,                                                                                                                         +
           "Actual Total Time": 36127.028,                                                                                                                           +
           "Actual Rows": 12,                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                        +
           "Inner Unique": true,                                                                                                                                     +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                    +
           "Shared Hit Blocks": 30,                                                                                                                                  +
           "Shared Read Blocks": 333169,                                                                                                                             +
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
               "Node Type": "Sort",                                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                                       +
               "Parallel Aware": false,                                                                                                                              +
               "Startup Cost": 176054.27,                                                                                                                            +
               "Total Cost": 176054.27,                                                                                                                              +
               "Plan Rows": 2,                                                                                                                                       +
               "Plan Width": 37,                                                                                                                                     +
               "Actual Startup Time": 33377.408,                                                                                                                     +
               "Actual Total Time": 33377.414,                                                                                                                       +
               "Actual Rows": 47,                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                    +
               "Sort Key": ["ci.person_id"],                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                           +
               "Sort Space Used": 55,                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                          +
               "Shared Hit Blocks": 29,                                                                                                                              +
               "Shared Read Blocks": 277557,                                                                                                                         +
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
                   "Startup Cost": 170430.61,                                                                                                                        +
                   "Total Cost": 176054.27,                                                                                                                          +
                   "Plan Rows": 2,                                                                                                                                   +
                   "Plan Width": 37,                                                                                                                                 +
                   "Actual Startup Time": 29831.868,                                                                                                                 +
                   "Actual Total Time": 33367.821,                                                                                                                   +
                   "Actual Rows": 383,                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                +
                   "Inner Unique": false,                                                                                                                            +
                   "Merge Cond": "(t.id = mk.movie_id)",                                                                                                             +
                   "Shared Hit Blocks": 25,                                                                                                                          +
                   "Shared Read Blocks": 277557,                                                                                                                     +
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
                       "Startup Cost": 153067.80,                                                                                                                    +
                       "Total Cost": 158696.30,                                                                                                                      +
                       "Plan Rows": 6279,                                                                                                                            +
                       "Plan Width": 29,                                                                                                                             +
                       "Actual Startup Time": 22466.536,                                                                                                             +
                       "Actual Total Time": 30300.083,                                                                                                               +
                       "Actual Rows": 3099,                                                                                                                          +
                       "Actual Loops": 1,                                                                                                                            +
                       "Inner Unique": true,                                                                                                                         +
                       "Merge Cond": "(ci.movie_id = t.id)",                                                                                                         +
                       "Shared Hit Blocks": 7,                                                                                                                       +
                       "Shared Read Blocks": 253086,                                                                                                                 +
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
                           "Node Type": "Sort",                                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                           +
                           "Parallel Aware": false,                                                                                                                  +
                           "Startup Cost": 151757.13,                                                                                                                +
                           "Total Cost": 154571.13,                                                                                                                  +
                           "Plan Rows": 36244344,                                                                                                                    +
                           "Plan Width": 8,                                                                                                                          +
                           "Actual Startup Time": 21068.533,                                                                                                         +
                           "Actual Total Time": 25385.276,                                                                                                           +
                           "Actual Rows": 36157068,                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                        +
                           "Sort Key": ["ci.movie_id"],                                                                                                              +
                           "Sort Method": "quicksort",                                                                                                               +
                           "Sort Space Used": 3271818,                                                                                                               +
                           "Sort Space Type": "Memory",                                                                                                              +
                           "Shared Hit Blocks": 4,                                                                                                                   +
                           "Shared Read Blocks": 252650,                                                                                                             +
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
                               "Node Type": "Seq Scan",                                                                                                              +
                               "Parent Relationship": "Outer",                                                                                                       +
                               "Parallel Aware": false,                                                                                                              +
                               "Relation Name": "cast_info",                                                                                                         +
                               "Alias": "ci",                                                                                                                        +
                               "Startup Cost": 0.00,                                                                                                                 +
                               "Total Cost": 10431.00,                                                                                                               +
                               "Plan Rows": 36244344,                                                                                                                +
                               "Plan Width": 8,                                                                                                                      +
                               "Actual Startup Time": 0.017,                                                                                                         +
                               "Actual Total Time": 6968.378,                                                                                                        +
                               "Actual Rows": 36244344,                                                                                                              +
                               "Actual Loops": 1,                                                                                                                    +
                               "Shared Hit Blocks": 4,                                                                                                               +
                               "Shared Read Blocks": 252650,                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                +
                               "Temp Written Blocks": 0                                                                                                              +
                             }                                                                                                                                       +
                           ]                                                                                                                                         +
                         },                                                                                                                                          +
                         {                                                                                                                                           +
                           "Node Type": "Sort",                                                                                                                      +
                           "Parent Relationship": "Inner",                                                                                                           +
                           "Parallel Aware": false,                                                                                                                  +
                           "Startup Cost": 1310.67,                                                                                                                  +
                           "Total Cost": 1310.70,                                                                                                                    +
                           "Plan Rows": 438,                                                                                                                         +
                           "Plan Width": 21,                                                                                                                         +
                           "Actual Startup Time": 776.327,                                                                                                           +
                           "Actual Total Time": 776.429,                                                                                                             +
                           "Actual Rows": 438,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                        +
                           "Sort Key": ["t.id"],                                                                                                                     +
                           "Sort Method": "quicksort",                                                                                                               +
                           "Sort Space Used": 55,                                                                                                                    +
                           "Sort Space Type": "Memory",                                                                                                              +
                           "Shared Hit Blocks": 3,                                                                                                                   +
                           "Shared Read Blocks": 436,                                                                                                                +
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
                               "Node Type": "Index Scan",                                                                                                            +
                               "Parent Relationship": "Outer",                                                                                                       +
                               "Parallel Aware": false,                                                                                                              +
                               "Scan Direction": "Forward",                                                                                                          +
                               "Index Name": "title_idx_production_year",                                                                                            +
                               "Relation Name": "title",                                                                                                             +
                               "Alias": "t",                                                                                                                         +
                               "Startup Cost": 0.01,                                                                                                                 +
                               "Total Cost": 1310.07,                                                                                                                +
                               "Plan Rows": 438,                                                                                                                     +
                               "Plan Width": 21,                                                                                                                     +
                               "Actual Startup Time": 50.368,                                                                                                        +
                               "Actual Total Time": 774.162,                                                                                                         +
                               "Actual Rows": 438,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                    +
                               "Index Cond": "(production_year > 2014)",                                                                                             +
                               "Rows Removed by Index Recheck": 0,                                                                                                   +
                               "Shared Hit Blocks": 3,                                                                                                               +
                               "Shared Read Blocks": 436,                                                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                +
                               "Temp Written Blocks": 0                                                                                                              +
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
                       "Actual Startup Time": 3057.518,                                                                                                              +
                       "Actual Total Time": 3062.437,                                                                                                                +
                       "Actual Rows": 35707,                                                                                                                         +
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
                           "Actual Startup Time": 2451.374,                                                                                                          +
                           "Actual Total Time": 3044.631,                                                                                                            +
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
                               "Actual Startup Time": 95.116,                                                                                                        +
                               "Actual Total Time": 95.118,                                                                                                          +
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
                                   "Actual Startup Time": 34.540,                                                                                                    +
                                   "Actual Total Time": 95.075,                                                                                                      +
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
                               "Actual Startup Time": 2214.171,                                                                                                      +
                               "Actual Total Time": 2630.660,                                                                                                        +
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
                                   "Actual Startup Time": 0.018,                                                                                                     +
                                   "Actual Total Time": 780.306,                                                                                                     +
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
                 }                                                                                                                                                   +
               ]                                                                                                                                                     +
             },                                                                                                                                                      +
             {                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                                       +
               "Parallel Aware": false,                                                                                                                              +
               "Startup Cost": 2356.66,                                                                                                                              +
               "Total Cost": 2356.69,                                                                                                                                +
               "Plan Rows": 400,                                                                                                                                     +
               "Plan Width": 19,                                                                                                                                     +
               "Actual Startup Time": 2749.595,                                                                                                                      +
               "Actual Total Time": 2749.596,                                                                                                                        +
               "Actual Rows": 2,                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                    +
               "Sort Key": ["n.id"],                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                           +
               "Sort Space Used": 25,                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                                               +
               "Shared Read Blocks": 55612,                                                                                                                          +
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
                   "Node Type": "Seq Scan",                                                                                                                          +
                   "Parent Relationship": "Outer",                                                                                                                   +
                   "Parallel Aware": false,                                                                                                                          +
                   "Relation Name": "name",                                                                                                                          +
                   "Alias": "n",                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                             +
                   "Total Cost": 2356.12,                                                                                                                            +
                   "Plan Rows": 400,                                                                                                                                 +
                   "Plan Width": 19,                                                                                                                                 +
                   "Actual Startup Time": 289.176,                                                                                                                   +
                   "Actual Total Time": 2749.574,                                                                                                                    +
                   "Actual Rows": 2,                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                +
                   "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                                                    +
                   "Rows Removed by Filter": 4167489,                                                                                                                +
                   "Shared Hit Blocks": 1,                                                                                                                           +
                   "Shared Read Blocks": 55612,                                                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                                                       +
                   "Shared Written Blocks": 0,                                                                                                                       +
                   "Local Hit Blocks": 0,                                                                                                                            +
                   "Local Read Blocks": 0,                                                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                                                        +
                   "Local Written Blocks": 0,                                                                                                                        +
                   "Temp Read Blocks": 0,                                                                                                                            +
                   "Temp Written Blocks": 0                                                                                                                          +
                 }                                                                                                                                                   +
               ]                                                                                                                                                     +
             }                                                                                                                                                       +
           ]                                                                                                                                                         +
         }                                                                                                                                                           +
       ]                                                                                                                                                             +
     },                                                                                                                                                              +
     "Planning Time": 2808.766,                                                                                                                                      +
     "Triggers": [                                                                                                                                                   +
     ],                                                                                                                                                              +
     "Execution Time": 36266.268                                                                                                                                     +
   }                                                                                                                                                                 +
 ]
(1 row)

