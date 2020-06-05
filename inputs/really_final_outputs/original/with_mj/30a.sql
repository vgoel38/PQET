                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                   +
   {                                                                                                                                                                                                 +
     "Plan": {                                                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                                                      +
       "Startup Cost": 66049.53,                                                                                                                                                                     +
       "Total Cost": 66049.53,                                                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                                                               +
       "Plan Width": 128,                                                                                                                                                                            +
       "Actual Startup Time": 30641.750,                                                                                                                                                             +
       "Actual Total Time": 30641.750,                                                                                                                                                               +
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
           "Startup Cost": 66049.53,                                                                                                                                                                 +
           "Total Cost": 66049.53,                                                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                                                           +
           "Plan Width": 80,                                                                                                                                                                         +
           "Actual Startup Time": 30641.138,                                                                                                                                                         +
           "Actual Total Time": 30641.395,                                                                                                                                                           +
           "Actual Rows": 757,                                                                                                                                                                       +
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
               "Startup Cost": 66049.50,                                                                                                                                                             +
               "Total Cost": 66049.50,                                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                                       +
               "Plan Width": 84,                                                                                                                                                                     +
               "Actual Startup Time": 30641.116,                                                                                                                                                     +
               "Actual Total Time": 30641.157,                                                                                                                                                       +
               "Actual Rows": 757,                                                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                                                    +
               "Sort Key": ["cc.subject_id"],                                                                                                                                                        +
               "Sort Method": "quicksort",                                                                                                                                                           +
               "Sort Space Used": 103,                                                                                                                                                               +
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
                   "Startup Cost": 66049.50,                                                                                                                                                         +
                   "Total Cost": 66049.50,                                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                                                   +
                   "Plan Width": 84,                                                                                                                                                                 +
                   "Actual Startup Time": 30631.561,                                                                                                                                                 +
                   "Actual Total Time": 30631.794,                                                                                                                                                   +
                   "Actual Rows": 757,                                                                                                                                                               +
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
                       "Actual Startup Time": 0.077,                                                                                                                                                 +
                       "Actual Total Time": 0.077,                                                                                                                                                   +
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
                           "Actual Startup Time": 0.022,                                                                                                                                             +
                           "Actual Total Time": 0.062,                                                                                                                                               +
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
                       "Startup Cost": 66049.45,                                                                                                                                                     +
                       "Total Cost": 66049.45,                                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                                               +
                       "Plan Width": 88,                                                                                                                                                             +
                       "Actual Startup Time": 30631.478,                                                                                                                                             +
                       "Actual Total Time": 30631.520,                                                                                                                                               +
                       "Actual Rows": 757,                                                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                                                            +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                                                                   +
                       "Sort Space Used": 116,                                                                                                                                                       +
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
                           "Startup Cost": 66038.05,                                                                                                                                                 +
                           "Total Cost": 66049.45,                                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                                           +
                           "Plan Width": 88,                                                                                                                                                         +
                           "Actual Startup Time": 30615.819,                                                                                                                                         +
                           "Actual Total Time": 30631.130,                                                                                                                                           +
                           "Actual Rows": 757,                                                                                                                                                       +
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
                               "Startup Cost": 58598.10,                                                                                                                                             +
                               "Total Cost": 58598.10,                                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                                       +
                               "Plan Width": 62,                                                                                                                                                     +
                               "Actual Startup Time": 22166.242,                                                                                                                                     +
                               "Actual Total Time": 22166.393,                                                                                                                                       +
                               "Actual Rows": 1235,                                                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["mk.movie_id"],                                                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 223,                                                                                                                                               +
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
                                   "Startup Cost": 58334.85,                                                                                                                                         +
                                   "Total Cost": 58598.10,                                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                                                   +
                                   "Plan Width": 62,                                                                                                                                                 +
                                   "Actual Startup Time": 21762.999,                                                                                                                                 +
                                   "Actual Total Time": 22165.648,                                                                                                                                   +
                                   "Actual Rows": 1235,                                                                                                                                              +
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
                                       "Startup Cost": 50379.52,                                                                                                                                     +
                                       "Total Cost": 50379.52,                                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                                               +
                                       "Plan Width": 51,                                                                                                                                             +
                                       "Actual Startup Time": 18779.581,                                                                                                                             +
                                       "Actual Total Time": 18779.785,                                                                                                                               +
                                       "Actual Rows": 1236,                                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                                            +
                                       "Sort Key": ["ci.person_id"],                                                                                                                                 +
                                       "Sort Method": "quicksort",                                                                                                                                   +
                                       "Sort Space Used": 248,                                                                                                                                       +
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
                                           "Startup Cost": 50165.23,                                                                                                                                 +
                                           "Total Cost": 50379.52,                                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                                           +
                                           "Plan Width": 51,                                                                                                                                         +
                                           "Actual Startup Time": 18486.397,                                                                                                                         +
                                           "Actual Total Time": 18778.837,                                                                                                                           +
                                           "Actual Rows": 1736,                                                                                                                                      +
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
                                               "Actual Startup Time": 16218.757,                                                                                                                     +
                                               "Actual Total Time": 16219.660,                                                                                                                       +
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
                                                   "Actual Startup Time": 16212.719,                                                                                                                 +
                                                   "Actual Total Time": 16215.833,                                                                                                                   +
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
                                                       "Actual Total Time": 0.063,                                                                                                                   +
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
                                                           "Actual Startup Time": 0.042,                                                                                                             +
                                                           "Actual Total Time": 0.048,                                                                                                               +
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
                                                       "Actual Startup Time": 16210.559,                                                                                                             +
                                                       "Actual Total Time": 16211.664,                                                                                                               +
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
                                                           "Actual Startup Time": 15992.052,                                                                                                         +
                                                           "Actual Total Time": 16199.057,                                                                                                           +
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
                                                               "Actual Startup Time": 15168.959,                                                                                                     +
                                                               "Actual Total Time": 15169.845,                                                                                                       +
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
                                                                   "Actual Startup Time": 15162.505,                                                                                                 +
                                                                   "Actual Total Time": 15165.320,                                                                                                   +
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
                                                                           "Actual Startup Time": 0.009,                                                                                             +
                                                                           "Actual Total Time": 0.010,                                                                                               +
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
                                                                       "Actual Startup Time": 15160.136,                                                                                             +
                                                                       "Actual Total Time": 15161.297,                                                                                               +
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
                                                                           "Actual Startup Time": 14851.634,                                                                                         +
                                                                           "Actual Total Time": 15153.422,                                                                                           +
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
                                                                               "Actual Startup Time": 14748.065,                                                                                     +
                                                                               "Actual Total Time": 15016.478,                                                                                       +
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
                                                                                   "Actual Startup Time": 2585.086,                                                                                  +
                                                                                   "Actual Total Time": 2595.696,                                                                                    +
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
                                                                                       "Actual Startup Time": 2351.832,                                                                              +
                                                                                       "Actual Total Time": 2559.211,                                                                                +
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
                                                                                           "Actual Startup Time": 79.306,                                                                            +
                                                                                           "Actual Total Time": 79.309,                                                                              +
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
                                                                                               "Actual Startup Time": 30.302,                                                                        +
                                                                                               "Actual Total Time": 79.263,                                                                          +
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
                                                                                           "Actual Startup Time": 2221.618,                                                                          +
                                                                                           "Actual Total Time": 2362.005,                                                                            +
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
                                                                                               "Actual Startup Time": 0.017,                                                                         +
                                                                                               "Actual Total Time": 781.222,                                                                         +
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
                                                                                   "Actual Startup Time": 12162.790,                                                                                 +
                                                                                   "Actual Total Time": 12269.920,                                                                                   +
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
                                                                                       "Actual Startup Time": 360.386,                                                                               +
                                                                                       "Actual Total Time": 11676.657,                                                                               +
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
                                                                               "Actual Startup Time": 102.740,                                                                                       +
                                                                               "Actual Total Time": 113.341,                                                                                         +
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
                                                                                   "Actual Startup Time": 11.468,                                                                                    +
                                                                                   "Actual Total Time": 45.386,                                                                                      +
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
                                                               "Actual Startup Time": 816.652,                                                                                                       +
                                                               "Actual Total Time": 880.674,                                                                                                         +
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
                                                                   "Actual Total Time": 296.926,                                                                                                     +
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
                                               "Startup Cost": 5875.81,                                                                                                                              +
                                               "Total Cost": 5983.06,                                                                                                                                +
                                               "Plan Rows": 1381453,                                                                                                                                 +
                                               "Plan Width": 21,                                                                                                                                     +
                                               "Actual Startup Time": 2208.428,                                                                                                                      +
                                               "Actual Total Time": 2369.400,                                                                                                                        +
                                               "Actual Rows": 1380563,                                                                                                                               +
                                               "Actual Loops": 1,                                                                                                                                    +
                                               "Sort Key": ["t.id"],                                                                                                                                 +
                                               "Sort Method": "quicksort",                                                                                                                           +
                                               "Sort Space Used": 145245,                                                                                                                            +
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
                                                   "Total Cost": 1500.26,                                                                                                                            +
                                                   "Plan Rows": 1381453,                                                                                                                             +
                                                   "Plan Width": 21,                                                                                                                                 +
                                                   "Actual Startup Time": 26.150,                                                                                                                    +
                                                   "Actual Total Time": 1469.247,                                                                                                                    +
                                                   "Actual Rows": 1381453,                                                                                                                           +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Filter": "(production_year > 2000)",                                                                                                             +
                                                   "Rows Removed by Filter": 1146859,                                                                                                                +
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
                                       "Actual Startup Time": 2982.271,                                                                                                                              +
                                       "Actual Total Time": 3162.557,                                                                                                                                +
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
                                           "Actual Startup Time": 17.090,                                                                                                                            +
                                           "Actual Total Time": 2184.785,                                                                                                                            +
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
                               "Startup Cost": 7439.95,                                                                                                                                              +
                               "Total Cost": 7445.65,                                                                                                                                                +
                               "Plan Rows": 73417,                                                                                                                                                   +
                               "Plan Width": 50,                                                                                                                                                     +
                               "Actual Startup Time": 8449.183,                                                                                                                                      +
                               "Actual Total Time": 8453.829,                                                                                                                                        +
                               "Actual Rows": 73558,                                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["mi.movie_id"],                                                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 7817,                                                                                                                                              +
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
                                   "Total Cost": 7255.68,                                                                                                                                            +
                                   "Plan Rows": 73417,                                                                                                                                               +
                                   "Plan Width": 50,                                                                                                                                                 +
                                   "Actual Startup Time": 4943.924,                                                                                                                                  +
                                   "Actual Total Time": 8399.315,                                                                                                                                    +
                                   "Actual Rows": 73047,                                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                                                +
                                   "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                                                                           +
                                   "Rows Removed by Filter": 14762673,                                                                                                                               +
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
               "Plan Rows": 2,                                                                                                                                                                       +
               "Plan Width": 4,                                                                                                                                                                      +
               "Actual Startup Time": 0.019,                                                                                                                                                         +
               "Actual Total Time": 0.019,                                                                                                                                                           +
               "Actual Rows": 2,                                                                                                                                                                     +
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
                   "Plan Rows": 2,                                                                                                                                                                   +
                   "Plan Width": 4,                                                                                                                                                                  +
                   "Actual Startup Time": 0.010,                                                                                                                                                     +
                   "Actual Total Time": 0.012,                                                                                                                                                       +
                   "Actual Rows": 2,                                                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                                                +
                   "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                                                                                                                         +
                   "Rows Removed by Filter": 2,                                                                                                                                                      +
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
     "Planning Time": 15787.297,                                                                                                                                                                     +
     "Triggers": [                                                                                                                                                                                   +
     ],                                                                                                                                                                                              +
     "Execution Time": 30711.108                                                                                                                                                                     +
   }                                                                                                                                                                                                 +
 ]
(1 row)

