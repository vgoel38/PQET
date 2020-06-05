                                                                      QUERY PLAN                                                                      
------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                   +
   {                                                                                                                                                 +
     "Plan": {                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                     +
       "Strategy": "Plain",                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                     +
       "Parallel Aware": false,                                                                                                                      +
       "Startup Cost": 54897.44,                                                                                                                     +
       "Total Cost": 54897.44,                                                                                                                       +
       "Plan Rows": 1,                                                                                                                               +
       "Plan Width": 96,                                                                                                                             +
       "Actual Startup Time": 28903.588,                                                                                                             +
       "Actual Total Time": 28903.588,                                                                                                               +
       "Actual Rows": 1,                                                                                                                             +
       "Actual Loops": 1,                                                                                                                            +
       "Shared Hit Blocks": 16,                                                                                                                      +
       "Shared Read Blocks": 514600,                                                                                                                 +
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
           "Startup Cost": 54897.34,                                                                                                                 +
           "Total Cost": 54897.44,                                                                                                                   +
           "Plan Rows": 5,                                                                                                                           +
           "Plan Width": 65,                                                                                                                         +
           "Actual Startup Time": 28863.751,                                                                                                         +
           "Actual Total Time": 28877.522,                                                                                                           +
           "Actual Rows": 28073,                                                                                                                     +
           "Actual Loops": 1,                                                                                                                        +
           "Inner Unique": true,                                                                                                                     +
           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                           +
           "Shared Hit Blocks": 16,                                                                                                                  +
           "Shared Read Blocks": 514600,                                                                                                             +
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
               "Startup Cost": 54897.29,                                                                                                             +
               "Total Cost": 54897.34,                                                                                                               +
               "Plan Rows": 622,                                                                                                                     +
               "Plan Width": 69,                                                                                                                     +
               "Actual Startup Time": 28858.539,                                                                                                     +
               "Actual Total Time": 28862.998,                                                                                                       +
               "Actual Rows": 56147,                                                                                                                 +
               "Actual Loops": 1,                                                                                                                    +
               "Sort Key": ["mi_idx.info_type_id"],                                                                                                  +
               "Sort Method": "quicksort",                                                                                                           +
               "Sort Space Used": 10203,                                                                                                             +
               "Sort Space Type": "Memory",                                                                                                          +
               "Shared Hit Blocks": 15,                                                                                                              +
               "Shared Read Blocks": 514600,                                                                                                         +
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
                   "Startup Cost": 54632.87,                                                                                                         +
                   "Total Cost": 54896.39,                                                                                                           +
                   "Plan Rows": 622,                                                                                                                 +
                   "Plan Width": 69,                                                                                                                 +
                   "Actual Startup Time": 28489.563,                                                                                                 +
                   "Actual Total Time": 28834.150,                                                                                                   +
                   "Actual Rows": 84358,                                                                                                             +
                   "Actual Loops": 1,                                                                                                                +
                   "Inner Unique": true,                                                                                                             +
                   "Merge Cond": "(ci.person_id = n.id)",                                                                                            +
                   "Shared Hit Blocks": 11,                                                                                                          +
                   "Shared Read Blocks": 514600,                                                                                                     +
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
                       "Startup Cost": 46677.54,                                                                                                     +
                       "Total Cost": 46677.66,                                                                                                       +
                       "Plan Rows": 1491,                                                                                                            +
                       "Plan Width": 73,                                                                                                             +
                       "Actual Startup Time": 25270.570,                                                                                             +
                       "Actual Total Time": 25280.178,                                                                                               +
                       "Actual Rows": 84359,                                                                                                         +
                       "Actual Loops": 1,                                                                                                            +
                       "Sort Key": ["ci.person_id"],                                                                                                 +
                       "Sort Method": "quicksort",                                                                                                   +
                       "Sort Space Used": 20487,                                                                                                     +
                       "Sort Space Type": "Memory",                                                                                                  +
                       "Shared Hit Blocks": 10,                                                                                                      +
                       "Shared Read Blocks": 458988,                                                                                                 +
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
                           "Startup Cost": 45875.46,                                                                                                 +
                           "Total Cost": 46675.10,                                                                                                   +
                           "Plan Rows": 1491,                                                                                                        +
                           "Plan Width": 73,                                                                                                         +
                           "Actual Startup Time": 23865.612,                                                                                         +
                           "Actual Total Time": 25203.637,                                                                                           +
                           "Actual Rows": 162621,                                                                                                    +
                           "Actual Loops": 1,                                                                                                        +
                           "Inner Unique": false,                                                                                                    +
                           "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                 +
                           "Shared Hit Blocks": 10,                                                                                                  +
                           "Shared Read Blocks": 458988,                                                                                             +
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
                               "Node Type": "Merge Join",                                                                                            +
                               "Parent Relationship": "Outer",                                                                                       +
                               "Parallel Aware": false,                                                                                              +
                               "Join Type": "Inner",                                                                                                 +
                               "Startup Cost": 41144.15,                                                                                             +
                               "Total Cost": 41730.01,                                                                                               +
                               "Plan Rows": 1690,                                                                                                    +
                               "Plan Width": 75,                                                                                                     +
                               "Actual Startup Time": 23016.825,                                                                                     +
                               "Actual Total Time": 24072.036,                                                                                       +
                               "Actual Rows": 93237,                                                                                                 +
                               "Actual Loops": 1,                                                                                                    +
                               "Inner Unique": false,                                                                                                +
                               "Merge Cond": "(t.id = ci.movie_id)",                                                                                 +
                               "Shared Hit Blocks": 8,                                                                                               +
                               "Shared Read Blocks": 450537,                                                                                         +
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
                                   "Startup Cost": 19760.94,                                                                                         +
                                   "Total Cost": 20153.62,                                                                                           +
                                   "Plan Rows": 1674,                                                                                                +
                                   "Plan Width": 67,                                                                                                 +
                                   "Actual Startup Time": 10786.021,                                                                                 +
                                   "Actual Total Time": 11552.617,                                                                                   +
                                   "Actual Rows": 186591,                                                                                            +
                                   "Actual Loops": 1,                                                                                                +
                                   "Inner Unique": true,                                                                                             +
                                   "Merge Cond": "(mi.movie_id = t.id)",                                                                             +
                                   "Shared Hit Blocks": 4,                                                                                           +
                                   "Shared Read Blocks": 197887,                                                                                     +
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
                                       "Node Type": "Sort",                                                                                          +
                                       "Parent Relationship": "Outer",                                                                               +
                                       "Parallel Aware": false,                                                                                      +
                                       "Startup Cost": 10106.59,                                                                                     +
                                       "Total Cost": 10106.72,                                                                                       +
                                       "Plan Rows": 1674,                                                                                            +
                                       "Plan Width": 46,                                                                                             +
                                       "Actual Startup Time": 8423.365,                                                                              +
                                       "Actual Total Time": 8440.502,                                                                                +
                                       "Actual Rows": 186591,                                                                                        +
                                       "Actual Loops": 1,                                                                                            +
                                       "Sort Key": ["mi.movie_id"],                                                                                  +
                                       "Sort Method": "quicksort",                                                                                   +
                                       "Sort Space Used": 14891,                                                                                     +
                                       "Sort Space Type": "Memory",                                                                                  +
                                       "Shared Hit Blocks": 3,                                                                                       +
                                       "Shared Read Blocks": 161890,                                                                                 +
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
                                           "Startup Cost": 10074.32,                                                                                 +
                                           "Total Cost": 10103.81,                                                                                   +
                                           "Plan Rows": 1674,                                                                                        +
                                           "Plan Width": 46,                                                                                         +
                                           "Actual Startup Time": 8317.694,                                                                          +
                                           "Actual Total Time": 8360.277,                                                                            +
                                           "Actual Rows": 186594,                                                                                    +
                                           "Actual Loops": 1,                                                                                        +
                                           "Inner Unique": false,                                                                                    +
                                           "Merge Cond": "(it1.id = mi.info_type_id)",                                                               +
                                           "Shared Hit Blocks": 3,                                                                                   +
                                           "Shared Read Blocks": 161890,                                                                             +
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
                                               "Startup Cost": 0.05,                                                                                 +
                                               "Total Cost": 0.05,                                                                                   +
                                               "Plan Rows": 1,                                                                                       +
                                               "Plan Width": 4,                                                                                      +
                                               "Actual Startup Time": 0.076,                                                                         +
                                               "Actual Total Time": 0.077,                                                                           +
                                               "Actual Rows": 1,                                                                                     +
                                               "Actual Loops": 1,                                                                                    +
                                               "Sort Key": ["it1.id"],                                                                               +
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
                                                   "Relation Name": "info_type",                                                                     +
                                                   "Alias": "it1",                                                                                   +
                                                   "Startup Cost": 0.00,                                                                             +
                                                   "Total Cost": 0.05,                                                                               +
                                                   "Plan Rows": 1,                                                                                   +
                                                   "Plan Width": 4,                                                                                  +
                                                   "Actual Startup Time": 0.020,                                                                     +
                                                   "Actual Total Time": 0.060,                                                                       +
                                                   "Actual Rows": 1,                                                                                 +
                                                   "Actual Loops": 1,                                                                                +
                                                   "Filter": "((info)::text = 'genres'::text)",                                                      +
                                                   "Rows Removed by Filter": 112,                                                                    +
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
                                             },                                                                                                      +
                                             {                                                                                                       +
                                               "Node Type": "Sort",                                                                                  +
                                               "Parent Relationship": "Inner",                                                                       +
                                               "Parallel Aware": false,                                                                              +
                                               "Startup Cost": 10074.27,                                                                             +
                                               "Total Cost": 10088.96,                                                                               +
                                               "Plan Rows": 189170,                                                                                  +
                                               "Plan Width": 50,                                                                                     +
                                               "Actual Startup Time": 8317.606,                                                                      +
                                               "Actual Total Time": 8326.440,                                                                        +
                                               "Actual Rows": 186595,                                                                                +
                                               "Actual Loops": 1,                                                                                    +
                                               "Sort Key": ["mi.info_type_id"],                                                                      +
                                               "Sort Method": "quicksort",                                                                           +
                                               "Sort Space Used": 16323,                                                                             +
                                               "Sort Space Type": "Memory",                                                                          +
                                               "Shared Hit Blocks": 2,                                                                               +
                                               "Shared Read Blocks": 161890,                                                                         +
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
                                                   "Relation Name": "movie_info",                                                                    +
                                                   "Alias": "mi",                                                                                    +
                                                   "Startup Cost": 0.00,                                                                             +
                                                   "Total Cost": 9559.36,                                                                            +
                                                   "Plan Rows": 189170,                                                                              +
                                                   "Plan Width": 50,                                                                                 +
                                                   "Actual Startup Time": 2744.959,                                                                  +
                                                   "Actual Total Time": 8257.060,                                                                    +
                                                   "Actual Rows": 188971,                                                                            +
                                                   "Actual Loops": 1,                                                                                +
                                                   "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                   +
                                                   "Rows Removed by Filter": 14646749,                                                               +
                                                   "Shared Hit Blocks": 2,                                                                           +
                                                   "Shared Read Blocks": 161890,                                                                     +
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
                                     },                                                                                                              +
                                     {                                                                                                               +
                                       "Node Type": "Sort",                                                                                          +
                                       "Parent Relationship": "Inner",                                                                               +
                                       "Parallel Aware": false,                                                                                      +
                                       "Startup Cost": 9654.35,                                                                                      +
                                       "Total Cost": 9850.65,                                                                                        +
                                       "Plan Rows": 2528312,                                                                                         +
                                       "Plan Width": 21,                                                                                             +
                                       "Actual Startup Time": 2362.544,                                                                              +
                                       "Actual Total Time": 2690.770,                                                                                +
                                       "Actual Rows": 2525794,                                                                                       +
                                       "Actual Loops": 1,                                                                                            +
                                       "Sort Key": ["t.id"],                                                                                         +
                                       "Sort Method": "quicksort",                                                                                   +
                                       "Sort Space Used": 275055,                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                  +
                                       "Shared Hit Blocks": 1,                                                                                       +
                                       "Shared Read Blocks": 35997,                                                                                  +
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
                                           "Node Type": "Seq Scan",                                                                                  +
                                           "Parent Relationship": "Outer",                                                                           +
                                           "Parallel Aware": false,                                                                                  +
                                           "Relation Name": "title",                                                                                 +
                                           "Alias": "t",                                                                                             +
                                           "Startup Cost": 0.00,                                                                                     +
                                           "Total Cost": 1303.96,                                                                                    +
                                           "Plan Rows": 2528312,                                                                                     +
                                           "Plan Width": 21,                                                                                         +
                                           "Actual Startup Time": 64.161,                                                                            +
                                           "Actual Total Time": 1046.233,                                                                            +
                                           "Actual Rows": 2528312,                                                                                   +
                                           "Actual Loops": 1,                                                                                        +
                                           "Shared Hit Blocks": 1,                                                                                   +
                                           "Shared Read Blocks": 35997,                                                                              +
                                           "Shared Dirtied Blocks": 0,                                                                               +
                                           "Shared Written Blocks": 0,                                                                               +
                                           "Local Hit Blocks": 0,                                                                                    +
                                           "Local Read Blocks": 0,                                                                                   +
                                           "Local Dirtied Blocks": 0,                                                                                +
                                           "Local Written Blocks": 0,                                                                                +
                                           "Temp Read Blocks": 0,                                                                                    +
                                           "Temp Written Blocks": 0                                                                                  +
                                         }                                                                                                           +
                                       ]                                                                                                             +
                                     }                                                                                                               +
                                   ]                                                                                                                 +
                                 },                                                                                                                  +
                                 {                                                                                                                   +
                                   "Node Type": "Sort",                                                                                              +
                                   "Parent Relationship": "Inner",                                                                                   +
                                   "Parallel Aware": false,                                                                                          +
                                   "Startup Cost": 21383.21,                                                                                         +
                                   "Total Cost": 21479.94,                                                                                           +
                                   "Plan Rows": 1245851,                                                                                             +
                                   "Plan Width": 8,                                                                                                  +
                                   "Actual Startup Time": 12228.745,                                                                                 +
                                   "Actual Total Time": 12344.092,                                                                                   +
                                   "Actual Rows": 1269376,                                                                                           +
                                   "Actual Loops": 1,                                                                                                +
                                   "Sort Key": ["ci.movie_id"],                                                                                      +
                                   "Sort Method": "quicksort",                                                                                       +
                                   "Sort Space Used": 107499,                                                                                        +
                                   "Sort Space Type": "Memory",                                                                                      +
                                   "Shared Hit Blocks": 4,                                                                                           +
                                   "Shared Read Blocks": 252650,                                                                                     +
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
                                       "Node Type": "Seq Scan",                                                                                      +
                                       "Parent Relationship": "Outer",                                                                               +
                                       "Parallel Aware": false,                                                                                      +
                                       "Relation Name": "cast_info",                                                                                 +
                                       "Alias": "ci",                                                                                                +
                                       "Startup Cost": 0.00,                                                                                         +
                                       "Total Cost": 17466.00,                                                                                       +
                                       "Plan Rows": 1245851,                                                                                         +
                                       "Plan Width": 8,                                                                                              +
                                       "Actual Startup Time": 409.788,                                                                               +
                                       "Actual Total Time": 11740.452,                                                                               +
                                       "Actual Rows": 1244716,                                                                                       +
                                       "Actual Loops": 1,                                                                                            +
                                       "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                                       "Rows Removed by Filter": 34999628,                                                                           +
                                       "Shared Hit Blocks": 4,                                                                                       +
                                       "Shared Read Blocks": 252650,                                                                                 +
                                       "Shared Dirtied Blocks": 0,                                                                                   +
                                       "Shared Written Blocks": 0,                                                                                   +
                                       "Local Hit Blocks": 0,                                                                                        +
                                       "Local Read Blocks": 0,                                                                                       +
                                       "Local Dirtied Blocks": 0,                                                                                    +
                                       "Local Written Blocks": 0,                                                                                    +
                                       "Temp Read Blocks": 0,                                                                                        +
                                       "Temp Written Blocks": 0                                                                                      +
                                     }                                                                                                               +
                                   ]                                                                                                                 +
                                 }                                                                                                                   +
                               ]                                                                                                                     +
                             },                                                                                                                      +
                             {                                                                                                                       +
                               "Node Type": "Sort",                                                                                                  +
                               "Parent Relationship": "Inner",                                                                                       +
                               "Parallel Aware": false,                                                                                              +
                               "Startup Cost": 4731.30,                                                                                              +
                               "Total Cost": 4838.45,                                                                                                +
                               "Plan Rows": 1380035,                                                                                                 +
                               "Plan Width": 14,                                                                                                     +
                               "Actual Startup Time": 847.739,                                                                                       +
                               "Actual Total Time": 942.959,                                                                                         +
                               "Actual Rows": 1462642,                                                                                               +
                               "Actual Loops": 1,                                                                                                    +
                               "Sort Key": ["mi_idx.movie_id"],                                                                                      +
                               "Sort Method": "quicksort",                                                                                           +
                               "Sort Space Used": 128214,                                                                                            +
                               "Sort Space Type": "Memory",                                                                                          +
                               "Shared Hit Blocks": 2,                                                                                               +
                               "Shared Read Blocks": 8451,                                                                                           +
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
                                   "Relation Name": "movie_info_idx",                                                                                +
                                   "Alias": "mi_idx",                                                                                                +
                                   "Startup Cost": 0.00,                                                                                             +
                                   "Total Cost": 360.56,                                                                                             +
                                   "Plan Rows": 1380035,                                                                                             +
                                   "Plan Width": 14,                                                                                                 +
                                   "Actual Startup Time": 0.014,                                                                                     +
                                   "Actual Total Time": 321.689,                                                                                     +
                                   "Actual Rows": 1380035,                                                                                           +
                                   "Actual Loops": 1,                                                                                                +
                                   "Shared Hit Blocks": 2,                                                                                           +
                                   "Shared Read Blocks": 8451,                                                                                       +
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
                             }                                                                                                                       +
                           ]                                                                                                                         +
                         }                                                                                                                           +
                       ]                                                                                                                             +
                     },                                                                                                                              +
                     {                                                                                                                               +
                       "Node Type": "Sort",                                                                                                          +
                       "Parent Relationship": "Inner",                                                                                               +
                       "Parallel Aware": false,                                                                                                      +
                       "Startup Cost": 7955.33,                                                                                                      +
                       "Total Cost": 8090.37,                                                                                                        +
                       "Plan Rows": 1739438,                                                                                                         +
                       "Plan Width": 4,                                                                                                              +
                       "Actual Startup Time": 3218.830,                                                                                              +
                       "Actual Total Time": 3357.264,                                                                                                +
                       "Actual Rows": 1739579,                                                                                                       +
                       "Actual Loops": 1,                                                                                                            +
                       "Sort Key": ["n.id"],                                                                                                         +
                       "Sort Method": "quicksort",                                                                                                   +
                       "Sort Space Used": 130695,                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                                       +
                       "Shared Read Blocks": 55612,                                                                                                  +
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
                           "Relation Name": "name",                                                                                                  +
                           "Alias": "n",                                                                                                             +
                           "Startup Cost": 0.00,                                                                                                     +
                           "Total Cost": 2356.12,                                                                                                    +
                           "Plan Rows": 1739438,                                                                                                     +
                           "Plan Width": 4,                                                                                                          +
                           "Actual Startup Time": 26.238,                                                                                            +
                           "Actual Total Time": 2492.988,                                                                                            +
                           "Actual Rows": 1739579,                                                                                                   +
                           "Actual Loops": 1,                                                                                                        +
                           "Filter": "((gender)::text = 'm'::text)",                                                                                 +
                           "Rows Removed by Filter": 2427912,                                                                                        +
                           "Shared Hit Blocks": 1,                                                                                                   +
                           "Shared Read Blocks": 55612,                                                                                              +
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
                     }                                                                                                                               +
                   ]                                                                                                                                 +
                 }                                                                                                                                   +
               ]                                                                                                                                     +
             },                                                                                                                                      +
             {                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                       +
               "Parallel Aware": false,                                                                                                              +
               "Startup Cost": 0.05,                                                                                                                 +
               "Total Cost": 0.05,                                                                                                                   +
               "Plan Rows": 1,                                                                                                                       +
               "Plan Width": 4,                                                                                                                      +
               "Actual Startup Time": 0.036,                                                                                                         +
               "Actual Total Time": 0.036,                                                                                                           +
               "Actual Rows": 1,                                                                                                                     +
               "Actual Loops": 1,                                                                                                                    +
               "Sort Key": ["it2.id"],                                                                                                               +
               "Sort Method": "quicksort",                                                                                                           +
               "Sort Space Used": 25,                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                               +
               "Shared Read Blocks": 0,                                                                                                              +
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
                   "Relation Name": "info_type",                                                                                                     +
                   "Alias": "it2",                                                                                                                   +
                   "Startup Cost": 0.00,                                                                                                             +
                   "Total Cost": 0.05,                                                                                                               +
                   "Plan Rows": 1,                                                                                                                   +
                   "Plan Width": 4,                                                                                                                  +
                   "Actual Startup Time": 0.026,                                                                                                     +
                   "Actual Total Time": 0.028,                                                                                                       +
                   "Actual Rows": 1,                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                +
                   "Filter": "((info)::text = 'votes'::text)",                                                                                       +
                   "Rows Removed by Filter": 112,                                                                                                    +
                   "Shared Hit Blocks": 1,                                                                                                           +
                   "Shared Read Blocks": 0,                                                                                                          +
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
     "Planning Time": 5833.179,                                                                                                                      +
     "Triggers": [                                                                                                                                   +
     ],                                                                                                                                              +
     "Execution Time": 29006.129                                                                                                                     +
   }                                                                                                                                                 +
 ]
(1 row)

