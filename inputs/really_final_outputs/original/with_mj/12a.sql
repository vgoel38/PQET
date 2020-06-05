                                                        QUERY PLAN                                                        
--------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                       +
   {                                                                                                                     +
     "Plan": {                                                                                                           +
       "Node Type": "Aggregate",                                                                                         +
       "Strategy": "Plain",                                                                                              +
       "Partial Mode": "Simple",                                                                                         +
       "Parallel Aware": false,                                                                                          +
       "Startup Cost": 21905.99,                                                                                         +
       "Total Cost": 21905.99,                                                                                           +
       "Plan Rows": 1,                                                                                                   +
       "Plan Width": 96,                                                                                                 +
       "Actual Startup Time": 13509.556,                                                                                 +
       "Actual Total Time": 13509.556,                                                                                   +
       "Actual Rows": 1,                                                                                                 +
       "Actual Loops": 1,                                                                                                +
       "Shared Hit Blocks": 17,                                                                                          +
       "Shared Read Blocks": 228116,                                                                                     +
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
           "Startup Cost": 21892.82,                                                                                     +
           "Total Cost": 21905.99,                                                                                       +
           "Plan Rows": 1,                                                                                               +
           "Plan Width": 42,                                                                                             +
           "Actual Startup Time": 13489.253,                                                                             +
           "Actual Total Time": 13509.372,                                                                               +
           "Actual Rows": 397,                                                                                           +
           "Actual Loops": 1,                                                                                            +
           "Inner Unique": true,                                                                                         +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                      +
           "Shared Hit Blocks": 17,                                                                                      +
           "Shared Read Blocks": 228116,                                                                                 +
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
               "Startup Cost": 21548.72,                                                                                 +
               "Total Cost": 21548.72,                                                                                   +
               "Plan Rows": 1,                                                                                           +
               "Plan Width": 27,                                                                                         +
               "Actual Startup Time": 13314.944,                                                                         +
               "Actual Total Time": 13315.038,                                                                           +
               "Actual Rows": 708,                                                                                       +
               "Actual Loops": 1,                                                                                        +
               "Sort Key": ["mc.company_id"],                                                                            +
               "Sort Method": "quicksort",                                                                               +
               "Sort Space Used": 76,                                                                                    +
               "Sort Space Type": "Memory",                                                                              +
               "Shared Hit Blocks": 15,                                                                                  +
               "Shared Read Blocks": 225124,                                                                             +
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
                   "Startup Cost": 21548.71,                                                                             +
                   "Total Cost": 21548.72,                                                                               +
                   "Plan Rows": 1,                                                                                       +
                   "Plan Width": 27,                                                                                     +
                   "Actual Startup Time": 13314.483,                                                                     +
                   "Actual Total Time": 13314.671,                                                                       +
                   "Actual Rows": 708,                                                                                   +
                   "Actual Loops": 1,                                                                                    +
                   "Inner Unique": true,                                                                                 +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                           +
                   "Shared Hit Blocks": 11,                                                                              +
                   "Shared Read Blocks": 225124,                                                                         +
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
                       "Startup Cost": 21548.67,                                                                         +
                       "Total Cost": 21548.67,                                                                           +
                       "Plan Rows": 13,                                                                                  +
                       "Plan Width": 31,                                                                                 +
                       "Actual Startup Time": 13314.462,                                                                 +
                       "Actual Total Time": 13314.494,                                                                   +
                       "Actual Rows": 708,                                                                               +
                       "Actual Loops": 1,                                                                                +
                       "Sort Key": ["mi.info_type_id"],                                                                  +
                       "Sort Method": "quicksort",                                                                       +
                       "Sort Space Used": 81,                                                                            +
                       "Sort Space Type": "Memory",                                                                      +
                       "Shared Hit Blocks": 10,                                                                          +
                       "Shared Read Blocks": 225124,                                                                     +
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
                           "Node Type": "Merge Join",                                                                    +
                           "Parent Relationship": "Outer",                                                               +
                           "Parallel Aware": false,                                                                      +
                           "Join Type": "Inner",                                                                         +
                           "Startup Cost": 21548.65,                                                                     +
                           "Total Cost": 21548.66,                                                                       +
                           "Plan Rows": 13,                                                                              +
                           "Plan Width": 31,                                                                             +
                           "Actual Startup Time": 13314.096,                                                             +
                           "Actual Total Time": 13314.301,                                                               +
                           "Actual Rows": 708,                                                                           +
                           "Actual Loops": 1,                                                                            +
                           "Inner Unique": true,                                                                         +
                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                 +
                           "Shared Hit Blocks": 10,                                                                      +
                           "Shared Read Blocks": 225124,                                                                 +
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
                               "Node Type": "Sort",                                                                      +
                               "Parent Relationship": "Outer",                                                           +
                               "Parallel Aware": false,                                                                  +
                               "Startup Cost": 21548.62,                                                                 +
                               "Total Cost": 21548.62,                                                                   +
                               "Plan Rows": 35,                                                                          +
                               "Plan Width": 35,                                                                         +
                               "Actual Startup Time": 13313.855,                                                         +
                               "Actual Total Time": 13313.971,                                                           +
                               "Actual Rows": 1934,                                                                      +
                               "Actual Loops": 1,                                                                        +
                               "Sort Key": ["mc.company_type_id"],                                                       +
                               "Sort Method": "quicksort",                                                               +
                               "Sort Space Used": 206,                                                                   +
                               "Sort Space Type": "Memory",                                                              +
                               "Shared Hit Blocks": 9,                                                                   +
                               "Shared Read Blocks": 225124,                                                             +
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
                                   "Startup Cost": 21031.61,                                                             +
                                   "Total Cost": 21548.59,                                                               +
                                   "Plan Rows": 35,                                                                      +
                                   "Plan Width": 35,                                                                     +
                                   "Actual Startup Time": 12799.617,                                                     +
                                   "Actual Total Time": 13313.289,                                                       +
                                   "Actual Rows": 1934,                                                                  +
                                   "Actual Loops": 1,                                                                    +
                                   "Inner Unique": false,                                                                +
                                   "Merge Cond": "(t.id = mc.movie_id)",                                                 +
                                   "Shared Hit Blocks": 9,                                                               +
                                   "Shared Read Blocks": 225124,                                                         +
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
                                       "Startup Cost": 11626.16,                                                         +
                                       "Total Cost": 11737.99,                                                           +
                                       "Plan Rows": 14,                                                                  +
                                       "Plan Width": 39,                                                                 +
                                       "Actual Startup Time": 11262.831,                                                 +
                                       "Actual Total Time": 11418.885,                                                   +
                                       "Actual Rows": 557,                                                               +
                                       "Actual Loops": 1,                                                                +
                                       "Inner Unique": false,                                                            +
                                       "Merge Cond": "(t.id = mi.movie_id)",                                             +
                                       "Shared Hit Blocks": 6,                                                           +
                                       "Shared Read Blocks": 206338,                                                     +
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
                                           "Startup Cost": 3601.22,                                                      +
                                           "Total Cost": 3670.47,                                                        +
                                           "Plan Rows": 83,                                                              +
                                           "Plan Width": 31,                                                             +
                                           "Actual Startup Time": 2652.385,                                              +
                                           "Actual Total Time": 2774.123,                                                +
                                           "Actual Rows": 4047,                                                          +
                                           "Actual Loops": 1,                                                            +
                                           "Inner Unique": true,                                                         +
                                           "Merge Cond": "(mi_idx.movie_id = t.id)",                                     +
                                           "Shared Hit Blocks": 4,                                                       +
                                           "Shared Read Blocks": 44448,                                                  +
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
                                               "Startup Cost": 605.43,                                                   +
                                               "Total Cost": 605.46,                                                     +
                                               "Plan Rows": 468,                                                         +
                                               "Plan Width": 10,                                                         +
                                               "Actual Startup Time": 635.711,                                           +
                                               "Actual Total Time": 637.324,                                             +
                                               "Actual Rows": 15849,                                                     +
                                               "Actual Loops": 1,                                                        +
                                               "Sort Key": ["mi_idx.movie_id"],                                          +
                                               "Sort Method": "quicksort",                                               +
                                               "Sort Space Used": 1127,                                                  +
                                               "Sort Space Type": "Memory",                                              +
                                               "Shared Hit Blocks": 3,                                                   +
                                               "Shared Read Blocks": 8451,                                               +
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
                                                   "Startup Cost": 596.54,                                               +
                                                   "Total Cost": 604.78,                                                 +
                                                   "Plan Rows": 468,                                                     +
                                                   "Plan Width": 10,                                                     +
                                                   "Actual Startup Time": 625.345,                                       +
                                                   "Actual Total Time": 629.886,                                         +
                                                   "Actual Rows": 15849,                                                 +
                                                   "Actual Loops": 1,                                                    +
                                                   "Inner Unique": false,                                                +
                                                   "Merge Cond": "(it2.id = mi_idx.info_type_id)",                       +
                                                   "Shared Hit Blocks": 3,                                               +
                                                   "Shared Read Blocks": 8451,                                           +
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
                                                       "Startup Cost": 0.05,                                             +
                                                       "Total Cost": 0.05,                                               +
                                                       "Plan Rows": 1,                                                   +
                                                       "Plan Width": 4,                                                  +
                                                       "Actual Startup Time": 0.091,                                     +
                                                       "Actual Total Time": 0.091,                                       +
                                                       "Actual Rows": 1,                                                 +
                                                       "Actual Loops": 1,                                                +
                                                       "Sort Key": ["it2.id"],                                           +
                                                       "Sort Method": "quicksort",                                       +
                                                       "Sort Space Used": 25,                                            +
                                                       "Sort Space Type": "Memory",                                      +
                                                       "Shared Hit Blocks": 1,                                           +
                                                       "Shared Read Blocks": 0,                                          +
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
                                                           "Relation Name": "info_type",                                 +
                                                           "Alias": "it2",                                               +
                                                           "Startup Cost": 0.00,                                         +
                                                           "Total Cost": 0.05,                                           +
                                                           "Plan Rows": 1,                                               +
                                                           "Plan Width": 4,                                              +
                                                           "Actual Startup Time": 0.055,                                 +
                                                           "Actual Total Time": 0.060,                                   +
                                                           "Actual Rows": 1,                                             +
                                                           "Actual Loops": 1,                                            +
                                                           "Filter": "((info)::text = 'rating'::text)",                  +
                                                           "Rows Removed by Filter": 112,                                +
                                                           "Shared Hit Blocks": 1,                                       +
                                                           "Shared Read Blocks": 0,                                      +
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
                                                       "Startup Cost": 596.49,                                           +
                                                       "Total Cost": 600.60,                                             +
                                                       "Plan Rows": 52860,                                               +
                                                       "Plan Width": 14,                                                 +
                                                       "Actual Startup Time": 615.919,                                   +
                                                       "Actual Total Time": 619.815,                                     +
                                                       "Actual Rows": 52842,                                             +
                                                       "Actual Loops": 1,                                                +
                                                       "Sort Key": ["mi_idx.info_type_id"],                              +
                                                       "Sort Method": "quicksort",                                       +
                                                       "Sort Space Used": 4065,                                          +
                                                       "Sort Space Type": "Memory",                                      +
                                                       "Shared Hit Blocks": 2,                                           +
                                                       "Shared Read Blocks": 8451,                                       +
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
                                                           "Relation Name": "movie_info_idx",                            +
                                                           "Alias": "mi_idx",                                            +
                                                           "Startup Cost": 0.00,                                         +
                                                           "Total Cost": 467.71,                                         +
                                                           "Plan Rows": 52860,                                           +
                                                           "Plan Width": 14,                                             +
                                                           "Actual Startup Time": 0.068,                                 +
                                                           "Actual Total Time": 590.806,                                 +
                                                           "Actual Rows": 52862,                                         +
                                                           "Actual Loops": 1,                                            +
                                                           "Filter": "(info > '8.0'::text)",                             +
                                                           "Rows Removed by Filter": 1327173,                            +
                                                           "Shared Hit Blocks": 2,                                       +
                                                           "Shared Read Blocks": 8451,                                   +
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
                                               "Startup Cost": 2995.80,                                                  +
                                               "Total Cost": 3030.41,                                                    +
                                               "Plan Rows": 445860,                                                      +
                                               "Plan Width": 21,                                                         +
                                               "Actual Startup Time": 2015.999,                                          +
                                               "Actual Total Time": 2071.410,                                            +
                                               "Actual Rows": 445782,                                                    +
                                               "Actual Loops": 1,                                                        +
                                               "Sort Key": ["t.id"],                                                     +
                                               "Sort Method": "quicksort",                                               +
                                               "Sort Space Used": 43032,                                                 +
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
                                                   "Total Cost": 1696.56,                                                +
                                                   "Plan Rows": 445860,                                                  +
                                                   "Plan Width": 21,                                                     +
                                                   "Actual Startup Time": 27.673,                                        +
                                                   "Actual Total Time": 1717.591,                                        +
                                                   "Actual Rows": 445860,                                                +
                                                   "Actual Loops": 1,                                                    +
                                                   "Filter": "((production_year >= 2005) AND (production_year <= 2008))",+
                                                   "Rows Removed by Filter": 2082452,                                    +
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
                                           "Startup Cost": 8024.94,                                                      +
                                           "Total Cost": 8046.23,                                                        +
                                           "Plan Rows": 274233,                                                          +
                                           "Plan Width": 8,                                                              +
                                           "Actual Startup Time": 8602.612,                                              +
                                           "Actual Total Time": 8617.539,                                                +
                                           "Actual Rows": 274518,                                                        +
                                           "Actual Loops": 1,                                                            +
                                           "Sort Key": ["mi.movie_id"],                                                  +
                                           "Sort Method": "quicksort",                                                   +
                                           "Sort Space Used": 25162,                                                     +
                                           "Sort Space Type": "Memory",                                                  +
                                           "Shared Hit Blocks": 2,                                                       +
                                           "Shared Read Blocks": 161890,                                                 +
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
                                               "Relation Name": "movie_info",                                            +
                                               "Alias": "mi",                                                            +
                                               "Startup Cost": 0.00,                                                     +
                                               "Total Cost": 7255.68,                                                    +
                                               "Plan Rows": 274233,                                                      +
                                               "Plan Width": 8,                                                          +
                                               "Actual Startup Time": 4959.849,                                          +
                                               "Actual Total Time": 8479.164,                                            +
                                               "Actual Rows": 274644,                                                    +
                                               "Actual Loops": 1,                                                        +
                                               "Filter": "(info = ANY ('{Drama,Horror}'::text[]))",                      +
                                               "Rows Removed by Filter": 14561076,                                       +
                                               "Shared Hit Blocks": 2,                                                   +
                                               "Shared Read Blocks": 161890,                                             +
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
                                     },                                                                                  +
                                     {                                                                                   +
                                       "Node Type": "Sort",                                                              +
                                       "Parent Relationship": "Inner",                                                   +
                                       "Parallel Aware": false,                                                          +
                                       "Startup Cost": 9405.45,                                                          +
                                       "Total Cost": 9608.03,                                                            +
                                       "Plan Rows": 2609129,                                                             +
                                       "Plan Width": 12,                                                                 +
                                       "Actual Startup Time": 1527.170,                                                  +
                                       "Actual Total Time": 1649.822,                                                    +
                                       "Actual Rows": 2601490,                                                           +
                                       "Actual Loops": 1,                                                                +
                                       "Sort Key": ["mc.movie_id"],                                                      +
                                       "Sort Method": "quicksort",                                                       +
                                       "Sort Space Used": 220607,                                                        +
                                       "Sort Space Type": "Memory",                                                      +
                                       "Shared Hit Blocks": 3,                                                           +
                                       "Shared Read Blocks": 18786,                                                      +
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
                                           "Relation Name": "movie_companies",                                           +
                                           "Alias": "mc",                                                                +
                                           "Startup Cost": 0.00,                                                         +
                                           "Total Cost": 769.75,                                                         +
                                           "Plan Rows": 2609129,                                                         +
                                           "Plan Width": 12,                                                             +
                                           "Actual Startup Time": 0.009,                                                 +
                                           "Actual Total Time": 561.299,                                                 +
                                           "Actual Rows": 2609129,                                                       +
                                           "Actual Loops": 1,                                                            +
                                           "Shared Hit Blocks": 3,                                                       +
                                           "Shared Read Blocks": 18786,                                                  +
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
                             {                                                                                           +
                               "Node Type": "Sort",                                                                      +
                               "Parent Relationship": "Inner",                                                           +
                               "Parallel Aware": false,                                                                  +
                               "Startup Cost": 0.03,                                                                     +
                               "Total Cost": 0.03,                                                                       +
                               "Plan Rows": 1,                                                                           +
                               "Plan Width": 4,                                                                          +
                               "Actual Startup Time": 0.024,                                                             +
                               "Actual Total Time": 0.024,                                                               +
                               "Actual Rows": 1,                                                                         +
                               "Actual Loops": 1,                                                                        +
                               "Sort Key": ["ct.id"],                                                                    +
                               "Sort Method": "quicksort",                                                               +
                               "Sort Space Used": 25,                                                                    +
                               "Sort Space Type": "Memory",                                                              +
                               "Shared Hit Blocks": 1,                                                                   +
                               "Shared Read Blocks": 0,                                                                  +
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
                                   "Node Type": "Seq Scan",                                                              +
                                   "Parent Relationship": "Outer",                                                       +
                                   "Parallel Aware": false,                                                              +
                                   "Relation Name": "company_type",                                                      +
                                   "Alias": "ct",                                                                        +
                                   "Startup Cost": 0.00,                                                                 +
                                   "Total Cost": 0.03,                                                                   +
                                   "Plan Rows": 1,                                                                       +
                                   "Plan Width": 4,                                                                      +
                                   "Actual Startup Time": 0.015,                                                         +
                                   "Actual Total Time": 0.016,                                                           +
                                   "Actual Rows": 1,                                                                     +
                                   "Actual Loops": 1,                                                                    +
                                   "Filter": "((kind)::text = 'production companies'::text)",                            +
                                   "Rows Removed by Filter": 3,                                                          +
                                   "Shared Hit Blocks": 1,                                                               +
                                   "Shared Read Blocks": 0,                                                              +
                                   "Shared Dirtied Blocks": 0,                                                           +
                                   "Shared Written Blocks": 0,                                                           +
                                   "Local Hit Blocks": 0,                                                                +
                                   "Local Read Blocks": 0,                                                               +
                                   "Local Dirtied Blocks": 0,                                                            +
                                   "Local Written Blocks": 0,                                                            +
                                   "Temp Read Blocks": 0,                                                                +
                                   "Temp Written Blocks": 0                                                              +
                                 }                                                                                       +
                               ]                                                                                         +
                             }                                                                                           +
                           ]                                                                                             +
                         }                                                                                               +
                       ]                                                                                                 +
                     },                                                                                                  +
                     {                                                                                                   +
                       "Node Type": "Sort",                                                                              +
                       "Parent Relationship": "Inner",                                                                   +
                       "Parallel Aware": false,                                                                          +
                       "Startup Cost": 0.05,                                                                             +
                       "Total Cost": 0.05,                                                                               +
                       "Plan Rows": 1,                                                                                   +
                       "Plan Width": 4,                                                                                  +
                       "Actual Startup Time": 0.019,                                                                     +
                       "Actual Total Time": 0.019,                                                                       +
                       "Actual Rows": 1,                                                                                 +
                       "Actual Loops": 1,                                                                                +
                       "Sort Key": ["it1.id"],                                                                           +
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
                           "Alias": "it1",                                                                               +
                           "Startup Cost": 0.00,                                                                         +
                           "Total Cost": 0.05,                                                                           +
                           "Plan Rows": 1,                                                                               +
                           "Plan Width": 4,                                                                              +
                           "Actual Startup Time": 0.007,                                                                 +
                           "Actual Total Time": 0.017,                                                                   +
                           "Actual Rows": 1,                                                                             +
                           "Actual Loops": 1,                                                                            +
                           "Filter": "((info)::text = 'genres'::text)",                                                  +
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
                     }                                                                                                   +
                   ]                                                                                                     +
                 }                                                                                                       +
               ]                                                                                                         +
             },                                                                                                          +
             {                                                                                                           +
               "Node Type": "Sort",                                                                                      +
               "Parent Relationship": "Inner",                                                                           +
               "Parallel Aware": false,                                                                                  +
               "Startup Cost": 344.10,                                                                                   +
               "Total Cost": 350.69,                                                                                     +
               "Plan Rows": 84843,                                                                                       +
               "Plan Width": 23,                                                                                         +
               "Actual Startup Time": 174.299,                                                                           +
               "Actual Total Time": 182.821,                                                                             +
               "Actual Rows": 83281,                                                                                     +
               "Actual Loops": 1,                                                                                        +
               "Sort Key": ["cn.id"],                                                                                    +
               "Sort Method": "quicksort",                                                                               +
               "Sort Space Used": 9413,                                                                                  +
               "Sort Space Type": "Memory",                                                                              +
               "Shared Hit Blocks": 2,                                                                                   +
               "Shared Read Blocks": 2992,                                                                               +
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
                   "Relation Name": "company_name",                                                                      +
                   "Alias": "cn",                                                                                        +
                   "Startup Cost": 0.00,                                                                                 +
                   "Total Cost": 128.41,                                                                                 +
                   "Plan Rows": 84843,                                                                                   +
                   "Plan Width": 23,                                                                                     +
                   "Actual Startup Time": 22.497,                                                                        +
                   "Actual Total Time": 127.726,                                                                         +
                   "Actual Rows": 84843,                                                                                 +
                   "Actual Loops": 1,                                                                                    +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                    +
                   "Rows Removed by Filter": 150154,                                                                     +
                   "Shared Hit Blocks": 2,                                                                               +
                   "Shared Read Blocks": 2992,                                                                           +
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
         }                                                                                                               +
       ]                                                                                                                 +
     },                                                                                                                  +
     "Planning Time": 5083.830,                                                                                          +
     "Triggers": [                                                                                                       +
     ],                                                                                                                  +
     "Execution Time": 13554.872                                                                                         +
   }                                                                                                                     +
 ]
(1 row)

