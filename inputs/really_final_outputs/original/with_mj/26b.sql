                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                    +
   {                                                                                                                                                                                  +
     "Plan": {                                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                                       +
       "Startup Cost": 199806.02,                                                                                                                                                     +
       "Total Cost": 199806.02,                                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                                                +
       "Plan Width": 96,                                                                                                                                                              +
       "Actual Startup Time": 42996.779,                                                                                                                                              +
       "Actual Total Time": 42996.780,                                                                                                                                                +
       "Actual Rows": 1,                                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                                             +
       "Shared Hit Blocks": 32,                                                                                                                                                       +
       "Shared Read Blocks": 414345,                                                                                                                                                  +
       "Shared Dirtied Blocks": 0,                                                                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                                                                         +
       "Local Read Blocks": 0,                                                                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                                                                     +
       "Local Written Blocks": 0,                                                                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                                                                      +
       "Plans": [                                                                                                                                                                     +
         {                                                                                                                                                                            +
           "Node Type": "Merge Join",                                                                                                                                                 +
           "Parent Relationship": "Outer",                                                                                                                                            +
           "Parallel Aware": false,                                                                                                                                                   +
           "Join Type": "Inner",                                                                                                                                                      +
           "Startup Cost": 199806.02,                                                                                                                                                 +
           "Total Cost": 199806.02,                                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                                            +
           "Plan Width": 39,                                                                                                                                                          +
           "Actual Startup Time": 42996.694,                                                                                                                                          +
           "Actual Total Time": 42996.720,                                                                                                                                            +
           "Actual Rows": 93,                                                                                                                                                         +
           "Actual Loops": 1,                                                                                                                                                         +
           "Inner Unique": true,                                                                                                                                                      +
           "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                                       +
           "Shared Hit Blocks": 32,                                                                                                                                                   +
           "Shared Read Blocks": 414345,                                                                                                                                              +
           "Shared Dirtied Blocks": 0,                                                                                                                                                +
           "Shared Written Blocks": 0,                                                                                                                                                +
           "Local Hit Blocks": 0,                                                                                                                                                     +
           "Local Read Blocks": 0,                                                                                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                                                                                 +
           "Local Written Blocks": 0,                                                                                                                                                 +
           "Temp Read Blocks": 0,                                                                                                                                                     +
           "Temp Written Blocks": 0,                                                                                                                                                  +
           "Plans": [                                                                                                                                                                 +
             {                                                                                                                                                                        +
               "Node Type": "Sort",                                                                                                                                                   +
               "Parent Relationship": "Outer",                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                               +
               "Startup Cost": 199805.98,                                                                                                                                             +
               "Total Cost": 199805.98,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                        +
               "Plan Width": 43,                                                                                                                                                      +
               "Actual Startup Time": 42996.672,                                                                                                                                      +
               "Actual Total Time": 42996.677,                                                                                                                                        +
               "Actual Rows": 94,                                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                                     +
               "Sort Key": ["t.kind_id"],                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                            +
               "Sort Space Used": 34,                                                                                                                                                 +
               "Sort Space Type": "Memory",                                                                                                                                           +
               "Shared Hit Blocks": 31,                                                                                                                                               +
               "Shared Read Blocks": 414345,                                                                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                                 +
               "Temp Written Blocks": 0,                                                                                                                                              +
               "Plans": [                                                                                                                                                             +
                 {                                                                                                                                                                    +
                   "Node Type": "Merge Join",                                                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                                           +
                   "Join Type": "Inner",                                                                                                                                              +
                   "Startup Cost": 199805.98,                                                                                                                                         +
                   "Total Cost": 199805.98,                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                                    +
                   "Plan Width": 43,                                                                                                                                                  +
                   "Actual Startup Time": 42987.540,                                                                                                                                  +
                   "Actual Total Time": 42987.568,                                                                                                                                    +
                   "Actual Rows": 111,                                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                                 +
                   "Inner Unique": false,                                                                                                                                             +
                   "Merge Cond": "(cct2.id = cc.status_id)",                                                                                                                          +
                   "Shared Hit Blocks": 27,                                                                                                                                           +
                   "Shared Read Blocks": 414345,                                                                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                                                             +
                   "Temp Written Blocks": 0,                                                                                                                                          +
                   "Plans": [                                                                                                                                                         +
                     {                                                                                                                                                                +
                       "Node Type": "Sort",                                                                                                                                           +
                       "Parent Relationship": "Outer",                                                                                                                                +
                       "Parallel Aware": false,                                                                                                                                       +
                       "Startup Cost": 0.03,                                                                                                                                          +
                       "Total Cost": 0.03,                                                                                                                                            +
                       "Plan Rows": 1,                                                                                                                                                +
                       "Plan Width": 4,                                                                                                                                               +
                       "Actual Startup Time": 0.049,                                                                                                                                  +
                       "Actual Total Time": 0.049,                                                                                                                                    +
                       "Actual Rows": 2,                                                                                                                                              +
                       "Actual Loops": 1,                                                                                                                                             +
                       "Sort Key": ["cct2.id"],                                                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                                                    +
                       "Sort Space Used": 25,                                                                                                                                         +
                       "Sort Space Type": "Memory",                                                                                                                                   +
                       "Shared Hit Blocks": 1,                                                                                                                                        +
                       "Shared Read Blocks": 0,                                                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                                                      +
                       "Plans": [                                                                                                                                                     +
                         {                                                                                                                                                            +
                           "Node Type": "Seq Scan",                                                                                                                                   +
                           "Parent Relationship": "Outer",                                                                                                                            +
                           "Parallel Aware": false,                                                                                                                                   +
                           "Relation Name": "comp_cast_type",                                                                                                                         +
                           "Alias": "cct2",                                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                                      +
                           "Total Cost": 0.03,                                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                                            +
                           "Plan Width": 4,                                                                                                                                           +
                           "Actual Startup Time": 0.022,                                                                                                                              +
                           "Actual Total Time": 0.024,                                                                                                                                +
                           "Actual Rows": 2,                                                                                                                                          +
                           "Actual Loops": 1,                                                                                                                                         +
                           "Filter": "((kind)::text ~~ '%complete%'::text)",                                                                                                          +
                           "Rows Removed by Filter": 2,                                                                                                                               +
                           "Shared Hit Blocks": 1,                                                                                                                                    +
                           "Shared Read Blocks": 0,                                                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                                     +
                           "Temp Written Blocks": 0                                                                                                                                   +
                         }                                                                                                                                                            +
                       ]                                                                                                                                                              +
                     },                                                                                                                                                               +
                     {                                                                                                                                                                +
                       "Node Type": "Sort",                                                                                                                                           +
                       "Parent Relationship": "Inner",                                                                                                                                +
                       "Parallel Aware": false,                                                                                                                                       +
                       "Startup Cost": 199805.95,                                                                                                                                     +
                       "Total Cost": 199805.95,                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                                +
                       "Plan Width": 47,                                                                                                                                              +
                       "Actual Startup Time": 42987.485,                                                                                                                              +
                       "Actual Total Time": 42987.491,                                                                                                                                +
                       "Actual Rows": 111,                                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                             +
                       "Sort Key": ["cc.status_id"],                                                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                                                    +
                       "Sort Space Used": 35,                                                                                                                                         +
                       "Sort Space Type": "Memory",                                                                                                                                   +
                       "Shared Hit Blocks": 26,                                                                                                                                       +
                       "Shared Read Blocks": 414345,                                                                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                                                      +
                       "Plans": [                                                                                                                                                     +
                         {                                                                                                                                                            +
                           "Node Type": "Merge Join",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                            +
                           "Parallel Aware": false,                                                                                                                                   +
                           "Join Type": "Inner",                                                                                                                                      +
                           "Startup Cost": 199805.95,                                                                                                                                 +
                           "Total Cost": 199805.95,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                            +
                           "Plan Width": 47,                                                                                                                                          +
                           "Actual Startup Time": 42987.400,                                                                                                                          +
                           "Actual Total Time": 42987.432,                                                                                                                            +
                           "Actual Rows": 111,                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                         +
                           "Inner Unique": false,                                                                                                                                     +
                           "Merge Cond": "(cct1.id = cc.subject_id)",                                                                                                                 +
                           "Shared Hit Blocks": 26,                                                                                                                                   +
                           "Shared Read Blocks": 414345,                                                                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                                     +
                           "Temp Written Blocks": 0,                                                                                                                                  +
                           "Plans": [                                                                                                                                                 +
                             {                                                                                                                                                        +
                               "Node Type": "Sort",                                                                                                                                   +
                               "Parent Relationship": "Outer",                                                                                                                        +
                               "Parallel Aware": false,                                                                                                                               +
                               "Startup Cost": 0.03,                                                                                                                                  +
                               "Total Cost": 0.03,                                                                                                                                    +
                               "Plan Rows": 1,                                                                                                                                        +
                               "Plan Width": 4,                                                                                                                                       +
                               "Actual Startup Time": 0.028,                                                                                                                          +
                               "Actual Total Time": 0.029,                                                                                                                            +
                               "Actual Rows": 1,                                                                                                                                      +
                               "Actual Loops": 1,                                                                                                                                     +
                               "Sort Key": ["cct1.id"],                                                                                                                               +
                               "Sort Method": "quicksort",                                                                                                                            +
                               "Sort Space Used": 25,                                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                           +
                               "Shared Hit Blocks": 1,                                                                                                                                +
                               "Shared Read Blocks": 0,                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                                              +
                               "Plans": [                                                                                                                                             +
                                 {                                                                                                                                                    +
                                   "Node Type": "Seq Scan",                                                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                                                    +
                                   "Parallel Aware": false,                                                                                                                           +
                                   "Relation Name": "comp_cast_type",                                                                                                                 +
                                   "Alias": "cct1",                                                                                                                                   +
                                   "Startup Cost": 0.00,                                                                                                                              +
                                   "Total Cost": 0.03,                                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                                    +
                                   "Plan Width": 4,                                                                                                                                   +
                                   "Actual Startup Time": 0.010,                                                                                                                      +
                                   "Actual Total Time": 0.013,                                                                                                                        +
                                   "Actual Rows": 1,                                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                                 +
                                   "Filter": "((kind)::text = 'cast'::text)",                                                                                                         +
                                   "Rows Removed by Filter": 3,                                                                                                                       +
                                   "Shared Hit Blocks": 1,                                                                                                                            +
                                   "Shared Read Blocks": 0,                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                                             +
                                   "Temp Written Blocks": 0                                                                                                                           +
                                 }                                                                                                                                                    +
                               ]                                                                                                                                                      +
                             },                                                                                                                                                       +
                             {                                                                                                                                                        +
                               "Node Type": "Sort",                                                                                                                                   +
                               "Parent Relationship": "Inner",                                                                                                                        +
                               "Parallel Aware": false,                                                                                                                               +
                               "Startup Cost": 199805.92,                                                                                                                             +
                               "Total Cost": 199805.92,                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                        +
                               "Plan Width": 51,                                                                                                                                      +
                               "Actual Startup Time": 42987.368,                                                                                                                      +
                               "Actual Total Time": 42987.374,                                                                                                                        +
                               "Actual Rows": 112,                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                     +
                               "Sort Key": ["cc.subject_id"],                                                                                                                         +
                               "Sort Method": "quicksort",                                                                                                                            +
                               "Sort Space Used": 47,                                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                           +
                               "Shared Hit Blocks": 25,                                                                                                                               +
                               "Shared Read Blocks": 414345,                                                                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                                              +
                               "Plans": [                                                                                                                                             +
                                 {                                                                                                                                                    +
                                   "Node Type": "Merge Join",                                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                                    +
                                   "Parallel Aware": false,                                                                                                                           +
                                   "Join Type": "Inner",                                                                                                                              +
                                   "Startup Cost": 199784.94,                                                                                                                         +
                                   "Total Cost": 199805.92,                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                                    +
                                   "Plan Width": 51,                                                                                                                                  +
                                   "Actual Startup Time": 42968.695,                                                                                                                  +
                                   "Actual Total Time": 42987.284,                                                                                                                    +
                                   "Actual Rows": 213,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                 +
                                   "Inner Unique": false,                                                                                                                             +
                                   "Merge Cond": "(t.id = cc.movie_id)",                                                                                                              +
                                   "Shared Hit Blocks": 25,                                                                                                                           +
                                   "Shared Read Blocks": 414345,                                                                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                                             +
                                   "Temp Written Blocks": 0,                                                                                                                          +
                                   "Plans": [                                                                                                                                         +
                                     {                                                                                                                                                +
                                       "Node Type": "Sort",                                                                                                                           +
                                       "Parent Relationship": "Outer",                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                       +
                                       "Startup Cost": 199395.16,                                                                                                                     +
                                       "Total Cost": 199395.16,                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                                +
                                       "Plan Width": 59,                                                                                                                              +
                                       "Actual Startup Time": 42810.887,                                                                                                              +
                                       "Actual Total Time": 42810.928,                                                                                                                +
                                       "Actual Rows": 368,                                                                                                                            +
                                       "Actual Loops": 1,                                                                                                                             +
                                       "Sort Key": ["mk.movie_id"],                                                                                                                   +
                                       "Sort Method": "quicksort",                                                                                                                    +
                                       "Sort Space Used": 74,                                                                                                                         +
                                       "Sort Space Type": "Memory",                                                                                                                   +
                                       "Shared Hit Blocks": 23,                                                                                                                       +
                                       "Shared Read Blocks": 413616,                                                                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                                                      +
                                       "Plans": [                                                                                                                                     +
                                         {                                                                                                                                            +
                                           "Node Type": "Merge Join",                                                                                                                 +
                                           "Parent Relationship": "Outer",                                                                                                            +
                                           "Parallel Aware": false,                                                                                                                   +
                                           "Join Type": "Inner",                                                                                                                      +
                                           "Startup Cost": 198764.44,                                                                                                                 +
                                           "Total Cost": 199395.16,                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                            +
                                           "Plan Width": 59,                                                                                                                          +
                                           "Actual Startup Time": 42374.079,                                                                                                          +
                                           "Actual Total Time": 42810.685,                                                                                                            +
                                           "Actual Rows": 368,                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                         +
                                           "Inner Unique": true,                                                                                                                      +
                                           "Merge Cond": "(ci.person_id = n.id)",                                                                                                     +
                                           "Shared Hit Blocks": 23,                                                                                                                   +
                                           "Shared Read Blocks": 413616,                                                                                                              +
                                           "Shared Dirtied Blocks": 0,                                                                                                                +
                                           "Shared Written Blocks": 0,                                                                                                                +
                                           "Local Hit Blocks": 0,                                                                                                                     +
                                           "Local Read Blocks": 0,                                                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                                                 +
                                           "Local Written Blocks": 0,                                                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                                                     +
                                           "Temp Written Blocks": 0,                                                                                                                  +
                                           "Plans": [                                                                                                                                 +
                                             {                                                                                                                                        +
                                               "Node Type": "Sort",                                                                                                                   +
                                               "Parent Relationship": "Outer",                                                                                                        +
                                               "Parallel Aware": false,                                                                                                               +
                                               "Startup Cost": 182501.10,                                                                                                             +
                                               "Total Cost": 182501.10,                                                                                                               +
                                               "Plan Rows": 1,                                                                                                                        +
                                               "Plan Width": 63,                                                                                                                      +
                                               "Actual Startup Time": 38888.950,                                                                                                      +
                                               "Actual Total Time": 38889.003,                                                                                                        +
                                               "Actual Rows": 368,                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                     +
                                               "Sort Key": ["ci.person_id"],                                                                                                          +
                                               "Sort Method": "quicksort",                                                                                                            +
                                               "Sort Space Used": 75,                                                                                                                 +
                                               "Sort Space Type": "Memory",                                                                                                           +
                                               "Shared Hit Blocks": 22,                                                                                                               +
                                               "Shared Read Blocks": 358004,                                                                                                          +
                                               "Shared Dirtied Blocks": 0,                                                                                                            +
                                               "Shared Written Blocks": 0,                                                                                                            +
                                               "Local Hit Blocks": 0,                                                                                                                 +
                                               "Local Read Blocks": 0,                                                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                                                             +
                                               "Local Written Blocks": 0,                                                                                                             +
                                               "Temp Read Blocks": 0,                                                                                                                 +
                                               "Temp Written Blocks": 0,                                                                                                              +
                                               "Plans": [                                                                                                                             +
                                                 {                                                                                                                                    +
                                                   "Node Type": "Merge Join",                                                                                                         +
                                                   "Parent Relationship": "Outer",                                                                                                    +
                                                   "Parallel Aware": false,                                                                                                           +
                                                   "Join Type": "Inner",                                                                                                              +
                                                   "Startup Cost": 182472.18,                                                                                                         +
                                                   "Total Cost": 182501.10,                                                                                                           +
                                                   "Plan Rows": 1,                                                                                                                    +
                                                   "Plan Width": 63,                                                                                                                  +
                                                   "Actual Startup Time": 38843.018,                                                                                                  +
                                                   "Actual Total Time": 38888.761,                                                                                                    +
                                                   "Actual Rows": 368,                                                                                                                +
                                                   "Actual Loops": 1,                                                                                                                 +
                                                   "Inner Unique": true,                                                                                                              +
                                                   "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                      +
                                                   "Shared Hit Blocks": 22,                                                                                                           +
                                                   "Shared Read Blocks": 358004,                                                                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                                   "Shared Written Blocks": 0,                                                                                                        +
                                                   "Local Hit Blocks": 0,                                                                                                             +
                                                   "Local Read Blocks": 0,                                                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                                   "Local Written Blocks": 0,                                                                                                         +
                                                   "Temp Read Blocks": 0,                                                                                                             +
                                                   "Temp Written Blocks": 0,                                                                                                          +
                                                   "Plans": [                                                                                                                         +
                                                     {                                                                                                                                +
                                                       "Node Type": "Sort",                                                                                                           +
                                                       "Parent Relationship": "Outer",                                                                                                +
                                                       "Parallel Aware": false,                                                                                                       +
                                                       "Startup Cost": 180117.88,                                                                                                     +
                                                       "Total Cost": 180117.88,                                                                                                       +
                                                       "Plan Rows": 1,                                                                                                                +
                                                       "Plan Width": 51,                                                                                                              +
                                                       "Actual Startup Time": 37072.956,                                                                                              +
                                                       "Actual Total Time": 37073.964,                                                                                                +
                                                       "Actual Rows": 6790,                                                                                                           +
                                                       "Actual Loops": 1,                                                                                                             +
                                                       "Sort Key": ["ci.person_role_id"],                                                                                             +
                                                       "Sort Method": "quicksort",                                                                                                    +
                                                       "Sort Space Used": 3064,                                                                                                       +
                                                       "Sort Space Type": "Memory",                                                                                                   +
                                                       "Shared Hit Blocks": 20,                                                                                                       +
                                                       "Shared Read Blocks": 321559,                                                                                                  +
                                                       "Shared Dirtied Blocks": 0,                                                                                                    +
                                                       "Shared Written Blocks": 0,                                                                                                    +
                                                       "Local Hit Blocks": 0,                                                                                                         +
                                                       "Local Read Blocks": 0,                                                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                                                     +
                                                       "Local Written Blocks": 0,                                                                                                     +
                                                       "Temp Read Blocks": 0,                                                                                                         +
                                                       "Temp Written Blocks": 0,                                                                                                      +
                                                       "Plans": [                                                                                                                     +
                                                         {                                                                                                                            +
                                                           "Node Type": "Merge Join",                                                                                                 +
                                                           "Parent Relationship": "Outer",                                                                                            +
                                                           "Parallel Aware": false,                                                                                                   +
                                                           "Join Type": "Inner",                                                                                                      +
                                                           "Startup Cost": 180117.87,                                                                                                 +
                                                           "Total Cost": 180117.87,                                                                                                   +
                                                           "Plan Rows": 1,                                                                                                            +
                                                           "Plan Width": 51,                                                                                                          +
                                                           "Actual Startup Time": 37060.390,                                                                                          +
                                                           "Actual Total Time": 37066.139,                                                                                            +
                                                           "Actual Rows": 18802,                                                                                                      +
                                                           "Actual Loops": 1,                                                                                                         +
                                                           "Inner Unique": false,                                                                                                     +
                                                           "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                                                            +
                                                           "Shared Hit Blocks": 20,                                                                                                   +
                                                           "Shared Read Blocks": 321559,                                                                                              +
                                                           "Shared Dirtied Blocks": 0,                                                                                                +
                                                           "Shared Written Blocks": 0,                                                                                                +
                                                           "Local Hit Blocks": 0,                                                                                                     +
                                                           "Local Read Blocks": 0,                                                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                                                 +
                                                           "Local Written Blocks": 0,                                                                                                 +
                                                           "Temp Read Blocks": 0,                                                                                                     +
                                                           "Temp Written Blocks": 0,                                                                                                  +
                                                           "Plans": [                                                                                                                 +
                                                             {                                                                                                                        +
                                                               "Node Type": "Sort",                                                                                                   +
                                                               "Parent Relationship": "Outer",                                                                                        +
                                                               "Parallel Aware": false,                                                                                               +
                                                               "Startup Cost": 0.05,                                                                                                  +
                                                               "Total Cost": 0.05,                                                                                                    +
                                                               "Plan Rows": 1,                                                                                                        +
                                                               "Plan Width": 4,                                                                                                       +
                                                               "Actual Startup Time": 0.066,                                                                                          +
                                                               "Actual Total Time": 0.066,                                                                                            +
                                                               "Actual Rows": 1,                                                                                                      +
                                                               "Actual Loops": 1,                                                                                                     +
                                                               "Sort Key": ["it2.id"],                                                                                                +
                                                               "Sort Method": "quicksort",                                                                                            +
                                                               "Sort Space Used": 25,                                                                                                 +
                                                               "Sort Space Type": "Memory",                                                                                           +
                                                               "Shared Hit Blocks": 1,                                                                                                +
                                                               "Shared Read Blocks": 0,                                                                                               +
                                                               "Shared Dirtied Blocks": 0,                                                                                            +
                                                               "Shared Written Blocks": 0,                                                                                            +
                                                               "Local Hit Blocks": 0,                                                                                                 +
                                                               "Local Read Blocks": 0,                                                                                                +
                                                               "Local Dirtied Blocks": 0,                                                                                             +
                                                               "Local Written Blocks": 0,                                                                                             +
                                                               "Temp Read Blocks": 0,                                                                                                 +
                                                               "Temp Written Blocks": 0,                                                                                              +
                                                               "Plans": [                                                                                                             +
                                                                 {                                                                                                                    +
                                                                   "Node Type": "Seq Scan",                                                                                           +
                                                                   "Parent Relationship": "Outer",                                                                                    +
                                                                   "Parallel Aware": false,                                                                                           +
                                                                   "Relation Name": "info_type",                                                                                      +
                                                                   "Alias": "it2",                                                                                                    +
                                                                   "Startup Cost": 0.00,                                                                                              +
                                                                   "Total Cost": 0.05,                                                                                                +
                                                                   "Plan Rows": 1,                                                                                                    +
                                                                   "Plan Width": 4,                                                                                                   +
                                                                   "Actual Startup Time": 0.045,                                                                                      +
                                                                   "Actual Total Time": 0.050,                                                                                        +
                                                                   "Actual Rows": 1,                                                                                                  +
                                                                   "Actual Loops": 1,                                                                                                 +
                                                                   "Filter": "((info)::text = 'rating'::text)",                                                                       +
                                                                   "Rows Removed by Filter": 112,                                                                                     +
                                                                   "Shared Hit Blocks": 1,                                                                                            +
                                                                   "Shared Read Blocks": 0,                                                                                           +
                                                                   "Shared Dirtied Blocks": 0,                                                                                        +
                                                                   "Shared Written Blocks": 0,                                                                                        +
                                                                   "Local Hit Blocks": 0,                                                                                             +
                                                                   "Local Read Blocks": 0,                                                                                            +
                                                                   "Local Dirtied Blocks": 0,                                                                                         +
                                                                   "Local Written Blocks": 0,                                                                                         +
                                                                   "Temp Read Blocks": 0,                                                                                             +
                                                                   "Temp Written Blocks": 0                                                                                           +
                                                                 }                                                                                                                    +
                                                               ]                                                                                                                      +
                                                             },                                                                                                                       +
                                                             {                                                                                                                        +
                                                               "Node Type": "Sort",                                                                                                   +
                                                               "Parent Relationship": "Inner",                                                                                        +
                                                               "Parallel Aware": false,                                                                                               +
                                                               "Startup Cost": 180117.82,                                                                                             +
                                                               "Total Cost": 180117.82,                                                                                               +
                                                               "Plan Rows": 38,                                                                                                       +
                                                               "Plan Width": 55,                                                                                                      +
                                                               "Actual Startup Time": 37057.784,                                                                                      +
                                                               "Actual Total Time": 37059.263,                                                                                        +
                                                               "Actual Rows": 31313,                                                                                                  +
                                                               "Actual Loops": 1,                                                                                                     +
                                                               "Sort Key": ["mi_idx.info_type_id"],                                                                                   +
                                                               "Sort Method": "quicksort",                                                                                            +
                                                               "Sort Space Used": 4946,                                                                                               +
                                                               "Sort Space Type": "Memory",                                                                                           +
                                                               "Shared Hit Blocks": 19,                                                                                               +
                                                               "Shared Read Blocks": 321559,                                                                                          +
                                                               "Shared Dirtied Blocks": 0,                                                                                            +
                                                               "Shared Written Blocks": 0,                                                                                            +
                                                               "Local Hit Blocks": 0,                                                                                                 +
                                                               "Local Read Blocks": 0,                                                                                                +
                                                               "Local Dirtied Blocks": 0,                                                                                             +
                                                               "Local Written Blocks": 0,                                                                                             +
                                                               "Temp Read Blocks": 0,                                                                                                 +
                                                               "Temp Written Blocks": 0,                                                                                              +
                                                               "Plans": [                                                                                                             +
                                                                 {                                                                                                                    +
                                                                   "Node Type": "Merge Join",                                                                                         +
                                                                   "Parent Relationship": "Outer",                                                                                    +
                                                                   "Parallel Aware": false,                                                                                           +
                                                                   "Join Type": "Inner",                                                                                              +
                                                                   "Startup Cost": 174329.86,                                                                                         +
                                                                   "Total Cost": 180117.79,                                                                                           +
                                                                   "Plan Rows": 38,                                                                                                   +
                                                                   "Plan Width": 55,                                                                                                  +
                                                                   "Actual Startup Time": 28253.545,                                                                                  +
                                                                   "Actual Total Time": 37044.598,                                                                                    +
                                                                   "Actual Rows": 31313,                                                                                              +
                                                                   "Actual Loops": 1,                                                                                                 +
                                                                   "Inner Unique": false,                                                                                             +
                                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                          +
                                                                   "Shared Hit Blocks": 19,                                                                                           +
                                                                   "Shared Read Blocks": 321559,                                                                                      +
                                                                   "Shared Dirtied Blocks": 0,                                                                                        +
                                                                   "Shared Written Blocks": 0,                                                                                        +
                                                                   "Local Hit Blocks": 0,                                                                                             +
                                                                   "Local Read Blocks": 0,                                                                                            +
                                                                   "Local Dirtied Blocks": 0,                                                                                         +
                                                                   "Local Written Blocks": 0,                                                                                         +
                                                                   "Temp Read Blocks": 0,                                                                                             +
                                                                   "Temp Written Blocks": 0,                                                                                          +
                                                                   "Plans": [                                                                                                         +
                                                                     {                                                                                                                +
                                                                       "Node Type": "Merge Join",                                                                                     +
                                                                       "Parent Relationship": "Outer",                                                                                +
                                                                       "Parallel Aware": false,                                                                                       +
                                                                       "Join Type": "Inner",                                                                                          +
                                                                       "Startup Cost": 173733.37,                                                                                     +
                                                                       "Total Cost": 179519.29,                                                                                       +
                                                                       "Plan Rows": 1825,                                                                                             +
                                                                       "Plan Width": 41,                                                                                              +
                                                                       "Actual Startup Time": 27359.816,                                                                              +
                                                                       "Actual Total Time": 36246.161,                                                                                +
                                                                       "Actual Rows": 185412,                                                                                         +
                                                                       "Actual Loops": 1,                                                                                             +
                                                                       "Inner Unique": true,                                                                                          +
                                                                       "Merge Cond": "(mk.movie_id = t.id)",                                                                          +
                                                                       "Shared Hit Blocks": 17,                                                                                       +
                                                                       "Shared Read Blocks": 313108,                                                                                  +
                                                                       "Shared Dirtied Blocks": 0,                                                                                    +
                                                                       "Shared Written Blocks": 0,                                                                                    +
                                                                       "Local Hit Blocks": 0,                                                                                         +
                                                                       "Local Read Blocks": 0,                                                                                        +
                                                                       "Local Dirtied Blocks": 0,                                                                                     +
                                                                       "Local Written Blocks": 0,                                                                                     +
                                                                       "Temp Read Blocks": 0,                                                                                         +
                                                                       "Temp Written Blocks": 0,                                                                                      +
                                                                       "Plans": [                                                                                                     +
                                                                         {                                                                                                            +
                                                                           "Node Type": "Merge Join",                                                                                 +
                                                                           "Parent Relationship": "Outer",                                                                            +
                                                                           "Parallel Aware": false,                                                                                   +
                                                                           "Join Type": "Inner",                                                                                      +
                                                                           "Startup Cost": 169095.25,                                                                                 +
                                                                           "Total Cost": 174723.54,                                                                                   +
                                                                           "Plan Rows": 4556,                                                                                         +
                                                                           "Plan Width": 16,                                                                                          +
                                                                           "Actual Startup Time": 25401.767,                                                                          +
                                                                           "Actual Total Time": 33940.001,                                                                            +
                                                                           "Actual Rows": 487003,                                                                                     +
                                                                           "Actual Loops": 1,                                                                                         +
                                                                           "Inner Unique": false,                                                                                     +
                                                                           "Merge Cond": "(mk.movie_id = ci.movie_id)",                                                               +
                                                                           "Shared Hit Blocks": 15,                                                                                   +
                                                                           "Shared Read Blocks": 277112,                                                                              +
                                                                           "Shared Dirtied Blocks": 0,                                                                                +
                                                                           "Shared Written Blocks": 0,                                                                                +
                                                                           "Local Hit Blocks": 0,                                                                                     +
                                                                           "Local Read Blocks": 0,                                                                                    +
                                                                           "Local Dirtied Blocks": 0,                                                                                 +
                                                                           "Local Written Blocks": 0,                                                                                 +
                                                                           "Temp Read Blocks": 0,                                                                                     +
                                                                           "Temp Written Blocks": 0,                                                                                  +
                                                                           "Plans": [                                                                                                 +
                                                                             {                                                                                                        +
                                                                               "Node Type": "Sort",                                                                                   +
                                                                               "Parent Relationship": "Outer",                                                                        +
                                                                               "Parallel Aware": false,                                                                               +
                                                                               "Startup Cost": 17338.09,                                                                              +
                                                                               "Total Cost": 17338.10,                                                                                +
                                                                               "Plan Rows": 135,                                                                                      +
                                                                               "Plan Width": 4,                                                                                       +
                                                                               "Actual Startup Time": 3015.688,                                                                       +
                                                                               "Actual Total Time": 3017.493,                                                                         +
                                                                               "Actual Rows": 9984,                                                                                   +
                                                                               "Actual Loops": 1,                                                                                     +
                                                                               "Sort Key": ["mk.movie_id"],                                                                           +
                                                                               "Sort Method": "quicksort",                                                                            +
                                                                               "Sort Space Used": 853,                                                                                +
                                                                               "Sort Space Type": "Memory",                                                                           +
                                                                               "Shared Hit Blocks": 10,                                                                               +
                                                                               "Shared Read Blocks": 24463,                                                                           +
                                                                               "Shared Dirtied Blocks": 0,                                                                            +
                                                                               "Shared Written Blocks": 0,                                                                            +
                                                                               "Local Hit Blocks": 0,                                                                                 +
                                                                               "Local Read Blocks": 0,                                                                                +
                                                                               "Local Dirtied Blocks": 0,                                                                             +
                                                                               "Local Written Blocks": 0,                                                                             +
                                                                               "Temp Read Blocks": 0,                                                                                 +
                                                                               "Temp Written Blocks": 0,                                                                              +
                                                                               "Plans": [                                                                                             +
                                                                                 {                                                                                                    +
                                                                                   "Node Type": "Merge Join",                                                                         +
                                                                                   "Parent Relationship": "Outer",                                                                    +
                                                                                   "Parallel Aware": false,                                                                           +
                                                                                   "Join Type": "Inner",                                                                              +
                                                                                   "Startup Cost": 16635.45,                                                                          +
                                                                                   "Total Cost": 17337.94,                                                                            +
                                                                                   "Plan Rows": 135,                                                                                  +
                                                                                   "Plan Width": 4,                                                                                   +
                                                                                   "Actual Startup Time": 2402.568,                                                                   +
                                                                                   "Actual Total Time": 3012.500,                                                                     +
                                                                                   "Actual Rows": 9984,                                                                               +
                                                                                   "Actual Loops": 1,                                                                                 +
                                                                                   "Inner Unique": false,                                                                             +
                                                                                   "Merge Cond": "(k.id = mk.keyword_id)",                                                            +
                                                                                   "Shared Hit Blocks": 10,                                                                           +
                                                                                   "Shared Read Blocks": 24463,                                                                       +
                                                                                   "Shared Dirtied Blocks": 0,                                                                        +
                                                                                   "Shared Written Blocks": 0,                                                                        +
                                                                                   "Local Hit Blocks": 0,                                                                             +
                                                                                   "Local Read Blocks": 0,                                                                            +
                                                                                   "Local Dirtied Blocks": 0,                                                                         +
                                                                                   "Local Written Blocks": 0,                                                                         +
                                                                                   "Temp Read Blocks": 0,                                                                             +
                                                                                   "Temp Written Blocks": 0,                                                                          +
                                                                                   "Plans": [                                                                                         +
                                                                                     {                                                                                                +
                                                                                       "Node Type": "Sort",                                                                           +
                                                                                       "Parent Relationship": "Outer",                                                                +
                                                                                       "Parallel Aware": false,                                                                       +
                                                                                       "Startup Cost": 24.53,                                                                         +
                                                                                       "Total Cost": 24.53,                                                                           +
                                                                                       "Plan Rows": 4,                                                                                +
                                                                                       "Plan Width": 4,                                                                               +
                                                                                       "Actual Startup Time": 42.164,                                                                 +
                                                                                       "Actual Total Time": 42.166,                                                                   +
                                                                                       "Actual Rows": 4,                                                                              +
                                                                                       "Actual Loops": 1,                                                                             +
                                                                                       "Sort Key": ["k.id"],                                                                          +
                                                                                       "Sort Method": "quicksort",                                                                    +
                                                                                       "Sort Space Used": 25,                                                                         +
                                                                                       "Sort Space Type": "Memory",                                                                   +
                                                                                       "Shared Hit Blocks": 7,                                                                        +
                                                                                       "Shared Read Blocks": 12,                                                                      +
                                                                                       "Shared Dirtied Blocks": 0,                                                                    +
                                                                                       "Shared Written Blocks": 0,                                                                    +
                                                                                       "Local Hit Blocks": 0,                                                                         +
                                                                                       "Local Read Blocks": 0,                                                                        +
                                                                                       "Local Dirtied Blocks": 0,                                                                     +
                                                                                       "Local Written Blocks": 0,                                                                     +
                                                                                       "Temp Read Blocks": 0,                                                                         +
                                                                                       "Temp Written Blocks": 0,                                                                      +
                                                                                       "Plans": [                                                                                     +
                                                                                         {                                                                                            +
                                                                                           "Node Type": "Index Scan",                                                                 +
                                                                                           "Parent Relationship": "Outer",                                                            +
                                                                                           "Parallel Aware": false,                                                                   +
                                                                                           "Scan Direction": "Forward",                                                               +
                                                                                           "Index Name": "keyword_idx_keyword",                                                       +
                                                                                           "Relation Name": "keyword",                                                                +
                                                                                           "Alias": "k",                                                                              +
                                                                                           "Startup Cost": 0.01,                                                                      +
                                                                                           "Total Cost": 24.53,                                                                       +
                                                                                           "Plan Rows": 4,                                                                            +
                                                                                           "Plan Width": 4,                                                                           +
                                                                                           "Actual Startup Time": 17.535,                                                             +
                                                                                           "Actual Total Time": 42.133,                                                               +
                                                                                           "Actual Rows": 4,                                                                          +
                                                                                           "Actual Loops": 1,                                                                         +
                                                                                           "Index Cond": "(keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))",+
                                                                                           "Rows Removed by Index Recheck": 0,                                                        +
                                                                                           "Shared Hit Blocks": 7,                                                                    +
                                                                                           "Shared Read Blocks": 12,                                                                  +
                                                                                           "Shared Dirtied Blocks": 0,                                                                +
                                                                                           "Shared Written Blocks": 0,                                                                +
                                                                                           "Local Hit Blocks": 0,                                                                     +
                                                                                           "Local Read Blocks": 0,                                                                    +
                                                                                           "Local Dirtied Blocks": 0,                                                                 +
                                                                                           "Local Written Blocks": 0,                                                                 +
                                                                                           "Temp Read Blocks": 0,                                                                     +
                                                                                           "Temp Written Blocks": 0                                                                   +
                                                                                         }                                                                                            +
                                                                                       ]                                                                                              +
                                                                                     },                                                                                               +
                                                                                     {                                                                                                +
                                                                                       "Node Type": "Sort",                                                                           +
                                                                                       "Parent Relationship": "Inner",                                                                +
                                                                                       "Parallel Aware": false,                                                                       +
                                                                                       "Startup Cost": 16610.92,                                                                      +
                                                                                       "Total Cost": 16962.16,                                                                        +
                                                                                       "Plan Rows": 4523930,                                                                          +
                                                                                       "Plan Width": 8,                                                                               +
                                                                                       "Actual Startup Time": 2214.182,                                                               +
                                                                                       "Actual Total Time": 2634.579,                                                                 +
                                                                                       "Actual Rows": 2796931,                                                                        +
                                                                                       "Actual Loops": 1,                                                                             +
                                                                                       "Sort Key": ["mk.keyword_id"],                                                                 +
                                                                                       "Sort Method": "quicksort",                                                                    +
                                                                                       "Sort Space Used": 408668,                                                                     +
                                                                                       "Sort Space Type": "Memory",                                                                   +
                                                                                       "Shared Hit Blocks": 3,                                                                        +
                                                                                       "Shared Read Blocks": 24451,                                                                   +
                                                                                       "Shared Dirtied Blocks": 0,                                                                    +
                                                                                       "Shared Written Blocks": 0,                                                                    +
                                                                                       "Local Hit Blocks": 0,                                                                         +
                                                                                       "Local Read Blocks": 0,                                                                        +
                                                                                       "Local Dirtied Blocks": 0,                                                                     +
                                                                                       "Local Written Blocks": 0,                                                                     +
                                                                                       "Temp Read Blocks": 0,                                                                         +
                                                                                       "Temp Written Blocks": 0,                                                                      +
                                                                                       "Plans": [                                                                                     +
                                                                                         {                                                                                            +
                                                                                           "Node Type": "Seq Scan",                                                                   +
                                                                                           "Parent Relationship": "Outer",                                                            +
                                                                                           "Parallel Aware": false,                                                                   +
                                                                                           "Relation Name": "movie_keyword",                                                          +
                                                                                           "Alias": "mk",                                                                             +
                                                                                           "Startup Cost": 0.00,                                                                      +
                                                                                           "Total Cost": 1079.84,                                                                     +
                                                                                           "Plan Rows": 4523930,                                                                      +
                                                                                           "Plan Width": 8,                                                                           +
                                                                                           "Actual Startup Time": 0.016,                                                              +
                                                                                           "Actual Total Time": 777.968,                                                              +
                                                                                           "Actual Rows": 4523930,                                                                    +
                                                                                           "Actual Loops": 1,                                                                         +
                                                                                           "Shared Hit Blocks": 3,                                                                    +
                                                                                           "Shared Read Blocks": 24451,                                                               +
                                                                                           "Shared Dirtied Blocks": 0,                                                                +
                                                                                           "Shared Written Blocks": 0,                                                                +
                                                                                           "Local Hit Blocks": 0,                                                                     +
                                                                                           "Local Read Blocks": 0,                                                                    +
                                                                                           "Local Dirtied Blocks": 0,                                                                 +
                                                                                           "Local Written Blocks": 0,                                                                 +
                                                                                           "Temp Read Blocks": 0,                                                                     +
                                                                                           "Temp Written Blocks": 0                                                                   +
                                                                                         }                                                                                            +
                                                                                       ]                                                                                              +
                                                                                     }                                                                                                +
                                                                                   ]                                                                                                  +
                                                                                 }                                                                                                    +
                                                                               ]                                                                                                      +
                                                                             },                                                                                                       +
                                                                             {                                                                                                        +
                                                                               "Node Type": "Sort",                                                                                   +
                                                                               "Parent Relationship": "Inner",                                                                        +
                                                                               "Parallel Aware": false,                                                                               +
                                                                               "Startup Cost": 151757.13,                                                                             +
                                                                               "Total Cost": 154571.13,                                                                               +
                                                                               "Plan Rows": 36244344,                                                                                 +
                                                                               "Plan Width": 12,                                                                                      +
                                                                               "Actual Startup Time": 22382.184,                                                                      +
                                                                               "Actual Total Time": 26547.456,                                                                        +
                                                                               "Actual Rows": 36289753,                                                                               +
                                                                               "Actual Loops": 1,                                                                                     +
                                                                               "Sort Key": ["ci.movie_id"],                                                                           +
                                                                               "Sort Method": "quicksort",                                                                            +
                                                                               "Sort Space Used": 3271818,                                                                            +
                                                                               "Sort Space Type": "Memory",                                                                           +
                                                                               "Shared Hit Blocks": 5,                                                                                +
                                                                               "Shared Read Blocks": 252649,                                                                          +
                                                                               "Shared Dirtied Blocks": 0,                                                                            +
                                                                               "Shared Written Blocks": 0,                                                                            +
                                                                               "Local Hit Blocks": 0,                                                                                 +
                                                                               "Local Read Blocks": 0,                                                                                +
                                                                               "Local Dirtied Blocks": 0,                                                                             +
                                                                               "Local Written Blocks": 0,                                                                             +
                                                                               "Temp Read Blocks": 0,                                                                                 +
                                                                               "Temp Written Blocks": 0,                                                                              +
                                                                               "Plans": [                                                                                             +
                                                                                 {                                                                                                    +
                                                                                   "Node Type": "Seq Scan",                                                                           +
                                                                                   "Parent Relationship": "Outer",                                                                    +
                                                                                   "Parallel Aware": false,                                                                           +
                                                                                   "Relation Name": "cast_info",                                                                      +
                                                                                   "Alias": "ci",                                                                                     +
                                                                                   "Startup Cost": 0.00,                                                                              +
                                                                                   "Total Cost": 10431.00,                                                                            +
                                                                                   "Plan Rows": 36244344,                                                                             +
                                                                                   "Plan Width": 12,                                                                                  +
                                                                                   "Actual Startup Time": 0.017,                                                                      +
                                                                                   "Actual Total Time": 7761.556,                                                                     +
                                                                                   "Actual Rows": 36244344,                                                                           +
                                                                                   "Actual Loops": 1,                                                                                 +
                                                                                   "Shared Hit Blocks": 5,                                                                            +
                                                                                   "Shared Read Blocks": 252649,                                                                      +
                                                                                   "Shared Dirtied Blocks": 0,                                                                        +
                                                                                   "Shared Written Blocks": 0,                                                                        +
                                                                                   "Local Hit Blocks": 0,                                                                             +
                                                                                   "Local Read Blocks": 0,                                                                            +
                                                                                   "Local Dirtied Blocks": 0,                                                                         +
                                                                                   "Local Written Blocks": 0,                                                                         +
                                                                                   "Temp Read Blocks": 0,                                                                             +
                                                                                   "Temp Written Blocks": 0                                                                           +
                                                                                 }                                                                                                    +
                                                                               ]                                                                                                      +
                                                                             }                                                                                                        +
                                                                           ]                                                                                                          +
                                                                         },                                                                                                           +
                                                                         {                                                                                                            +
                                                                           "Node Type": "Sort",                                                                                       +
                                                                           "Parent Relationship": "Inner",                                                                            +
                                                                           "Parallel Aware": false,                                                                                   +
                                                                           "Startup Cost": 4638.12,                                                                                   +
                                                                           "Total Cost": 4716.76,                                                                                     +
                                                                           "Plan Rows": 1012920,                                                                                      +
                                                                           "Plan Width": 25,                                                                                          +
                                                                           "Actual Startup Time": 1948.095,                                                                           +
                                                                           "Actual Total Time": 2088.807,                                                                             +
                                                                           "Actual Rows": 1012442,                                                                                    +
                                                                           "Actual Loops": 1,                                                                                         +
                                                                           "Sort Key": ["t.id"],                                                                                      +
                                                                           "Sort Method": "quicksort",                                                                                +
                                                                           "Sort Space Used": 101193,                                                                                 +
                                                                           "Sort Space Type": "Memory",                                                                               +
                                                                           "Shared Hit Blocks": 2,                                                                                    +
                                                                           "Shared Read Blocks": 35996,                                                                               +
                                                                           "Shared Dirtied Blocks": 0,                                                                                +
                                                                           "Shared Written Blocks": 0,                                                                                +
                                                                           "Local Hit Blocks": 0,                                                                                     +
                                                                           "Local Read Blocks": 0,                                                                                    +
                                                                           "Local Dirtied Blocks": 0,                                                                                 +
                                                                           "Local Written Blocks": 0,                                                                                 +
                                                                           "Temp Read Blocks": 0,                                                                                     +
                                                                           "Temp Written Blocks": 0,                                                                                  +
                                                                           "Plans": [                                                                                                 +
                                                                             {                                                                                                        +
                                                                               "Node Type": "Seq Scan",                                                                               +
                                                                               "Parent Relationship": "Outer",                                                                        +
                                                                               "Parallel Aware": false,                                                                               +
                                                                               "Relation Name": "title",                                                                              +
                                                                               "Alias": "t",                                                                                          +
                                                                               "Startup Cost": 0.00,                                                                                  +
                                                                               "Total Cost": 1500.26,                                                                                 +
                                                                               "Plan Rows": 1012920,                                                                                  +
                                                                               "Plan Width": 25,                                                                                      +
                                                                               "Actual Startup Time": 17.511,                                                                         +
                                                                               "Actual Total Time": 1312.501,                                                                         +
                                                                               "Actual Rows": 1012920,                                                                                +
                                                                               "Actual Loops": 1,                                                                                     +
                                                                               "Filter": "(production_year > 2005)",                                                                  +
                                                                               "Rows Removed by Filter": 1515392,                                                                     +
                                                                               "Shared Hit Blocks": 2,                                                                                +
                                                                               "Shared Read Blocks": 35996,                                                                           +
                                                                               "Shared Dirtied Blocks": 0,                                                                            +
                                                                               "Shared Written Blocks": 0,                                                                            +
                                                                               "Local Hit Blocks": 0,                                                                                 +
                                                                               "Local Read Blocks": 0,                                                                                +
                                                                               "Local Dirtied Blocks": 0,                                                                             +
                                                                               "Local Written Blocks": 0,                                                                             +
                                                                               "Temp Read Blocks": 0,                                                                                 +
                                                                               "Temp Written Blocks": 0                                                                               +
                                                                             }                                                                                                        +
                                                                           ]                                                                                                          +
                                                                         }                                                                                                            +
                                                                       ]                                                                                                              +
                                                                     },                                                                                                               +
                                                                     {                                                                                                                +
                                                                       "Node Type": "Sort",                                                                                           +
                                                                       "Parent Relationship": "Inner",                                                                                +
                                                                       "Parallel Aware": false,                                                                                       +
                                                                       "Startup Cost": 596.49,                                                                                        +
                                                                       "Total Cost": 600.60,                                                                                          +
                                                                       "Plan Rows": 52860,                                                                                            +
                                                                       "Plan Width": 14,                                                                                              +
                                                                       "Actual Startup Time": 763.931,                                                                                +
                                                                       "Actual Total Time": 769.165,                                                                                  +
                                                                       "Actual Rows": 83813,                                                                                          +
                                                                       "Actual Loops": 1,                                                                                             +
                                                                       "Sort Key": ["mi_idx.movie_id"],                                                                               +
                                                                       "Sort Method": "quicksort",                                                                                    +
                                                                       "Sort Space Used": 4065,                                                                                       +
                                                                       "Sort Space Type": "Memory",                                                                                   +
                                                                       "Shared Hit Blocks": 2,                                                                                        +
                                                                       "Shared Read Blocks": 8451,                                                                                    +
                                                                       "Shared Dirtied Blocks": 0,                                                                                    +
                                                                       "Shared Written Blocks": 0,                                                                                    +
                                                                       "Local Hit Blocks": 0,                                                                                         +
                                                                       "Local Read Blocks": 0,                                                                                        +
                                                                       "Local Dirtied Blocks": 0,                                                                                     +
                                                                       "Local Written Blocks": 0,                                                                                     +
                                                                       "Temp Read Blocks": 0,                                                                                         +
                                                                       "Temp Written Blocks": 0,                                                                                      +
                                                                       "Plans": [                                                                                                     +
                                                                         {                                                                                                            +
                                                                           "Node Type": "Seq Scan",                                                                                   +
                                                                           "Parent Relationship": "Outer",                                                                            +
                                                                           "Parallel Aware": false,                                                                                   +
                                                                           "Relation Name": "movie_info_idx",                                                                         +
                                                                           "Alias": "mi_idx",                                                                                         +
                                                                           "Startup Cost": 0.00,                                                                                      +
                                                                           "Total Cost": 467.71,                                                                                      +
                                                                           "Plan Rows": 52860,                                                                                        +
                                                                           "Plan Width": 14,                                                                                          +
                                                                           "Actual Startup Time": 0.032,                                                                              +
                                                                           "Actual Total Time": 726.945,                                                                              +
                                                                           "Actual Rows": 52862,                                                                                      +
                                                                           "Actual Loops": 1,                                                                                         +
                                                                           "Filter": "(info > '8.0'::text)",                                                                          +
                                                                           "Rows Removed by Filter": 1327173,                                                                         +
                                                                           "Shared Hit Blocks": 2,                                                                                    +
                                                                           "Shared Read Blocks": 8451,                                                                                +
                                                                           "Shared Dirtied Blocks": 0,                                                                                +
                                                                           "Shared Written Blocks": 0,                                                                                +
                                                                           "Local Hit Blocks": 0,                                                                                     +
                                                                           "Local Read Blocks": 0,                                                                                    +
                                                                           "Local Dirtied Blocks": 0,                                                                                 +
                                                                           "Local Written Blocks": 0,                                                                                 +
                                                                           "Temp Read Blocks": 0,                                                                                     +
                                                                           "Temp Written Blocks": 0                                                                                   +
                                                                         }                                                                                                            +
                                                                       ]                                                                                                              +
                                                                     }                                                                                                                +
                                                                   ]                                                                                                                  +
                                                                 }                                                                                                                    +
                                                               ]                                                                                                                      +
                                                             }                                                                                                                        +
                                                           ]                                                                                                                          +
                                                         }                                                                                                                            +
                                                       ]                                                                                                                              +
                                                     },                                                                                                                               +
                                                     {                                                                                                                                +
                                                       "Node Type": "Sort",                                                                                                           +
                                                       "Parent Relationship": "Inner",                                                                                                +
                                                       "Parallel Aware": false,                                                                                                       +
                                                       "Startup Cost": 2354.31,                                                                                                       +
                                                       "Total Cost": 2368.77,                                                                                                         +
                                                       "Plan Rows": 186251,                                                                                                           +
                                                       "Plan Width": 20,                                                                                                              +
                                                       "Actual Startup Time": 1769.993,                                                                                               +
                                                       "Actual Total Time": 1789.308,                                                                                                 +
                                                       "Actual Rows": 180084,                                                                                                         +
                                                       "Actual Loops": 1,                                                                                                             +
                                                       "Sort Key": ["chn.id"],                                                                                                        +
                                                       "Sort Method": "quicksort",                                                                                                    +
                                                       "Sort Space Used": 19675,                                                                                                      +
                                                       "Sort Space Type": "Memory",                                                                                                   +
                                                       "Shared Hit Blocks": 2,                                                                                                        +
                                                       "Shared Read Blocks": 36445,                                                                                                   +
                                                       "Shared Dirtied Blocks": 0,                                                                                                    +
                                                       "Shared Written Blocks": 0,                                                                                                    +
                                                       "Local Hit Blocks": 0,                                                                                                         +
                                                       "Local Read Blocks": 0,                                                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                                                     +
                                                       "Local Written Blocks": 0,                                                                                                     +
                                                       "Temp Read Blocks": 0,                                                                                                         +
                                                       "Temp Written Blocks": 0,                                                                                                      +
                                                       "Plans": [                                                                                                                     +
                                                         {                                                                                                                            +
                                                           "Node Type": "Seq Scan",                                                                                                   +
                                                           "Parent Relationship": "Outer",                                                                                            +
                                                           "Parallel Aware": false,                                                                                                   +
                                                           "Relation Name": "char_name",                                                                                              +
                                                           "Alias": "chn",                                                                                                            +
                                                           "Startup Cost": 0.00,                                                                                                      +
                                                           "Total Cost": 1847.99,                                                                                                     +
                                                           "Plan Rows": 186251,                                                                                                       +
                                                           "Plan Width": 20,                                                                                                          +
                                                           "Actual Startup Time": 24.255,                                                                                             +
                                                           "Actual Total Time": 1672.606,                                                                                             +
                                                           "Actual Rows": 180152,                                                                                                     +
                                                           "Actual Loops": 1,                                                                                                         +
                                                           "Filter": "((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))",                                 +
                                                           "Rows Removed by Filter": 2960187,                                                                                         +
                                                           "Shared Hit Blocks": 2,                                                                                                    +
                                                           "Shared Read Blocks": 36445,                                                                                               +
                                                           "Shared Dirtied Blocks": 0,                                                                                                +
                                                           "Shared Written Blocks": 0,                                                                                                +
                                                           "Local Hit Blocks": 0,                                                                                                     +
                                                           "Local Read Blocks": 0,                                                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                                                 +
                                                           "Local Written Blocks": 0,                                                                                                 +
                                                           "Temp Read Blocks": 0,                                                                                                     +
                                                           "Temp Written Blocks": 0                                                                                                   +
                                                         }                                                                                                                            +
                                                       ]                                                                                                                              +
                                                     }                                                                                                                                +
                                                   ]                                                                                                                                  +
                                                 }                                                                                                                                    +
                                               ]                                                                                                                                      +
                                             },                                                                                                                                       +
                                             {                                                                                                                                        +
                                               "Node Type": "Sort",                                                                                                                   +
                                               "Parent Relationship": "Inner",                                                                                                        +
                                               "Parallel Aware": false,                                                                                                               +
                                               "Startup Cost": 16263.33,                                                                                                              +
                                               "Total Cost": 16586.90,                                                                                                                +
                                               "Plan Rows": 4167491,                                                                                                                  +
                                               "Plan Width": 4,                                                                                                                       +
                                               "Actual Startup Time": 3483.091,                                                                                                       +
                                               "Actual Total Time": 3664.063,                                                                                                         +
                                               "Actual Rows": 2693151,                                                                                                                +
                                               "Actual Loops": 1,                                                                                                                     +
                                               "Sort Key": ["n.id"],                                                                                                                  +
                                               "Sort Method": "quicksort",                                                                                                            +
                                               "Sort Space Used": 293656,                                                                                                             +
                                               "Sort Space Type": "Memory",                                                                                                           +
                                               "Shared Hit Blocks": 1,                                                                                                                +
                                               "Shared Read Blocks": 55612,                                                                                                           +
                                               "Shared Dirtied Blocks": 0,                                                                                                            +
                                               "Shared Written Blocks": 0,                                                                                                            +
                                               "Local Hit Blocks": 0,                                                                                                                 +
                                               "Local Read Blocks": 0,                                                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                                                             +
                                               "Local Written Blocks": 0,                                                                                                             +
                                               "Temp Read Blocks": 0,                                                                                                                 +
                                               "Temp Written Blocks": 0,                                                                                                              +
                                               "Plans": [                                                                                                                             +
                                                 {                                                                                                                                    +
                                                   "Node Type": "Seq Scan",                                                                                                           +
                                                   "Parent Relationship": "Outer",                                                                                                    +
                                                   "Parallel Aware": false,                                                                                                           +
                                                   "Relation Name": "name",                                                                                                           +
                                                   "Alias": "n",                                                                                                                      +
                                                   "Startup Cost": 0.00,                                                                                                              +
                                                   "Total Cost": 2032.56,                                                                                                             +
                                                   "Plan Rows": 4167491,                                                                                                              +
                                                   "Plan Width": 4,                                                                                                                   +
                                                   "Actual Startup Time": 6.502,                                                                                                      +
                                                   "Actual Total Time": 1641.214,                                                                                                     +
                                                   "Actual Rows": 4167491,                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                 +
                                                   "Shared Hit Blocks": 1,                                                                                                            +
                                                   "Shared Read Blocks": 55612,                                                                                                       +
                                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                                   "Shared Written Blocks": 0,                                                                                                        +
                                                   "Local Hit Blocks": 0,                                                                                                             +
                                                   "Local Read Blocks": 0,                                                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                                   "Local Written Blocks": 0,                                                                                                         +
                                                   "Temp Read Blocks": 0,                                                                                                             +
                                                   "Temp Written Blocks": 0                                                                                                           +
                                                 }                                                                                                                                    +
                                               ]                                                                                                                                      +
                                             }                                                                                                                                        +
                                           ]                                                                                                                                          +
                                         }                                                                                                                                            +
                                       ]                                                                                                                                              +
                                     },                                                                                                                                               +
                                     {                                                                                                                                                +
                                       "Node Type": "Sort",                                                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                       +
                                       "Startup Cost": 389.78,                                                                                                                        +
                                       "Total Cost": 400.26,                                                                                                                          +
                                       "Plan Rows": 135086,                                                                                                                           +
                                       "Plan Width": 12,                                                                                                                              +
                                       "Actual Startup Time": 156.865,                                                                                                                +
                                       "Actual Total Time": 163.550,                                                                                                                  +
                                       "Actual Rows": 131814,                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                             +
                                       "Sort Key": ["cc.movie_id"],                                                                                                                   +
                                       "Sort Method": "quicksort",                                                                                                                    +
                                       "Sort Space Used": 12477,                                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                                   +
                                       "Shared Hit Blocks": 2,                                                                                                                        +
                                       "Shared Read Blocks": 729,                                                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                                                      +
                                       "Plans": [                                                                                                                                     +
                                         {                                                                                                                                            +
                                           "Node Type": "Seq Scan",                                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                                            +
                                           "Parallel Aware": false,                                                                                                                   +
                                           "Relation Name": "complete_cast",                                                                                                          +
                                           "Alias": "cc",                                                                                                                             +
                                           "Startup Cost": 0.00,                                                                                                                      +
                                           "Total Cost": 32.27,                                                                                                                       +
                                           "Plan Rows": 135086,                                                                                                                       +
                                           "Plan Width": 12,                                                                                                                          +
                                           "Actual Startup Time": 22.206,                                                                                                             +
                                           "Actual Total Time": 80.523,                                                                                                               +
                                           "Actual Rows": 135086,                                                                                                                     +
                                           "Actual Loops": 1,                                                                                                                         +
                                           "Shared Hit Blocks": 2,                                                                                                                    +
                                           "Shared Read Blocks": 729,                                                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                                                +
                                           "Shared Written Blocks": 0,                                                                                                                +
                                           "Local Hit Blocks": 0,                                                                                                                     +
                                           "Local Read Blocks": 0,                                                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                                                 +
                                           "Local Written Blocks": 0,                                                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                                                     +
                                           "Temp Written Blocks": 0                                                                                                                   +
                                         }                                                                                                                                            +
                                       ]                                                                                                                                              +
                                     }                                                                                                                                                +
                                   ]                                                                                                                                                  +
                                 }                                                                                                                                                    +
                               ]                                                                                                                                                      +
                             }                                                                                                                                                        +
                           ]                                                                                                                                                          +
                         }                                                                                                                                                            +
                       ]                                                                                                                                                              +
                     }                                                                                                                                                                +
                   ]                                                                                                                                                                  +
                 }                                                                                                                                                                    +
               ]                                                                                                                                                                      +
             },                                                                                                                                                                       +
             {                                                                                                                                                                        +
               "Node Type": "Sort",                                                                                                                                                   +
               "Parent Relationship": "Inner",                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                               +
               "Startup Cost": 0.03,                                                                                                                                                  +
               "Total Cost": 0.03,                                                                                                                                                    +
               "Plan Rows": 1,                                                                                                                                                        +
               "Plan Width": 4,                                                                                                                                                       +
               "Actual Startup Time": 0.018,                                                                                                                                          +
               "Actual Total Time": 0.018,                                                                                                                                            +
               "Actual Rows": 1,                                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                                     +
               "Sort Key": ["kt.id"],                                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                                            +
               "Sort Space Used": 25,                                                                                                                                                 +
               "Sort Space Type": "Memory",                                                                                                                                           +
               "Shared Hit Blocks": 1,                                                                                                                                                +
               "Shared Read Blocks": 0,                                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                                 +
               "Temp Written Blocks": 0,                                                                                                                                              +
               "Plans": [                                                                                                                                                             +
                 {                                                                                                                                                                    +
                   "Node Type": "Seq Scan",                                                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                                           +
                   "Relation Name": "kind_type",                                                                                                                                      +
                   "Alias": "kt",                                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                                              +
                   "Total Cost": 0.03,                                                                                                                                                +
                   "Plan Rows": 1,                                                                                                                                                    +
                   "Plan Width": 4,                                                                                                                                                   +
                   "Actual Startup Time": 0.010,                                                                                                                                      +
                   "Actual Total Time": 0.012,                                                                                                                                        +
                   "Actual Rows": 1,                                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                                 +
                   "Filter": "((kind)::text = 'movie'::text)",                                                                                                                        +
                   "Rows Removed by Filter": 6,                                                                                                                                       +
                   "Shared Hit Blocks": 1,                                                                                                                                            +
                   "Shared Read Blocks": 0,                                                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                                                             +
                   "Temp Written Blocks": 0                                                                                                                                           +
                 }                                                                                                                                                                    +
               ]                                                                                                                                                                      +
             }                                                                                                                                                                        +
           ]                                                                                                                                                                          +
         }                                                                                                                                                                            +
       ]                                                                                                                                                                              +
     },                                                                                                                                                                               +
     "Planning Time": 10266.069,                                                                                                                                                      +
     "Triggers": [                                                                                                                                                                    +
     ],                                                                                                                                                                               +
     "Execution Time": 43134.620                                                                                                                                                      +
   }                                                                                                                                                                                  +
 ]
(1 row)

