                                                                    QUERY PLAN                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                               +
   {                                                                                                                                             +
     "Plan": {                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                 +
       "Strategy": "Plain",                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                 +
       "Parallel Aware": false,                                                                                                                  +
       "Startup Cost": 38131.17,                                                                                                                 +
       "Total Cost": 38131.17,                                                                                                                   +
       "Plan Rows": 1,                                                                                                                           +
       "Plan Width": 96,                                                                                                                         +
       "Actual Startup Time": 26655.110,                                                                                                         +
       "Actual Total Time": 26655.110,                                                                                                           +
       "Actual Rows": 1,                                                                                                                         +
       "Actual Loops": 1,                                                                                                                        +
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
           "Node Type": "Merge Join",                                                                                                            +
           "Parent Relationship": "Outer",                                                                                                       +
           "Parallel Aware": false,                                                                                                              +
           "Join Type": "Inner",                                                                                                                 +
           "Startup Cost": 38036.80,                                                                                                             +
           "Total Cost": 38131.17,                                                                                                               +
           "Plan Rows": 1,                                                                                                                       +
           "Plan Width": 65,                                                                                                                     +
           "Actual Startup Time": 26507.127,                                                                                                     +
           "Actual Total Time": 26655.035,                                                                                                       +
           "Actual Rows": 11,                                                                                                                    +
           "Actual Loops": 1,                                                                                                                    +
           "Inner Unique": true,                                                                                                                 +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                +
           "Shared Hit Blocks": 16,                                                                                                              +
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
               "Node Type": "Sort",                                                                                                              +
               "Parent Relationship": "Outer",                                                                                                   +
               "Parallel Aware": false,                                                                                                          +
               "Startup Cost": 33816.69,                                                                                                         +
               "Total Cost": 33816.69,                                                                                                           +
               "Plan Rows": 1,                                                                                                                   +
               "Plan Width": 69,                                                                                                                 +
               "Actual Startup Time": 23590.896,                                                                                                 +
               "Actual Total Time": 23590.914,                                                                                                   +
               "Actual Rows": 145,                                                                                                               +
               "Actual Loops": 1,                                                                                                                +
               "Sort Key": ["ci.person_id"],                                                                                                     +
               "Sort Method": "quicksort",                                                                                                       +
               "Sort Space Used": 46,                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                      +
               "Shared Hit Blocks": 15,                                                                                                          +
               "Shared Read Blocks": 458988,                                                                                                     +
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
                   "Node Type": "Merge Join",                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                               +
                   "Parallel Aware": false,                                                                                                      +
                   "Join Type": "Inner",                                                                                                         +
                   "Startup Cost": 33816.69,                                                                                                     +
                   "Total Cost": 33816.69,                                                                                                       +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 69,                                                                                                             +
                   "Actual Startup Time": 23590.529,                                                                                             +
                   "Actual Total Time": 23590.608,                                                                                               +
                   "Actual Rows": 268,                                                                                                           +
                   "Actual Loops": 1,                                                                                                            +
                   "Inner Unique": true,                                                                                                         +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                   +
                   "Shared Hit Blocks": 11,                                                                                                      +
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
                       "Node Type": "Sort",                                                                                                      +
                       "Parent Relationship": "Outer",                                                                                           +
                       "Parallel Aware": false,                                                                                                  +
                       "Startup Cost": 33816.64,                                                                                                 +
                       "Total Cost": 33816.64,                                                                                                   +
                       "Plan Rows": 6,                                                                                                           +
                       "Plan Width": 73,                                                                                                         +
                       "Actual Startup Time": 23590.489,                                                                                         +
                       "Actual Total Time": 23590.503,                                                                                           +
                       "Actual Rows": 268,                                                                                                       +
                       "Actual Loops": 1,                                                                                                        +
                       "Sort Key": ["mi.info_type_id"],                                                                                          +
                       "Sort Method": "quicksort",                                                                                               +
                       "Sort Space Used": 47,                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                              +
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
                           "Startup Cost": 33491.10,                                                                                             +
                           "Total Cost": 33816.64,                                                                                               +
                           "Plan Rows": 6,                                                                                                       +
                           "Plan Width": 73,                                                                                                     +
                           "Actual Startup Time": 23220.125,                                                                                     +
                           "Actual Total Time": 23590.368,                                                                                       +
                           "Actual Rows": 268,                                                                                                   +
                           "Actual Loops": 1,                                                                                                    +
                           "Inner Unique": false,                                                                                                +
                           "Merge Cond": "(t.id = ci.movie_id)",                                                                                 +
                           "Shared Hit Blocks": 10,                                                                                              +
                           "Shared Read Blocks": 458988,                                                                                         +
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
                               "Startup Cost": 12107.88,                                                                                         +
                               "Total Cost": 12239.97,                                                                                           +
                               "Plan Rows": 6,                                                                                                   +
                               "Plan Width": 81,                                                                                                 +
                               "Actual Startup Time": 10955.059,                                                                                 +
                               "Actual Total Time": 11167.494,                                                                                   +
                               "Actual Rows": 358,                                                                                               +
                               "Actual Loops": 1,                                                                                                +
                               "Inner Unique": false,                                                                                            +
                               "Merge Cond": "(t.id = mi.movie_id)",                                                                             +
                               "Shared Hit Blocks": 6,                                                                                           +
                               "Shared Read Blocks": 206338,                                                                                     +
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
                                   "Node Type": "Merge Join",                                                                                    +
                                   "Parent Relationship": "Outer",                                                                               +
                                   "Parallel Aware": false,                                                                                      +
                                   "Join Type": "Inner",                                                                                         +
                                   "Startup Cost": 4687.29,                                                                                      +
                                   "Total Cost": 4809.06,                                                                                        +
                                   "Plan Rows": 145,                                                                                             +
                                   "Plan Width": 31,                                                                                             +
                                   "Actual Startup Time": 2542.687,                                                                              +
                                   "Actual Total Time": 2749.061,                                                                                +
                                   "Actual Rows": 6152,                                                                                          +
                                   "Actual Loops": 1,                                                                                            +
                                   "Inner Unique": true,                                                                                         +
                                   "Merge Cond": "(mi_idx.movie_id = t.id)",                                                                     +
                                   "Shared Hit Blocks": 4,                                                                                       +
                                   "Shared Read Blocks": 44448,                                                                                  +
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
                                       "Node Type": "Sort",                                                                                      +
                                       "Parent Relationship": "Outer",                                                                           +
                                       "Parallel Aware": false,                                                                                  +
                                       "Startup Cost": 605.43,                                                                                   +
                                       "Total Cost": 605.46,                                                                                     +
                                       "Plan Rows": 468,                                                                                         +
                                       "Plan Width": 10,                                                                                         +
                                       "Actual Startup Time": 627.662,                                                                           +
                                       "Actual Total Time": 629.354,                                                                             +
                                       "Actual Rows": 15849,                                                                                     +
                                       "Actual Loops": 1,                                                                                        +
                                       "Sort Key": ["mi_idx.movie_id"],                                                                          +
                                       "Sort Method": "quicksort",                                                                               +
                                       "Sort Space Used": 1127,                                                                                  +
                                       "Sort Space Type": "Memory",                                                                              +
                                       "Shared Hit Blocks": 3,                                                                                   +
                                       "Shared Read Blocks": 8451,                                                                               +
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
                                           "Node Type": "Merge Join",                                                                            +
                                           "Parent Relationship": "Outer",                                                                       +
                                           "Parallel Aware": false,                                                                              +
                                           "Join Type": "Inner",                                                                                 +
                                           "Startup Cost": 596.54,                                                                               +
                                           "Total Cost": 604.78,                                                                                 +
                                           "Plan Rows": 468,                                                                                     +
                                           "Plan Width": 10,                                                                                     +
                                           "Actual Startup Time": 618.185,                                                                       +
                                           "Actual Total Time": 622.234,                                                                         +
                                           "Actual Rows": 15849,                                                                                 +
                                           "Actual Loops": 1,                                                                                    +
                                           "Inner Unique": false,                                                                                +
                                           "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                                       +
                                           "Shared Hit Blocks": 3,                                                                               +
                                           "Shared Read Blocks": 8451,                                                                           +
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
                                               "Node Type": "Sort",                                                                              +
                                               "Parent Relationship": "Outer",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Startup Cost": 0.05,                                                                             +
                                               "Total Cost": 0.05,                                                                               +
                                               "Plan Rows": 1,                                                                                   +
                                               "Plan Width": 4,                                                                                  +
                                               "Actual Startup Time": 0.078,                                                                     +
                                               "Actual Total Time": 0.079,                                                                       +
                                               "Actual Rows": 1,                                                                                 +
                                               "Actual Loops": 1,                                                                                +
                                               "Sort Key": ["it2.id"],                                                                           +
                                               "Sort Method": "quicksort",                                                                       +
                                               "Sort Space Used": 25,                                                                            +
                                               "Sort Space Type": "Memory",                                                                      +
                                               "Shared Hit Blocks": 1,                                                                           +
                                               "Shared Read Blocks": 0,                                                                          +
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
                                                   "Node Type": "Seq Scan",                                                                      +
                                                   "Parent Relationship": "Outer",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Relation Name": "info_type",                                                                 +
                                                   "Alias": "it2",                                                                               +
                                                   "Startup Cost": 0.00,                                                                         +
                                                   "Total Cost": 0.05,                                                                           +
                                                   "Plan Rows": 1,                                                                               +
                                                   "Plan Width": 4,                                                                              +
                                                   "Actual Startup Time": 0.053,                                                                 +
                                                   "Actual Total Time": 0.059,                                                                   +
                                                   "Actual Rows": 1,                                                                             +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                  +
                                                   "Rows Removed by Filter": 112,                                                                +
                                                   "Shared Hit Blocks": 1,                                                                       +
                                                   "Shared Read Blocks": 0,                                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                   "Shared Written Blocks": 0,                                                                   +
                                                   "Local Hit Blocks": 0,                                                                        +
                                                   "Local Read Blocks": 0,                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                   "Local Written Blocks": 0,                                                                    +
                                                   "Temp Read Blocks": 0,                                                                        +
                                                   "Temp Written Blocks": 0                                                                      +
                                                 }                                                                                               +
                                               ]                                                                                                 +
                                             },                                                                                                  +
                                             {                                                                                                   +
                                               "Node Type": "Sort",                                                                              +
                                               "Parent Relationship": "Inner",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Startup Cost": 596.49,                                                                           +
                                               "Total Cost": 600.60,                                                                             +
                                               "Plan Rows": 52860,                                                                               +
                                               "Plan Width": 14,                                                                                 +
                                               "Actual Startup Time": 611.514,                                                                   +
                                               "Actual Total Time": 614.497,                                                                     +
                                               "Actual Rows": 52842,                                                                             +
                                               "Actual Loops": 1,                                                                                +
                                               "Sort Key": ["mi_idx.info_type_id"],                                                              +
                                               "Sort Method": "quicksort",                                                                       +
                                               "Sort Space Used": 4065,                                                                          +
                                               "Sort Space Type": "Memory",                                                                      +
                                               "Shared Hit Blocks": 2,                                                                           +
                                               "Shared Read Blocks": 8451,                                                                       +
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
                                                   "Node Type": "Seq Scan",                                                                      +
                                                   "Parent Relationship": "Outer",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Relation Name": "movie_info_idx",                                                            +
                                                   "Alias": "mi_idx",                                                                            +
                                                   "Startup Cost": 0.00,                                                                         +
                                                   "Total Cost": 467.71,                                                                         +
                                                   "Plan Rows": 52860,                                                                           +
                                                   "Plan Width": 14,                                                                             +
                                                   "Actual Startup Time": 0.069,                                                                 +
                                                   "Actual Total Time": 586.942,                                                                 +
                                                   "Actual Rows": 52862,                                                                         +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Filter": "(info > '8.0'::text)",                                                             +
                                                   "Rows Removed by Filter": 1327173,                                                            +
                                                   "Shared Hit Blocks": 2,                                                                       +
                                                   "Shared Read Blocks": 8451,                                                                   +
                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                   "Shared Written Blocks": 0,                                                                   +
                                                   "Local Hit Blocks": 0,                                                                        +
                                                   "Local Read Blocks": 0,                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                   "Local Written Blocks": 0,                                                                    +
                                                   "Temp Read Blocks": 0,                                                                        +
                                                   "Temp Written Blocks": 0                                                                      +
                                                 }                                                                                               +
                                               ]                                                                                                 +
                                             }                                                                                                   +
                                           ]                                                                                                     +
                                         }                                                                                                       +
                                       ]                                                                                                         +
                                     },                                                                                                          +
                                     {                                                                                                           +
                                       "Node Type": "Sort",                                                                                      +
                                       "Parent Relationship": "Inner",                                                                           +
                                       "Parallel Aware": false,                                                                                  +
                                       "Startup Cost": 4081.86,                                                                                  +
                                       "Total Cost": 4142.77,                                                                                    +
                                       "Plan Rows": 784488,                                                                                      +
                                       "Plan Width": 21,                                                                                         +
                                       "Actual Startup Time": 1913.941,                                                                          +
                                       "Actual Total Time": 2008.546,                                                                            +
                                       "Actual Rows": 784237,                                                                                    +
                                       "Actual Loops": 1,                                                                                        +
                                       "Sort Key": ["t.id"],                                                                                     +
                                       "Sort Method": "quicksort",                                                                               +
                                       "Sort Space Used": 79039,                                                                                 +
                                       "Sort Space Type": "Memory",                                                                              +
                                       "Shared Hit Blocks": 1,                                                                                   +
                                       "Shared Read Blocks": 35997,                                                                              +
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
                                           "Node Type": "Seq Scan",                                                                              +
                                           "Parent Relationship": "Outer",                                                                       +
                                           "Parallel Aware": false,                                                                              +
                                           "Relation Name": "title",                                                                             +
                                           "Alias": "t",                                                                                         +
                                           "Startup Cost": 0.00,                                                                                 +
                                           "Total Cost": 1696.56,                                                                                +
                                           "Plan Rows": 784488,                                                                                  +
                                           "Plan Width": 21,                                                                                     +
                                           "Actual Startup Time": 27.014,                                                                        +
                                           "Actual Total Time": 1413.880,                                                                        +
                                           "Actual Rows": 784488,                                                                                +
                                           "Actual Loops": 1,                                                                                    +
                                           "Filter": "((production_year >= 2008) AND (production_year <= 2014))",                                +
                                           "Rows Removed by Filter": 1743824,                                                                    +
                                           "Shared Hit Blocks": 1,                                                                               +
                                           "Shared Read Blocks": 35997,                                                                          +
                                           "Shared Dirtied Blocks": 0,                                                                           +
                                           "Shared Written Blocks": 0,                                                                           +
                                           "Local Hit Blocks": 0,                                                                                +
                                           "Local Read Blocks": 0,                                                                               +
                                           "Local Dirtied Blocks": 0,                                                                            +
                                           "Local Written Blocks": 0,                                                                            +
                                           "Temp Read Blocks": 0,                                                                                +
                                           "Temp Written Blocks": 0                                                                              +
                                         }                                                                                                       +
                                       ]                                                                                                         +
                                     }                                                                                                           +
                                   ]                                                                                                             +
                                 },                                                                                                              +
                                 {                                                                                                               +
                                   "Node Type": "Sort",                                                                                          +
                                   "Parent Relationship": "Inner",                                                                               +
                                   "Parallel Aware": false,                                                                                      +
                                   "Startup Cost": 7420.60,                                                                                      +
                                   "Total Cost": 7425.75,                                                                                        +
                                   "Plan Rows": 66310,                                                                                           +
                                   "Plan Width": 50,                                                                                             +
                                   "Actual Startup Time": 8405.394,                                                                              +
                                   "Actual Total Time": 8409.769,                                                                                +
                                   "Actual Rows": 73020,                                                                                         +
                                   "Actual Loops": 1,                                                                                            +
                                   "Sort Key": ["mi.movie_id"],                                                                                  +
                                   "Sort Method": "quicksort",                                                                                   +
                                   "Sort Space Used": 7817,                                                                                      +
                                   "Sort Space Type": "Memory",                                                                                  +
                                   "Shared Hit Blocks": 2,                                                                                       +
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
                                       "Node Type": "Seq Scan",                                                                                  +
                                       "Parent Relationship": "Outer",                                                                           +
                                       "Parallel Aware": false,                                                                                  +
                                       "Relation Name": "movie_info",                                                                            +
                                       "Alias": "mi",                                                                                            +
                                       "Startup Cost": 0.00,                                                                                     +
                                       "Total Cost": 7255.68,                                                                                    +
                                       "Plan Rows": 66310,                                                                                       +
                                       "Plan Width": 50,                                                                                         +
                                       "Actual Startup Time": 4786.764,                                                                          +
                                       "Actual Total Time": 8364.445,                                                                            +
                                       "Actual Rows": 73047,                                                                                     +
                                       "Actual Loops": 1,                                                                                        +
                                       "Filter": "((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))",                              +
                                       "Rows Removed by Filter": 14762673,                                                                       +
                                       "Shared Hit Blocks": 2,                                                                                   +
                                       "Shared Read Blocks": 161890,                                                                             +
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
                               "Actual Startup Time": 12186.223,                                                                                 +
                               "Actual Total Time": 12290.643,                                                                                   +
                               "Actual Rows": 1243723,                                                                                           +
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
                                   "Actual Startup Time": 375.277,                                                                               +
                                   "Actual Total Time": 11692.134,                                                                               +
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
                         }                                                                                                                       +
                       ]                                                                                                                         +
                     },                                                                                                                          +
                     {                                                                                                                           +
                       "Node Type": "Sort",                                                                                                      +
                       "Parent Relationship": "Inner",                                                                                           +
                       "Parallel Aware": false,                                                                                                  +
                       "Startup Cost": 0.05,                                                                                                     +
                       "Total Cost": 0.05,                                                                                                       +
                       "Plan Rows": 1,                                                                                                           +
                       "Plan Width": 4,                                                                                                          +
                       "Actual Startup Time": 0.036,                                                                                             +
                       "Actual Total Time": 0.036,                                                                                               +
                       "Actual Rows": 1,                                                                                                         +
                       "Actual Loops": 1,                                                                                                        +
                       "Sort Key": ["it1.id"],                                                                                                   +
                       "Sort Method": "quicksort",                                                                                               +
                       "Sort Space Used": 25,                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                              +
                       "Shared Hit Blocks": 1,                                                                                                   +
                       "Shared Read Blocks": 0,                                                                                                  +
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
                           "Node Type": "Seq Scan",                                                                                              +
                           "Parent Relationship": "Outer",                                                                                       +
                           "Parallel Aware": false,                                                                                              +
                           "Relation Name": "info_type",                                                                                         +
                           "Alias": "it1",                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                 +
                           "Total Cost": 0.05,                                                                                                   +
                           "Plan Rows": 1,                                                                                                       +
                           "Plan Width": 4,                                                                                                      +
                           "Actual Startup Time": 0.016,                                                                                         +
                           "Actual Total Time": 0.029,                                                                                           +
                           "Actual Rows": 1,                                                                                                     +
                           "Actual Loops": 1,                                                                                                    +
                           "Filter": "((info)::text = 'genres'::text)",                                                                          +
                           "Rows Removed by Filter": 112,                                                                                        +
                           "Shared Hit Blocks": 1,                                                                                               +
                           "Shared Read Blocks": 0,                                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                           +
                           "Shared Written Blocks": 0,                                                                                           +
                           "Local Hit Blocks": 0,                                                                                                +
                           "Local Read Blocks": 0,                                                                                               +
                           "Local Dirtied Blocks": 0,                                                                                            +
                           "Local Written Blocks": 0,                                                                                            +
                           "Temp Read Blocks": 0,                                                                                                +
                           "Temp Written Blocks": 0                                                                                              +
                         }                                                                                                                       +
                       ]                                                                                                                         +
                     }                                                                                                                           +
                   ]                                                                                                                             +
                 }                                                                                                                               +
               ]                                                                                                                                 +
             },                                                                                                                                  +
             {                                                                                                                                   +
               "Node Type": "Sort",                                                                                                              +
               "Parent Relationship": "Inner",                                                                                                   +
               "Parallel Aware": false,                                                                                                          +
               "Startup Cost": 4220.11,                                                                                                          +
               "Total Cost": 4268.52,                                                                                                            +
               "Plan Rows": 623581,                                                                                                              +
               "Plan Width": 4,                                                                                                                  +
               "Actual Startup Time": 2909.519,                                                                                                  +
               "Actual Total Time": 2972.418,                                                                                                    +
               "Actual Rows": 961555,                                                                                                            +
               "Actual Loops": 1,                                                                                                                +
               "Sort Key": ["n.id"],                                                                                                             +
               "Sort Method": "quicksort",                                                                                                       +
               "Sort Space Used": 69649,                                                                                                         +
               "Sort Space Type": "Memory",                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                           +
               "Shared Read Blocks": 55612,                                                                                                      +
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
                   "Node Type": "Seq Scan",                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                               +
                   "Parallel Aware": false,                                                                                                      +
                   "Relation Name": "name",                                                                                                      +
                   "Alias": "n",                                                                                                                 +
                   "Startup Cost": 0.00,                                                                                                         +
                   "Total Cost": 2356.12,                                                                                                        +
                   "Plan Rows": 623581,                                                                                                          +
                   "Plan Width": 4,                                                                                                              +
                   "Actual Startup Time": 1185.710,                                                                                              +
                   "Actual Total Time": 2527.912,                                                                                                +
                   "Actual Rows": 961555,                                                                                                        +
                   "Actual Loops": 1,                                                                                                            +
                   "Filter": "((gender IS NOT NULL) AND ((gender)::text = 'f'::text))",                                                          +
                   "Rows Removed by Filter": 3205936,                                                                                            +
                   "Shared Hit Blocks": 1,                                                                                                       +
                   "Shared Read Blocks": 55612,                                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                                                   +
                   "Shared Written Blocks": 0,                                                                                                   +
                   "Local Hit Blocks": 0,                                                                                                        +
                   "Local Read Blocks": 0,                                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                                    +
                   "Local Written Blocks": 0,                                                                                                    +
                   "Temp Read Blocks": 0,                                                                                                        +
                   "Temp Written Blocks": 0                                                                                                      +
                 }                                                                                                                               +
               ]                                                                                                                                 +
             }                                                                                                                                   +
           ]                                                                                                                                     +
         }                                                                                                                                       +
       ]                                                                                                                                         +
     },                                                                                                                                          +
     "Planning Time": 5837.846,                                                                                                                  +
     "Triggers": [                                                                                                                               +
     ],                                                                                                                                          +
     "Execution Time": 26713.225                                                                                                                 +
   }                                                                                                                                             +
 ]
(1 row)
