                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                   +
   {                                                                                                                                                                                                 +
     "Plan": {                                                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                                                      +
       "Startup Cost": 72658.28,                                                                                                                                                                     +
       "Total Cost": 72658.28,                                                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                                                               +
       "Plan Width": 128,                                                                                                                                                                            +
       "Actual Startup Time": 31525.419,                                                                                                                                                             +
       "Actual Total Time": 31525.419,                                                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                                                             +
       "Actual Loops": 1,                                                                                                                                                                            +
       "Shared Hit Blocks": 38,                                                                                                                                                                      +
       "Shared Read Blocks": 539796,                                                                                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                                                                                   +
       "Shared Written Blocks": 0,                                                                                                                                                                   +
       "Local Hit Blocks": 0,                                                                                                                                                                        +
       "Local Read Blocks": 0,                                                                                                                                                                       +
       "Local Dirtied Blocks": 0,                                                                                                                                                                    +
       "Local Written Blocks": 0,                                                                                                                                                                    +
       "Temp Read Blocks": 0,                                                                                                                                                                        +
       "Temp Written Blocks": 0,                                                                                                                                                                     +
       "Plans": [                                                                                                                                                                                    +
         {                                                                                                                                                                                           +
           "Node Type": "Merge Join",                                                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                                                           +
           "Parallel Aware": false,                                                                                                                                                                  +
           "Join Type": "Inner",                                                                                                                                                                     +
           "Startup Cost": 72658.28,                                                                                                                                                                 +
           "Total Cost": 72658.28,                                                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                                                           +
           "Plan Width": 80,                                                                                                                                                                         +
           "Actual Startup Time": 31484.005,                                                                                                                                                         +
           "Actual Total Time": 31491.860,                                                                                                                                                           +
           "Actual Rows": 8024,                                                                                                                                                                      +
           "Actual Loops": 1,                                                                                                                                                                        +
           "Inner Unique": true,                                                                                                                                                                     +
           "Merge Cond": "(cc.subject_id = cct1.id)",                                                                                                                                                +
           "Shared Hit Blocks": 38,                                                                                                                                                                  +
           "Shared Read Blocks": 539796,                                                                                                                                                             +
           "Shared Dirtied Blocks": 0,                                                                                                                                                               +
           "Shared Written Blocks": 0,                                                                                                                                                               +
           "Local Hit Blocks": 0,                                                                                                                                                                    +
           "Local Read Blocks": 0,                                                                                                                                                                   +
           "Local Dirtied Blocks": 0,                                                                                                                                                                +
           "Local Written Blocks": 0,                                                                                                                                                                +
           "Temp Read Blocks": 0,                                                                                                                                                                    +
           "Temp Written Blocks": 0,                                                                                                                                                                 +
           "Plans": [                                                                                                                                                                                +
             {                                                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                                                                       +
               "Parallel Aware": false,                                                                                                                                                              +
               "Startup Cost": 72658.25,                                                                                                                                                             +
               "Total Cost": 72658.25,                                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                                       +
               "Plan Width": 84,                                                                                                                                                                     +
               "Actual Startup Time": 31483.981,                                                                                                                                                     +
               "Actual Total Time": 31485.231,                                                                                                                                                       +
               "Actual Rows": 8025,                                                                                                                                                                  +
               "Actual Loops": 1,                                                                                                                                                                    +
               "Sort Key": ["cc.subject_id"],                                                                                                                                                        +
               "Sort Method": "quicksort",                                                                                                                                                           +
               "Sort Space Used": 1385,                                                                                                                                                              +
               "Sort Space Type": "Memory",                                                                                                                                                          +
               "Shared Hit Blocks": 37,                                                                                                                                                              +
               "Shared Read Blocks": 539796,                                                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                                                           +
               "Shared Written Blocks": 0,                                                                                                                                                           +
               "Local Hit Blocks": 0,                                                                                                                                                                +
               "Local Read Blocks": 0,                                                                                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                                                                                            +
               "Local Written Blocks": 0,                                                                                                                                                            +
               "Temp Read Blocks": 0,                                                                                                                                                                +
               "Temp Written Blocks": 0,                                                                                                                                                             +
               "Plans": [                                                                                                                                                                            +
                 {                                                                                                                                                                                   +
                   "Node Type": "Merge Join",                                                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                                                   +
                   "Parallel Aware": false,                                                                                                                                                          +
                   "Join Type": "Inner",                                                                                                                                                             +
                   "Startup Cost": 72658.25,                                                                                                                                                         +
                   "Total Cost": 72658.25,                                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                                                   +
                   "Plan Width": 84,                                                                                                                                                                 +
                   "Actual Startup Time": 31469.721,                                                                                                                                                 +
                   "Actual Total Time": 31472.298,                                                                                                                                                   +
                   "Actual Rows": 9735,                                                                                                                                                              +
                   "Actual Loops": 1,                                                                                                                                                                +
                   "Inner Unique": false,                                                                                                                                                            +
                   "Merge Cond": "(it1.id = mi.info_type_id)",                                                                                                                                       +
                   "Shared Hit Blocks": 33,                                                                                                                                                          +
                   "Shared Read Blocks": 539796,                                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                       +
                   "Shared Written Blocks": 0,                                                                                                                                                       +
                   "Local Hit Blocks": 0,                                                                                                                                                            +
                   "Local Read Blocks": 0,                                                                                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                                                                                        +
                   "Local Written Blocks": 0,                                                                                                                                                        +
                   "Temp Read Blocks": 0,                                                                                                                                                            +
                   "Temp Written Blocks": 0,                                                                                                                                                         +
                   "Plans": [                                                                                                                                                                        +
                     {                                                                                                                                                                               +
                       "Node Type": "Sort",                                                                                                                                                          +
                       "Parent Relationship": "Outer",                                                                                                                                               +
                       "Parallel Aware": false,                                                                                                                                                      +
                       "Startup Cost": 0.05,                                                                                                                                                         +
                       "Total Cost": 0.05,                                                                                                                                                           +
                       "Plan Rows": 1,                                                                                                                                                               +
                       "Plan Width": 4,                                                                                                                                                              +
                       "Actual Startup Time": 0.078,                                                                                                                                                 +
                       "Actual Total Time": 0.079,                                                                                                                                                   +
                       "Actual Rows": 1,                                                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                                            +
                       "Sort Key": ["it1.id"],                                                                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                                                                   +
                       "Sort Space Used": 25,                                                                                                                                                        +
                       "Sort Space Type": "Memory",                                                                                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                                                                                       +
                       "Shared Read Blocks": 0,                                                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                   +
                       "Shared Written Blocks": 0,                                                                                                                                                   +
                       "Local Hit Blocks": 0,                                                                                                                                                        +
                       "Local Read Blocks": 0,                                                                                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                                                                                    +
                       "Local Written Blocks": 0,                                                                                                                                                    +
                       "Temp Read Blocks": 0,                                                                                                                                                        +
                       "Temp Written Blocks": 0,                                                                                                                                                     +
                       "Plans": [                                                                                                                                                                    +
                         {                                                                                                                                                                           +
                           "Node Type": "Seq Scan",                                                                                                                                                  +
                           "Parent Relationship": "Outer",                                                                                                                                           +
                           "Parallel Aware": false,                                                                                                                                                  +
                           "Relation Name": "info_type",                                                                                                                                             +
                           "Alias": "it1",                                                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                                                     +
                           "Total Cost": 0.05,                                                                                                                                                       +
                           "Plan Rows": 1,                                                                                                                                                           +
                           "Plan Width": 4,                                                                                                                                                          +
                           "Actual Startup Time": 0.024,                                                                                                                                             +
                           "Actual Total Time": 0.063,                                                                                                                                               +
                           "Actual Rows": 1,                                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                                        +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                                                              +
                           "Rows Removed by Filter": 112,                                                                                                                                            +
                           "Shared Hit Blocks": 1,                                                                                                                                                   +
                           "Shared Read Blocks": 0,                                                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                                               +
                           "Shared Written Blocks": 0,                                                                                                                                               +
                           "Local Hit Blocks": 0,                                                                                                                                                    +
                           "Local Read Blocks": 0,                                                                                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                                                                                +
                           "Local Written Blocks": 0,                                                                                                                                                +
                           "Temp Read Blocks": 0,                                                                                                                                                    +
                           "Temp Written Blocks": 0                                                                                                                                                  +
                         }                                                                                                                                                                           +
                       ]                                                                                                                                                                             +
                     },                                                                                                                                                                              +
                     {                                                                                                                                                                               +
                       "Node Type": "Sort",                                                                                                                                                          +
                       "Parent Relationship": "Inner",                                                                                                                                               +
                       "Parallel Aware": false,                                                                                                                                                      +
                       "Startup Cost": 72658.20,                                                                                                                                                     +
                       "Total Cost": 72658.20,                                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                                               +
                       "Plan Width": 88,                                                                                                                                                             +
                       "Actual Startup Time": 31469.637,                                                                                                                                             +
                       "Actual Total Time": 31470.131,                                                                                                                                               +
                       "Actual Rows": 9736,                                                                                                                                                          +
                       "Actual Loops": 1,                                                                                                                                                            +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                                                                   +
                       "Sort Space Used": 1910,                                                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                                                  +
                       "Shared Hit Blocks": 32,                                                                                                                                                      +
                       "Shared Read Blocks": 539796,                                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                   +
                       "Shared Written Blocks": 0,                                                                                                                                                   +
                       "Local Hit Blocks": 0,                                                                                                                                                        +
                       "Local Read Blocks": 0,                                                                                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                                                                                    +
                       "Local Written Blocks": 0,                                                                                                                                                    +
                       "Temp Read Blocks": 0,                                                                                                                                                        +
                       "Temp Written Blocks": 0,                                                                                                                                                     +
                       "Plans": [                                                                                                                                                                    +
                         {                                                                                                                                                                           +
                           "Node Type": "Merge Join",                                                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                                                           +
                           "Parallel Aware": false,                                                                                                                                                  +
                           "Join Type": "Inner",                                                                                                                                                     +
                           "Startup Cost": 72628.82,                                                                                                                                                 +
                           "Total Cost": 72658.20,                                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                                           +
                           "Plan Width": 88,                                                                                                                                                         +
                           "Actual Startup Time": 31431.563,                                                                                                                                         +
                           "Actual Total Time": 31465.344,                                                                                                                                           +
                           "Actual Rows": 13089,                                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                                        +
                           "Inner Unique": false,                                                                                                                                                    +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                                                     +
                           "Shared Hit Blocks": 32,                                                                                                                                                  +
                           "Shared Read Blocks": 539796,                                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                                               +
                           "Shared Written Blocks": 0,                                                                                                                                               +
                           "Local Hit Blocks": 0,                                                                                                                                                    +
                           "Local Read Blocks": 0,                                                                                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                                                                                +
                           "Local Written Blocks": 0,                                                                                                                                                +
                           "Temp Read Blocks": 0,                                                                                                                                                    +
                           "Temp Written Blocks": 0,                                                                                                                                                 +
                           "Plans": [                                                                                                                                                                +
                             {                                                                                                                                                                       +
                               "Node Type": "Sort",                                                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                                                       +
                               "Parallel Aware": false,                                                                                                                                              +
                               "Startup Cost": 62554.55,                                                                                                                                             +
                               "Total Cost": 62554.55,                                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                                       +
                               "Plan Width": 62,                                                                                                                                                     +
                               "Actual Startup Time": 23113.909,                                                                                                                                     +
                               "Actual Total Time": 23114.594,                                                                                                                                       +
                               "Actual Rows": 7165,                                                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["mk.movie_id"],                                                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 1200,                                                                                                                                              +
                               "Sort Space Type": "Memory",                                                                                                                                          +
                               "Shared Hit Blocks": 30,                                                                                                                                              +
                               "Shared Read Blocks": 377906,                                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                                                +
                               "Temp Written Blocks": 0,                                                                                                                                             +
                               "Plans": [                                                                                                                                                            +
                                 {                                                                                                                                                                   +
                                   "Node Type": "Merge Join",                                                                                                                                        +
                                   "Parent Relationship": "Outer",                                                                                                                                   +
                                   "Parallel Aware": false,                                                                                                                                          +
                                   "Join Type": "Inner",                                                                                                                                             +
                                   "Startup Cost": 62291.30,                                                                                                                                         +
                                   "Total Cost": 62554.55,                                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                                                   +
                                   "Plan Width": 62,                                                                                                                                                 +
                                   "Actual Startup Time": 22697.183,                                                                                                                                 +
                                   "Actual Total Time": 23110.612,                                                                                                                                   +
                                   "Actual Rows": 7165,                                                                                                                                              +
                                   "Actual Loops": 1,                                                                                                                                                +
                                   "Inner Unique": true,                                                                                                                                             +
                                   "Merge Cond": "(ci.person_id = n.id)",                                                                                                                            +
                                   "Shared Hit Blocks": 30,                                                                                                                                          +
                                   "Shared Read Blocks": 377906,                                                                                                                                     +
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
                                       "Node Type": "Sort",                                                                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                                                               +
                                       "Parallel Aware": false,                                                                                                                                      +
                                       "Startup Cost": 54335.98,                                                                                                                                     +
                                       "Total Cost": 54335.98,                                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                                               +
                                       "Plan Width": 51,                                                                                                                                             +
                                       "Actual Startup Time": 19602.308,                                                                                                                             +
                                       "Actual Total Time": 19603.408,                                                                                                                               +
                                       "Actual Rows": 7166,                                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                                            +
                                       "Sort Key": ["ci.person_id"],                                                                                                                                 +
                                       "Sort Method": "quicksort",                                                                                                                                   +
                                       "Sort Space Used": 1646,                                                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                                                  +
                                       "Shared Hit Blocks": 29,                                                                                                                                      +
                                       "Shared Read Blocks": 322294,                                                                                                                                 +
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
                                           "Startup Cost": 53943.77,                                                                                                                                 +
                                           "Total Cost": 54335.97,                                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                                           +
                                           "Plan Width": 51,                                                                                                                                         +
                                           "Actual Startup Time": 18977.364,                                                                                                                         +
                                           "Actual Total Time": 19597.281,                                                                                                                           +
                                           "Actual Rows": 11002,                                                                                                                                     +
                                           "Actual Loops": 1,                                                                                                                                        +
                                           "Inner Unique": true,                                                                                                                                     +
                                           "Merge Cond": "(mi_idx.movie_id = t.id)",                                                                                                                 +
                                           "Shared Hit Blocks": 29,                                                                                                                                  +
                                           "Shared Read Blocks": 322294,                                                                                                                             +
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
                                               "Startup Cost": 44289.42,                                                                                                                             +
                                               "Total Cost": 44289.42,                                                                                                                               +
                                               "Plan Rows": 1,                                                                                                                                       +
                                               "Plan Width": 30,                                                                                                                                     +
                                               "Actual Startup Time": 16618.955,                                                                                                                     +
                                               "Actual Total Time": 16619.817,                                                                                                                       +
                                               "Actual Rows": 11002,                                                                                                                                 +
                                               "Actual Loops": 1,                                                                                                                                    +
                                               "Sort Key": ["mk.movie_id"],                                                                                                                          +
                                               "Sort Method": "quicksort",                                                                                                                           +
                                               "Sort Space Used": 1244,                                                                                                                              +
                                               "Sort Space Type": "Memory",                                                                                                                          +
                                               "Shared Hit Blocks": 27,                                                                                                                              +
                                               "Shared Read Blocks": 286298,                                                                                                                         +
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
                                                   "Startup Cost": 44289.42,                                                                                                                         +
                                                   "Total Cost": 44289.42,                                                                                                                           +
                                                   "Plan Rows": 1,                                                                                                                                   +
                                                   "Plan Width": 30,                                                                                                                                 +
                                                   "Actual Startup Time": 16613.030,                                                                                                                 +
                                                   "Actual Total Time": 16616.067,                                                                                                                   +
                                                   "Actual Rows": 11002,                                                                                                                             +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Inner Unique": false,                                                                                                                            +
                                                   "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                                                                                   +
                                                   "Shared Hit Blocks": 27,                                                                                                                          +
                                                   "Shared Read Blocks": 286298,                                                                                                                     +
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
                                                       "Startup Cost": 0.05,                                                                                                                         +
                                                       "Total Cost": 0.05,                                                                                                                           +
                                                       "Plan Rows": 1,                                                                                                                               +
                                                       "Plan Width": 4,                                                                                                                              +
                                                       "Actual Startup Time": 0.063,                                                                                                                 +
                                                       "Actual Total Time": 0.064,                                                                                                                   +
                                                       "Actual Rows": 1,                                                                                                                             +
                                                       "Actual Loops": 1,                                                                                                                            +
                                                       "Sort Key": ["it2.id"],                                                                                                                       +
                                                       "Sort Method": "quicksort",                                                                                                                   +
                                                       "Sort Space Used": 25,                                                                                                                        +
                                                       "Sort Space Type": "Memory",                                                                                                                  +
                                                       "Shared Hit Blocks": 1,                                                                                                                       +
                                                       "Shared Read Blocks": 0,                                                                                                                      +
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
                                                           "Relation Name": "info_type",                                                                                                             +
                                                           "Alias": "it2",                                                                                                                           +
                                                           "Startup Cost": 0.00,                                                                                                                     +
                                                           "Total Cost": 0.05,                                                                                                                       +
                                                           "Plan Rows": 1,                                                                                                                           +
                                                           "Plan Width": 4,                                                                                                                          +
                                                           "Actual Startup Time": 0.043,                                                                                                             +
                                                           "Actual Total Time": 0.049,                                                                                                               +
                                                           "Actual Rows": 1,                                                                                                                         +
                                                           "Actual Loops": 1,                                                                                                                        +
                                                           "Filter": "((info)::text = 'votes'::text)",                                                                                               +
                                                           "Rows Removed by Filter": 112,                                                                                                            +
                                                           "Shared Hit Blocks": 1,                                                                                                                   +
                                                           "Shared Read Blocks": 0,                                                                                                                  +
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
                                                     },                                                                                                                                              +
                                                     {                                                                                                                                               +
                                                       "Node Type": "Sort",                                                                                                                          +
                                                       "Parent Relationship": "Inner",                                                                                                               +
                                                       "Parallel Aware": false,                                                                                                                      +
                                                       "Startup Cost": 44289.37,                                                                                                                     +
                                                       "Total Cost": 44289.37,                                                                                                                       +
                                                       "Plan Rows": 5,                                                                                                                               +
                                                       "Plan Width": 34,                                                                                                                             +
                                                       "Actual Startup Time": 16610.872,                                                                                                             +
                                                       "Actual Total Time": 16611.980,                                                                                                               +
                                                       "Actual Rows": 22005,                                                                                                                         +
                                                       "Actual Loops": 1,                                                                                                                            +
                                                       "Sort Key": ["mi_idx.info_type_id"],                                                                                                          +
                                                       "Sort Method": "quicksort",                                                                                                                   +
                                                       "Sort Space Used": 4160,                                                                                                                      +
                                                       "Sort Space Type": "Memory",                                                                                                                  +
                                                       "Shared Hit Blocks": 26,                                                                                                                      +
                                                       "Shared Read Blocks": 286298,                                                                                                                 +
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
                                                           "Startup Cost": 44075.08,                                                                                                                 +
                                                           "Total Cost": 44289.37,                                                                                                                   +
                                                           "Plan Rows": 5,                                                                                                                           +
                                                           "Plan Width": 34,                                                                                                                         +
                                                           "Actual Startup Time": 16393.041,                                                                                                         +
                                                           "Actual Total Time": 16599.395,                                                                                                           +
                                                           "Actual Rows": 33580,                                                                                                                     +
                                                           "Actual Loops": 1,                                                                                                                        +
                                                           "Inner Unique": false,                                                                                                                    +
                                                           "Merge Cond": "(ci.movie_id = mi_idx.movie_id)",                                                                                          +
                                                           "Shared Hit Blocks": 26,                                                                                                                  +
                                                           "Shared Read Blocks": 286298,                                                                                                             +
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
                                                               "Startup Cost": 39343.77,                                                                                                             +
                                                               "Total Cost": 39343.77,                                                                                                               +
                                                               "Plan Rows": 6,                                                                                                                       +
                                                               "Plan Width": 20,                                                                                                                     +
                                                               "Actual Startup Time": 15308.407,                                                                                                     +
                                                               "Actual Total Time": 15309.266,                                                                                                       +
                                                               "Actual Rows": 11071,                                                                                                                 +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["mk.movie_id"],                                                                                                          +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 1249,                                                                                                              +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 24,                                                                                                              +
                                                               "Shared Read Blocks": 277847,                                                                                                         +
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
                                                                   "Startup Cost": 39343.77,                                                                                                         +
                                                                   "Total Cost": 39343.77,                                                                                                           +
                                                                   "Plan Rows": 6,                                                                                                                   +
                                                                   "Plan Width": 20,                                                                                                                 +
                                                                   "Actual Startup Time": 15301.770,                                                                                                 +
                                                                   "Actual Total Time": 15304.638,                                                                                                   +
                                                                   "Actual Rows": 11071,                                                                                                             +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Inner Unique": false,                                                                                                            +
                                                                   "Merge Cond": "(cct2.id = cc.status_id)",                                                                                         +
                                                                   "Shared Hit Blocks": 24,                                                                                                          +
                                                                   "Shared Read Blocks": 277847,                                                                                                     +
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
                                                                       "Startup Cost": 0.03,                                                                                                         +
                                                                       "Total Cost": 0.03,                                                                                                           +
                                                                       "Plan Rows": 1,                                                                                                               +
                                                                       "Plan Width": 4,                                                                                                              +
                                                                       "Actual Startup Time": 0.027,                                                                                                 +
                                                                       "Actual Total Time": 0.027,                                                                                                   +
                                                                       "Actual Rows": 1,                                                                                                             +
                                                                       "Actual Loops": 1,                                                                                                            +
                                                                       "Sort Key": ["cct2.id"],                                                                                                      +
                                                                       "Sort Method": "quicksort",                                                                                                   +
                                                                       "Sort Space Used": 25,                                                                                                        +
                                                                       "Sort Space Type": "Memory",                                                                                                  +
                                                                       "Shared Hit Blocks": 1,                                                                                                       +
                                                                       "Shared Read Blocks": 0,                                                                                                      +
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
                                                                           "Relation Name": "comp_cast_type",                                                                                        +
                                                                           "Alias": "cct2",                                                                                                          +
                                                                           "Startup Cost": 0.00,                                                                                                     +
                                                                           "Total Cost": 0.03,                                                                                                       +
                                                                           "Plan Rows": 1,                                                                                                           +
                                                                           "Plan Width": 4,                                                                                                          +
                                                                           "Actual Startup Time": 0.012,                                                                                             +
                                                                           "Actual Total Time": 0.013,                                                                                               +
                                                                           "Actual Rows": 1,                                                                                                         +
                                                                           "Actual Loops": 1,                                                                                                        +
                                                                           "Filter": "((kind)::text = 'complete+verified'::text)",                                                                   +
                                                                           "Rows Removed by Filter": 3,                                                                                              +
                                                                           "Shared Hit Blocks": 1,                                                                                                   +
                                                                           "Shared Read Blocks": 0,                                                                                                  +
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
                                                                     },                                                                                                                              +
                                                                     {                                                                                                                               +
                                                                       "Node Type": "Sort",                                                                                                          +
                                                                       "Parent Relationship": "Inner",                                                                                               +
                                                                       "Parallel Aware": false,                                                                                                      +
                                                                       "Startup Cost": 39343.74,                                                                                                     +
                                                                       "Total Cost": 39343.74,                                                                                                       +
                                                                       "Plan Rows": 23,                                                                                                              +
                                                                       "Plan Width": 24,                                                                                                             +
                                                                       "Actual Startup Time": 15299.386,                                                                                             +
                                                                       "Actual Total Time": 15300.559,                                                                                               +
                                                                       "Actual Rows": 24919,                                                                                                         +
                                                                       "Actual Loops": 1,                                                                                                            +
                                                                       "Sort Key": ["cc.status_id"],                                                                                                 +
                                                                       "Sort Method": "quicksort",                                                                                                   +
                                                                       "Sort Space Used": 2715,                                                                                                      +
                                                                       "Sort Space Type": "Memory",                                                                                                  +
                                                                       "Shared Hit Blocks": 23,                                                                                                      +
                                                                       "Shared Read Blocks": 277847,                                                                                                 +
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
                                                                           "Startup Cost": 39129.62,                                                                                                 +
                                                                           "Total Cost": 39343.72,                                                                                                   +
                                                                           "Plan Rows": 23,                                                                                                          +
                                                                           "Plan Width": 24,                                                                                                         +
                                                                           "Actual Startup Time": 14992.864,                                                                                         +
                                                                           "Actual Total Time": 15292.574,                                                                                           +
                                                                           "Actual Rows": 24919,                                                                                                     +
                                                                           "Actual Loops": 1,                                                                                                        +
                                                                           "Inner Unique": false,                                                                                                    +
                                                                           "Merge Cond": "(ci.movie_id = cc.movie_id)",                                                                              +
                                                                           "Shared Hit Blocks": 23,                                                                                                  +
                                                                           "Shared Read Blocks": 277847,                                                                                             +
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
                                                                               "Startup Cost": 38739.85,                                                                                             +
                                                                               "Total Cost": 38933.35,                                                                                               +
                                                                               "Plan Rows": 274,                                                                                                     +
                                                                               "Plan Width": 12,                                                                                                     +
                                                                               "Actual Startup Time": 14874.180,                                                                                     +
                                                                               "Actual Total Time": 15140.262,                                                                                       +
                                                                               "Actual Rows": 43178,                                                                                                 +
                                                                               "Actual Loops": 1,                                                                                                    +
                                                                               "Inner Unique": false,                                                                                                +
                                                                               "Merge Cond": "(mk.movie_id = ci.movie_id)",                                                                          +
                                                                               "Shared Hit Blocks": 21,                                                                                              +
                                                                               "Shared Read Blocks": 277118,                                                                                         +
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
                                                                                   "Node Type": "Sort",                                                                                              +
                                                                                   "Parent Relationship": "Outer",                                                                                   +
                                                                                   "Parallel Aware": false,                                                                                          +
                                                                                   "Startup Cost": 17356.63,                                                                                         +
                                                                                   "Total Cost": 17356.65,                                                                                           +
                                                                                   "Plan Rows": 236,                                                                                                 +
                                                                                   "Plan Width": 4,                                                                                                  +
                                                                                   "Actual Startup Time": 2574.450,                                                                                  +
                                                                                   "Actual Total Time": 2585.091,                                                                                    +
                                                                                   "Actual Rows": 76714,                                                                                             +
                                                                                   "Actual Loops": 1,                                                                                                +
                                                                                   "Sort Key": ["mk.movie_id"],                                                                                      +
                                                                                   "Sort Method": "quicksort",                                                                                       +
                                                                                   "Sort Space Used": 6668,                                                                                          +
                                                                                   "Sort Space Type": "Memory",                                                                                      +
                                                                                   "Shared Hit Blocks": 17,                                                                                          +
                                                                                   "Shared Read Blocks": 24468,                                                                                      +
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
                                                                                       "Startup Cost": 16653.85,                                                                                     +
                                                                                       "Total Cost": 17356.34,                                                                                       +
                                                                                       "Plan Rows": 236,                                                                                             +
                                                                                       "Plan Width": 4,                                                                                              +
                                                                                       "Actual Startup Time": 2339.406,                                                                              +
                                                                                       "Actual Total Time": 2547.801,                                                                                +
                                                                                       "Actual Rows": 76714,                                                                                         +
                                                                                       "Actual Loops": 1,                                                                                            +
                                                                                       "Inner Unique": false,                                                                                        +
                                                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                                       +
                                                                                       "Shared Hit Blocks": 17,                                                                                      +
                                                                                       "Shared Read Blocks": 24468,                                                                                  +
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
                                                                                           "Startup Cost": 42.93,                                                                                    +
                                                                                           "Total Cost": 42.93,                                                                                      +
                                                                                           "Plan Rows": 7,                                                                                           +
                                                                                           "Plan Width": 4,                                                                                          +
                                                                                           "Actual Startup Time": 70.892,                                                                            +
                                                                                           "Actual Total Time": 70.895,                                                                              +
                                                                                           "Actual Rows": 7,                                                                                         +
                                                                                           "Actual Loops": 1,                                                                                        +
                                                                                           "Sort Key": ["k.id"],                                                                                     +
                                                                                           "Sort Method": "quicksort",                                                                               +
                                                                                           "Sort Space Used": 25,                                                                                    +
                                                                                           "Sort Space Type": "Memory",                                                                              +
                                                                                           "Shared Hit Blocks": 14,                                                                                  +
                                                                                           "Shared Read Blocks": 17,                                                                                 +
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
                                                                                               "Node Type": "Index Scan",                                                                            +
                                                                                               "Parent Relationship": "Outer",                                                                       +
                                                                                               "Parallel Aware": false,                                                                              +
                                                                                               "Scan Direction": "Forward",                                                                          +
                                                                                               "Index Name": "keyword_idx_keyword",                                                                  +
                                                                                               "Relation Name": "keyword",                                                                           +
                                                                                               "Alias": "k",                                                                                         +
                                                                                               "Startup Cost": 0.01,                                                                                 +
                                                                                               "Total Cost": 42.93,                                                                                  +
                                                                                               "Plan Rows": 7,                                                                                       +
                                                                                               "Plan Width": 4,                                                                                      +
                                                                                               "Actual Startup Time": 30.227,                                                                        +
                                                                                               "Actual Total Time": 70.852,                                                                          +
                                                                                               "Actual Rows": 7,                                                                                     +
                                                                                               "Actual Loops": 1,                                                                                    +
                                                                                               "Index Cond": "(keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))",+
                                                                                               "Rows Removed by Index Recheck": 0,                                                                   +
                                                                                               "Shared Hit Blocks": 14,                                                                              +
                                                                                               "Shared Read Blocks": 17,                                                                             +
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
                                                                                         },                                                                                                          +
                                                                                         {                                                                                                           +
                                                                                           "Node Type": "Sort",                                                                                      +
                                                                                           "Parent Relationship": "Inner",                                                                           +
                                                                                           "Parallel Aware": false,                                                                                  +
                                                                                           "Startup Cost": 16610.92,                                                                                 +
                                                                                           "Total Cost": 16962.16,                                                                                   +
                                                                                           "Plan Rows": 4523930,                                                                                     +
                                                                                           "Plan Width": 8,                                                                                          +
                                                                                           "Actual Startup Time": 2217.643,                                                                          +
                                                                                           "Actual Total Time": 2358.819,                                                                            +
                                                                                           "Actual Rows": 943582,                                                                                    +
                                                                                           "Actual Loops": 1,                                                                                        +
                                                                                           "Sort Key": ["mk.keyword_id"],                                                                            +
                                                                                           "Sort Method": "quicksort",                                                                               +
                                                                                           "Sort Space Used": 408668,                                                                                +
                                                                                           "Sort Space Type": "Memory",                                                                              +
                                                                                           "Shared Hit Blocks": 3,                                                                                   +
                                                                                           "Shared Read Blocks": 24451,                                                                              +
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
                                                                                               "Relation Name": "movie_keyword",                                                                     +
                                                                                               "Alias": "mk",                                                                                        +
                                                                                               "Startup Cost": 0.00,                                                                                 +
                                                                                               "Total Cost": 1079.84,                                                                                +
                                                                                               "Plan Rows": 4523930,                                                                                 +
                                                                                               "Plan Width": 8,                                                                                      +
                                                                                               "Actual Startup Time": 0.016,                                                                         +
                                                                                               "Actual Total Time": 781.682,                                                                         +
                                                                                               "Actual Rows": 4523930,                                                                               +
                                                                                               "Actual Loops": 1,                                                                                    +
                                                                                               "Shared Hit Blocks": 3,                                                                               +
                                                                                               "Shared Read Blocks": 24451,                                                                          +
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
                                                                                 {                                                                                                                   +
                                                                                   "Node Type": "Sort",                                                                                              +
                                                                                   "Parent Relationship": "Inner",                                                                                   +
                                                                                   "Parallel Aware": false,                                                                                          +
                                                                                   "Startup Cost": 21383.21,                                                                                         +
                                                                                   "Total Cost": 21479.94,                                                                                           +
                                                                                   "Plan Rows": 1245851,                                                                                             +
                                                                                   "Plan Width": 8,                                                                                                  +
                                                                                   "Actual Startup Time": 12299.540,                                                                                 +
                                                                                   "Actual Total Time": 12403.689,                                                                                   +
                                                                                   "Actual Rows": 1261347,                                                                                           +
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
                                                                                       "Actual Startup Time": 364.609,                                                                               +
                                                                                       "Actual Total Time": 11815.880,                                                                               +
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
                                                                               "Startup Cost": 389.78,                                                                                               +
                                                                               "Total Cost": 400.26,                                                                                                 +
                                                                               "Plan Rows": 135086,                                                                                                  +
                                                                               "Plan Width": 12,                                                                                                     +
                                                                               "Actual Startup Time": 117.933,                                                                                       +
                                                                               "Actual Total Time": 128.524,                                                                                         +
                                                                               "Actual Rows": 147813,                                                                                                +
                                                                               "Actual Loops": 1,                                                                                                    +
                                                                               "Sort Key": ["cc.movie_id"],                                                                                          +
                                                                               "Sort Method": "quicksort",                                                                                           +
                                                                               "Sort Space Used": 12477,                                                                                             +
                                                                               "Sort Space Type": "Memory",                                                                                          +
                                                                               "Shared Hit Blocks": 2,                                                                                               +
                                                                               "Shared Read Blocks": 729,                                                                                            +
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
                                                                                   "Relation Name": "complete_cast",                                                                                 +
                                                                                   "Alias": "cc",                                                                                                    +
                                                                                   "Startup Cost": 0.00,                                                                                             +
                                                                                   "Total Cost": 32.27,                                                                                              +
                                                                                   "Plan Rows": 135086,                                                                                              +
                                                                                   "Plan Width": 12,                                                                                                 +
                                                                                   "Actual Startup Time": 26.961,                                                                                    +
                                                                                   "Actual Total Time": 60.665,                                                                                      +
                                                                                   "Actual Rows": 135086,                                                                                            +
                                                                                   "Actual Loops": 1,                                                                                                +
                                                                                   "Shared Hit Blocks": 2,                                                                                           +
                                                                                   "Shared Read Blocks": 729,                                                                                        +
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
                                                                     }                                                                                                                               +
                                                                   ]                                                                                                                                 +
                                                                 }                                                                                                                                   +
                                                               ]                                                                                                                                     +
                                                             },                                                                                                                                      +
                                                             {                                                                                                                                       +
                                                               "Node Type": "Sort",                                                                                                                  +
                                                               "Parent Relationship": "Inner",                                                                                                       +
                                                               "Parallel Aware": false,                                                                                                              +
                                                               "Startup Cost": 4731.30,                                                                                                              +
                                                               "Total Cost": 4838.45,                                                                                                                +
                                                               "Plan Rows": 1380035,                                                                                                                 +
                                                               "Plan Width": 14,                                                                                                                     +
                                                               "Actual Startup Time": 1078.201,                                                                                                      +
                                                               "Actual Total Time": 1142.031,                                                                                                        +
                                                               "Actual Rows": 1402623,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["mi_idx.movie_id"],                                                                                                      +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 128214,                                                                                                            +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 2,                                                                                                               +
                                                               "Shared Read Blocks": 8451,                                                                                                           +
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
                                                                   "Relation Name": "movie_info_idx",                                                                                                +
                                                                   "Alias": "mi_idx",                                                                                                                +
                                                                   "Startup Cost": 0.00,                                                                                                             +
                                                                   "Total Cost": 360.56,                                                                                                             +
                                                                   "Plan Rows": 1380035,                                                                                                             +
                                                                   "Plan Width": 14,                                                                                                                 +
                                                                   "Actual Startup Time": 0.014,                                                                                                     +
                                                                   "Actual Total Time": 545.061,                                                                                                     +
                                                                   "Actual Rows": 1380035,                                                                                                           +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Shared Hit Blocks": 2,                                                                                                           +
                                                                   "Shared Read Blocks": 8451,                                                                                                       +
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
                                               "Startup Cost": 9654.35,                                                                                                                              +
                                               "Total Cost": 9850.65,                                                                                                                                +
                                               "Plan Rows": 2528312,                                                                                                                                 +
                                               "Plan Width": 21,                                                                                                                                     +
                                               "Actual Startup Time": 2320.164,                                                                                                                      +
                                               "Actual Total Time": 2627.709,                                                                                                                        +
                                               "Actual Rows": 2524105,                                                                                                                               +
                                               "Actual Loops": 1,                                                                                                                                    +
                                               "Sort Key": ["t.id"],                                                                                                                                 +
                                               "Sort Method": "quicksort",                                                                                                                           +
                                               "Sort Space Used": 275055,                                                                                                                            +
                                               "Sort Space Type": "Memory",                                                                                                                          +
                                               "Shared Hit Blocks": 2,                                                                                                                               +
                                               "Shared Read Blocks": 35996,                                                                                                                          +
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
                                                   "Relation Name": "title",                                                                                                                         +
                                                   "Alias": "t",                                                                                                                                     +
                                                   "Startup Cost": 0.00,                                                                                                                             +
                                                   "Total Cost": 1303.96,                                                                                                                            +
                                                   "Plan Rows": 2528312,                                                                                                                             +
                                                   "Plan Width": 21,                                                                                                                                 +
                                                   "Actual Startup Time": 25.899,                                                                                                                    +
                                                   "Actual Total Time": 1018.903,                                                                                                                    +
                                                   "Actual Rows": 2528312,                                                                                                                           +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Shared Hit Blocks": 2,                                                                                                                           +
                                                   "Shared Read Blocks": 35996,                                                                                                                      +
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
                                     {                                                                                                                                                               +
                                       "Node Type": "Sort",                                                                                                                                          +
                                       "Parent Relationship": "Inner",                                                                                                                               +
                                       "Parallel Aware": false,                                                                                                                                      +
                                       "Startup Cost": 7955.33,                                                                                                                                      +
                                       "Total Cost": 8090.37,                                                                                                                                        +
                                       "Plan Rows": 1739438,                                                                                                                                         +
                                       "Plan Width": 19,                                                                                                                                             +
                                       "Actual Startup Time": 3093.986,                                                                                                                              +
                                       "Actual Total Time": 3281.548,                                                                                                                                +
                                       "Actual Rows": 1739579,                                                                                                                                       +
                                       "Actual Loops": 1,                                                                                                                                            +
                                       "Sort Key": ["n.id"],                                                                                                                                         +
                                       "Sort Method": "quicksort",                                                                                                                                   +
                                       "Sort Space Used": 176730,                                                                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                                                                  +
                                       "Shared Hit Blocks": 1,                                                                                                                                       +
                                       "Shared Read Blocks": 55612,                                                                                                                                  +
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
                                           "Node Type": "Seq Scan",                                                                                                                                  +
                                           "Parent Relationship": "Outer",                                                                                                                           +
                                           "Parallel Aware": false,                                                                                                                                  +
                                           "Relation Name": "name",                                                                                                                                  +
                                           "Alias": "n",                                                                                                                                             +
                                           "Startup Cost": 0.00,                                                                                                                                     +
                                           "Total Cost": 2356.12,                                                                                                                                    +
                                           "Plan Rows": 1739438,                                                                                                                                     +
                                           "Plan Width": 19,                                                                                                                                         +
                                           "Actual Startup Time": 10.900,                                                                                                                            +
                                           "Actual Total Time": 2325.270,                                                                                                                            +
                                           "Actual Rows": 1739579,                                                                                                                                   +
                                           "Actual Loops": 1,                                                                                                                                        +
                                           "Filter": "((gender)::text = 'm'::text)",                                                                                                                 +
                                           "Rows Removed by Filter": 2427912,                                                                                                                        +
                                           "Shared Hit Blocks": 1,                                                                                                                                   +
                                           "Shared Read Blocks": 55612,                                                                                                                              +
                                           "Shared Dirtied Blocks": 0,                                                                                                                               +
                                           "Shared Written Blocks": 0,                                                                                                                               +
                                           "Local Hit Blocks": 0,                                                                                                                                    +
                                           "Local Read Blocks": 0,                                                                                                                                   +
                                           "Local Dirtied Blocks": 0,                                                                                                                                +
                                           "Local Written Blocks": 0,                                                                                                                                +
                                           "Temp Read Blocks": 0,                                                                                                                                    +
                                           "Temp Written Blocks": 0                                                                                                                                  +
                                         }                                                                                                                                                           +
                                       ]                                                                                                                                                             +
                                     }                                                                                                                                                               +
                                   ]                                                                                                                                                                 +
                                 }                                                                                                                                                                   +
                               ]                                                                                                                                                                     +
                             },                                                                                                                                                                      +
                             {                                                                                                                                                                       +
                               "Node Type": "Sort",                                                                                                                                                  +
                               "Parent Relationship": "Inner",                                                                                                                                       +
                               "Parallel Aware": false,                                                                                                                                              +
                               "Startup Cost": 10074.27,                                                                                                                                             +
                               "Total Cost": 10088.96,                                                                                                                                               +
                               "Plan Rows": 189170,                                                                                                                                                  +
                               "Plan Width": 50,                                                                                                                                                     +
                               "Actual Startup Time": 8317.482,                                                                                                                                      +
                               "Actual Total Time": 8326.440,                                                                                                                                        +
                               "Actual Rows": 198703,                                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["mi.movie_id"],                                                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 16323,                                                                                                                                             +
                               "Sort Space Type": "Memory",                                                                                                                                          +
                               "Shared Hit Blocks": 2,                                                                                                                                               +
                               "Shared Read Blocks": 161890,                                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                                                +
                               "Temp Written Blocks": 0,                                                                                                                                             +
                               "Plans": [                                                                                                                                                            +
                                 {                                                                                                                                                                   +
                                   "Node Type": "Seq Scan",                                                                                                                                          +
                                   "Parent Relationship": "Outer",                                                                                                                                   +
                                   "Parallel Aware": false,                                                                                                                                          +
                                   "Relation Name": "movie_info",                                                                                                                                    +
                                   "Alias": "mi",                                                                                                                                                    +
                                   "Startup Cost": 0.00,                                                                                                                                             +
                                   "Total Cost": 9559.36,                                                                                                                                            +
                                   "Plan Rows": 189170,                                                                                                                                              +
                                   "Plan Width": 50,                                                                                                                                                 +
                                   "Actual Startup Time": 2712.574,                                                                                                                                  +
                                   "Actual Total Time": 8233.344,                                                                                                                                    +
                                   "Actual Rows": 188971,                                                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                                                +
                                   "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                                                                   +
                                   "Rows Removed by Filter": 14646749,                                                                                                                               +
                                   "Shared Hit Blocks": 2,                                                                                                                                           +
                                   "Shared Read Blocks": 161890,                                                                                                                                     +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                       +
                                   "Shared Written Blocks": 0,                                                                                                                                       +
                                   "Local Hit Blocks": 0,                                                                                                                                            +
                                   "Local Read Blocks": 0,                                                                                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                                                                                        +
                                   "Local Written Blocks": 0,                                                                                                                                        +
                                   "Temp Read Blocks": 0,                                                                                                                                            +
                                   "Temp Written Blocks": 0                                                                                                                                          +
                                 }                                                                                                                                                                   +
                               ]                                                                                                                                                                     +
                             }                                                                                                                                                                       +
                           ]                                                                                                                                                                         +
                         }                                                                                                                                                                           +
                       ]                                                                                                                                                                             +
                     }                                                                                                                                                                               +
                   ]                                                                                                                                                                                 +
                 }                                                                                                                                                                                   +
               ]                                                                                                                                                                                     +
             },                                                                                                                                                                                      +
             {                                                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                                                                       +
               "Parallel Aware": false,                                                                                                                                                              +
               "Startup Cost": 0.03,                                                                                                                                                                 +
               "Total Cost": 0.03,                                                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                                                       +
               "Plan Width": 4,                                                                                                                                                                      +
               "Actual Startup Time": 0.019,                                                                                                                                                         +
               "Actual Total Time": 0.020,                                                                                                                                                           +
               "Actual Rows": 1,                                                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                                                    +
               "Sort Key": ["cct1.id"],                                                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                                                           +
               "Sort Space Used": 25,                                                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                                                                               +
               "Shared Read Blocks": 0,                                                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                                                           +
               "Shared Written Blocks": 0,                                                                                                                                                           +
               "Local Hit Blocks": 0,                                                                                                                                                                +
               "Local Read Blocks": 0,                                                                                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                                                                                            +
               "Local Written Blocks": 0,                                                                                                                                                            +
               "Temp Read Blocks": 0,                                                                                                                                                                +
               "Temp Written Blocks": 0,                                                                                                                                                             +
               "Plans": [                                                                                                                                                                            +
                 {                                                                                                                                                                                   +
                   "Node Type": "Seq Scan",                                                                                                                                                          +
                   "Parent Relationship": "Outer",                                                                                                                                                   +
                   "Parallel Aware": false,                                                                                                                                                          +
                   "Relation Name": "comp_cast_type",                                                                                                                                                +
                   "Alias": "cct1",                                                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                                                             +
                   "Total Cost": 0.03,                                                                                                                                                               +
                   "Plan Rows": 1,                                                                                                                                                                   +
                   "Plan Width": 4,                                                                                                                                                                  +
                   "Actual Startup Time": 0.012,                                                                                                                                                     +
                   "Actual Total Time": 0.013,                                                                                                                                                       +
                   "Actual Rows": 1,                                                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                                                +
                   "Filter": "((kind)::text = 'cast'::text)",                                                                                                                                        +
                   "Rows Removed by Filter": 3,                                                                                                                                                      +
                   "Shared Hit Blocks": 1,                                                                                                                                                           +
                   "Shared Read Blocks": 0,                                                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                       +
                   "Shared Written Blocks": 0,                                                                                                                                                       +
                   "Local Hit Blocks": 0,                                                                                                                                                            +
                   "Local Read Blocks": 0,                                                                                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                                                                                        +
                   "Local Written Blocks": 0,                                                                                                                                                        +
                   "Temp Read Blocks": 0,                                                                                                                                                            +
                   "Temp Written Blocks": 0                                                                                                                                                          +
                 }                                                                                                                                                                                   +
               ]                                                                                                                                                                                     +
             }                                                                                                                                                                                       +
           ]                                                                                                                                                                                         +
         }                                                                                                                                                                                           +
       ]                                                                                                                                                                                             +
     },                                                                                                                                                                                              +
     "Planning Time": 15866.198,                                                                                                                                                                     +
     "Triggers": [                                                                                                                                                                                   +
     ],                                                                                                                                                                                              +
     "Execution Time": 31610.173                                                                                                                                                                     +
   }                                                                                                                                                                                                 +
 ]
(1 row)

