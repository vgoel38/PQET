                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                   +
   {                                                                                                                                                                 +
     "Plan": {                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                      +
       "Startup Cost": 72247.22,                                                                                                                                     +
       "Total Cost": 72247.22,                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                               +
       "Plan Width": 128,                                                                                                                                            +
       "Actual Startup Time": 31798.057,                                                                                                                             +
       "Actual Total Time": 31798.057,                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                             +
       "Actual Loops": 1,                                                                                                                                            +
       "Shared Hit Blocks": 33,                                                                                                                                      +
       "Shared Read Blocks": 539068,                                                                                                                                 +
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
           "Startup Cost": 71983.96,                                                                                                                                 +
           "Total Cost": 72247.22,                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                           +
           "Plan Width": 80,                                                                                                                                         +
           "Actual Startup Time": 31331.387,                                                                                                                         +
           "Actual Total Time": 31776.757,                                                                                                                           +
           "Actual Rows": 26153,                                                                                                                                     +
           "Actual Loops": 1,                                                                                                                                        +
           "Inner Unique": true,                                                                                                                                     +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                    +
           "Shared Hit Blocks": 33,                                                                                                                                  +
           "Shared Read Blocks": 539068,                                                                                                                             +
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
               "Startup Cost": 64028.64,                                                                                                                             +
               "Total Cost": 64028.64,                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                       +
               "Plan Width": 69,                                                                                                                                     +
               "Actual Startup Time": 28358.122,                                                                                                                     +
               "Actual Total Time": 28361.821,                                                                                                                       +
               "Actual Rows": 26154,                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                    +
               "Sort Key": ["ci.person_id"],                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                           +
               "Sort Space Used": 5063,                                                                                                                              +
               "Sort Space Type": "Memory",                                                                                                                          +
               "Shared Hit Blocks": 32,                                                                                                                              +
               "Shared Read Blocks": 483456,                                                                                                                         +
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
                   "Startup Cost": 64028.64,                                                                                                                         +
                   "Total Cost": 64028.64,                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                   +
                   "Plan Width": 69,                                                                                                                                 +
                   "Actual Startup Time": 28320.709,                                                                                                                 +
                   "Actual Total Time": 28332.998,                                                                                                                   +
                   "Actual Rows": 42900,                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                                +
                   "Inner Unique": true,                                                                                                                             +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                       +
                   "Shared Hit Blocks": 28,                                                                                                                          +
                   "Shared Read Blocks": 483456,                                                                                                                     +
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
                       "Startup Cost": 64028.59,                                                                                                                     +
                       "Total Cost": 64028.59,                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                               +
                       "Plan Width": 73,                                                                                                                             +
                       "Actual Startup Time": 28320.672,                                                                                                             +
                       "Actual Total Time": 28322.719,                                                                                                               +
                       "Actual Rows": 42901,                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                            +
                       "Sort Key": ["mi.info_type_id"],                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                                   +
                       "Sort Space Used": 5553,                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                  +
                       "Shared Hit Blocks": 27,                                                                                                                      +
                       "Shared Read Blocks": 483456,                                                                                                                 +
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
                           "Startup Cost": 64028.57,                                                                                                                 +
                           "Total Cost": 64028.59,                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                           +
                           "Plan Width": 73,                                                                                                                         +
                           "Actual Startup Time": 28293.623,                                                                                                         +
                           "Actual Total Time": 28308.128,                                                                                                           +
                           "Actual Rows": 46694,                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                        +
                           "Inner Unique": true,                                                                                                                     +
                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                           +
                           "Shared Hit Blocks": 27,                                                                                                                  +
                           "Shared Read Blocks": 483456,                                                                                                             +
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
                               "Startup Cost": 64028.52,                                                                                                             +
                               "Total Cost": 64028.53,                                                                                                               +
                               "Plan Rows": 104,                                                                                                                     +
                               "Plan Width": 77,                                                                                                                     +
                               "Actual Startup Time": 28284.319,                                                                                                     +
                               "Actual Total Time": 28290.579,                                                                                                       +
                               "Actual Rows": 93389,                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                    +
                               "Sort Key": ["mi_idx.info_type_id"],                                                                                                  +
                               "Sort Method": "quicksort",                                                                                                           +
                               "Sort Space Used": 19708,                                                                                                             +
                               "Sort Space Type": "Memory",                                                                                                          +
                               "Shared Hit Blocks": 26,                                                                                                              +
                               "Shared Read Blocks": 483456,                                                                                                         +
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
                                   "Startup Cost": 63199.77,                                                                                                         +
                                   "Total Cost": 64028.41,                                                                                                           +
                                   "Plan Rows": 104,                                                                                                                 +
                                   "Plan Width": 77,                                                                                                                 +
                                   "Actual Startup Time": 26850.738,                                                                                                 +
                                   "Actual Total Time": 28239.368,                                                                                                   +
                                   "Actual Rows": 140982,                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                +
                                   "Inner Unique": false,                                                                                                            +
                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                             +
                                   "Shared Hit Blocks": 26,                                                                                                          +
                                   "Shared Read Blocks": 483456,                                                                                                     +
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
                                       "Startup Cost": 41816.56,                                                                                                     +
                                       "Total Cost": 42451.74,                                                                                                       +
                                       "Plan Rows": 102,                                                                                                             +
                                       "Plan Width": 89,                                                                                                             +
                                       "Actual Startup Time": 14271.826,                                                                                             +
                                       "Actual Total Time": 15366.282,                                                                                               +
                                       "Actual Rows": 204379,                                                                                                        +
                                       "Actual Loops": 1,                                                                                                            +
                                       "Inner Unique": false,                                                                                                        +
                                       "Merge Cond": "(t.id = mi.movie_id)",                                                                                         +
                                       "Shared Hit Blocks": 22,                                                                                                      +
                                       "Shared Read Blocks": 230806,                                                                                                 +
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
                                           "Startup Cost": 31742.29,                                                                                                 +
                                           "Total Cost": 32348.89,                                                                                                   +
                                           "Plan Rows": 710,                                                                                                         +
                                           "Plan Width": 39,                                                                                                         +
                                           "Actual Startup Time": 5743.868,                                                                                          +
                                           "Actual Total Time": 6727.875,                                                                                            +
                                           "Actual Rows": 191689,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                        +
                                           "Inner Unique": false,                                                                                                    +
                                           "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                 +
                                           "Shared Hit Blocks": 20,                                                                                                  +
                                           "Shared Read Blocks": 68916,                                                                                              +
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
                                               "Startup Cost": 27010.99,                                                                                             +
                                               "Total Cost": 27403.27,                                                                                               +
                                               "Plan Rows": 236,                                                                                                     +
                                               "Plan Width": 25,                                                                                                     +
                                               "Actual Startup Time": 4911.802,                                                                                      +
                                               "Actual Total Time": 5621.246,                                                                                        +
                                               "Actual Rows": 76714,                                                                                                 +
                                               "Actual Loops": 1,                                                                                                    +
                                               "Inner Unique": true,                                                                                                 +
                                               "Merge Cond": "(mk.movie_id = t.id)",                                                                                 +
                                               "Shared Hit Blocks": 18,                                                                                              +
                                               "Shared Read Blocks": 60465,                                                                                          +
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
                                                   "Actual Startup Time": 2595.755,                                                                                  +
                                                   "Actual Total Time": 2607.173,                                                                                    +
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
                                                       "Actual Startup Time": 2360.487,                                                                              +
                                                       "Actual Total Time": 2569.536,                                                                                +
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
                                                           "Actual Startup Time": 71.125,                                                                            +
                                                           "Actual Total Time": 71.128,                                                                              +
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
                                                               "Actual Startup Time": 30.458,                                                                        +
                                                               "Actual Total Time": 71.085,                                                                          +
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
                                                           "Actual Startup Time": 2238.081,                                                                          +
                                                           "Actual Total Time": 2380.321,                                                                            +
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
                                                               "Actual Startup Time": 0.018,                                                                         +
                                                               "Actual Total Time": 795.481,                                                                         +
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
                                                   "Startup Cost": 9654.35,                                                                                          +
                                                   "Total Cost": 9850.65,                                                                                            +
                                                   "Plan Rows": 2528312,                                                                                             +
                                                   "Plan Width": 21,                                                                                                 +
                                                   "Actual Startup Time": 2315.838,                                                                                  +
                                                   "Actual Total Time": 2631.784,                                                                                    +
                                                   "Actual Rows": 2525735,                                                                                           +
                                                   "Actual Loops": 1,                                                                                                +
                                                   "Sort Key": ["t.id"],                                                                                             +
                                                   "Sort Method": "quicksort",                                                                                       +
                                                   "Sort Space Used": 275055,                                                                                        +
                                                   "Sort Space Type": "Memory",                                                                                      +
                                                   "Shared Hit Blocks": 1,                                                                                           +
                                                   "Shared Read Blocks": 35997,                                                                                      +
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
                                                       "Relation Name": "title",                                                                                     +
                                                       "Alias": "t",                                                                                                 +
                                                       "Startup Cost": 0.00,                                                                                         +
                                                       "Total Cost": 1303.96,                                                                                        +
                                                       "Plan Rows": 2528312,                                                                                         +
                                                       "Plan Width": 21,                                                                                             +
                                                       "Actual Startup Time": 8.312,                                                                                 +
                                                       "Actual Total Time": 1000.621,                                                                                +
                                                       "Actual Rows": 2528312,                                                                                       +
                                                       "Actual Loops": 1,                                                                                            +
                                                       "Shared Hit Blocks": 1,                                                                                       +
                                                       "Shared Read Blocks": 35997,                                                                                  +
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
                                               "Actual Startup Time": 831.998,                                                                                       +
                                               "Actual Total Time": 915.913,                                                                                         +
                                               "Actual Rows": 1451165,                                                                                               +
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
                                                   "Actual Startup Time": 0.015,                                                                                     +
                                                   "Actual Total Time": 306.122,                                                                                     +
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
                                         },                                                                                                                          +
                                         {                                                                                                                           +
                                           "Node Type": "Sort",                                                                                                      +
                                           "Parent Relationship": "Inner",                                                                                           +
                                           "Parallel Aware": false,                                                                                                  +
                                           "Startup Cost": 10074.27,                                                                                                 +
                                           "Total Cost": 10088.96,                                                                                                   +
                                           "Plan Rows": 189170,                                                                                                      +
                                           "Plan Width": 50,                                                                                                         +
                                           "Actual Startup Time": 8527.947,                                                                                          +
                                           "Actual Total Time": 8551.472,                                                                                            +
                                           "Actual Rows": 360055,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                        +
                                           "Sort Key": ["mi.movie_id"],                                                                                              +
                                           "Sort Method": "quicksort",                                                                                               +
                                           "Sort Space Used": 16323,                                                                                                 +
                                           "Sort Space Type": "Memory",                                                                                              +
                                           "Shared Hit Blocks": 2,                                                                                                   +
                                           "Shared Read Blocks": 161890,                                                                                             +
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
                                               "Relation Name": "movie_info",                                                                                        +
                                               "Alias": "mi",                                                                                                        +
                                               "Startup Cost": 0.00,                                                                                                 +
                                               "Total Cost": 9559.36,                                                                                                +
                                               "Plan Rows": 189170,                                                                                                  +
                                               "Plan Width": 50,                                                                                                     +
                                               "Actual Startup Time": 2734.126,                                                                                      +
                                               "Actual Total Time": 8431.822,                                                                                        +
                                               "Actual Rows": 188971,                                                                                                +
                                               "Actual Loops": 1,                                                                                                    +
                                               "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                       +
                                               "Rows Removed by Filter": 14646749,                                                                                   +
                                               "Shared Hit Blocks": 2,                                                                                               +
                                               "Shared Read Blocks": 161890,                                                                                         +
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
                                     },                                                                                                                              +
                                     {                                                                                                                               +
                                       "Node Type": "Sort",                                                                                                          +
                                       "Parent Relationship": "Inner",                                                                                               +
                                       "Parallel Aware": false,                                                                                                      +
                                       "Startup Cost": 21383.21,                                                                                                     +
                                       "Total Cost": 21479.94,                                                                                                       +
                                       "Plan Rows": 1245851,                                                                                                         +
                                       "Plan Width": 8,                                                                                                              +
                                       "Actual Startup Time": 12574.291,                                                                                             +
                                       "Actual Total Time": 12691.633,                                                                                               +
                                       "Actual Rows": 1373087,                                                                                                       +
                                       "Actual Loops": 1,                                                                                                            +
                                       "Sort Key": ["ci.movie_id"],                                                                                                  +
                                       "Sort Method": "quicksort",                                                                                                   +
                                       "Sort Space Used": 107499,                                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                                  +
                                       "Shared Hit Blocks": 4,                                                                                                       +
                                       "Shared Read Blocks": 252650,                                                                                                 +
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
                                           "Relation Name": "cast_info",                                                                                             +
                                           "Alias": "ci",                                                                                                            +
                                           "Startup Cost": 0.00,                                                                                                     +
                                           "Total Cost": 17466.00,                                                                                                   +
                                           "Plan Rows": 1245851,                                                                                                     +
                                           "Plan Width": 8,                                                                                                          +
                                           "Actual Startup Time": 476.228,                                                                                           +
                                           "Actual Total Time": 12078.661,                                                                                           +
                                           "Actual Rows": 1244716,                                                                                                   +
                                           "Actual Loops": 1,                                                                                                        +
                                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",            +
                                           "Rows Removed by Filter": 34999628,                                                                                       +
                                           "Shared Hit Blocks": 4,                                                                                                   +
                                           "Shared Read Blocks": 252650,                                                                                             +
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
                               "Actual Startup Time": 0.039,                                                                                                         +
                               "Actual Total Time": 0.040,                                                                                                           +
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
                                   "Actual Startup Time": 0.028,                                                                                                     +
                                   "Actual Total Time": 0.030,                                                                                                       +
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
                     {                                                                                                                                               +
                       "Node Type": "Sort",                                                                                                                          +
                       "Parent Relationship": "Inner",                                                                                                               +
                       "Parallel Aware": false,                                                                                                                      +
                       "Startup Cost": 0.05,                                                                                                                         +
                       "Total Cost": 0.05,                                                                                                                           +
                       "Plan Rows": 1,                                                                                                                               +
                       "Plan Width": 4,                                                                                                                              +
                       "Actual Startup Time": 0.032,                                                                                                                 +
                       "Actual Total Time": 0.032,                                                                                                                   +
                       "Actual Rows": 1,                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                            +
                       "Sort Key": ["it1.id"],                                                                                                                       +
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
                           "Alias": "it1",                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                     +
                           "Total Cost": 0.05,                                                                                                                       +
                           "Plan Rows": 1,                                                                                                                           +
                           "Plan Width": 4,                                                                                                                          +
                           "Actual Startup Time": 0.014,                                                                                                             +
                           "Actual Total Time": 0.026,                                                                                                               +
                           "Actual Rows": 1,                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                        +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                              +
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
                     }                                                                                                                                               +
                   ]                                                                                                                                                 +
                 }                                                                                                                                                   +
               ]                                                                                                                                                     +
             },                                                                                                                                                      +
             {                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                                       +
               "Parallel Aware": false,                                                                                                                              +
               "Startup Cost": 7955.33,                                                                                                                              +
               "Total Cost": 8090.37,                                                                                                                                +
               "Plan Rows": 1739438,                                                                                                                                 +
               "Plan Width": 19,                                                                                                                                     +
               "Actual Startup Time": 2973.084,                                                                                                                      +
               "Actual Total Time": 3169.036,                                                                                                                        +
               "Actual Rows": 1739579,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                    +
               "Sort Key": ["n.id"],                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                           +
               "Sort Space Used": 176730,                                                                                                                            +
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
                   "Plan Rows": 1739438,                                                                                                                             +
                   "Plan Width": 19,                                                                                                                                 +
                   "Actual Startup Time": 22.295,                                                                                                                    +
                   "Actual Total Time": 2189.855,                                                                                                                    +
                   "Actual Rows": 1739579,                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                                +
                   "Filter": "((gender)::text = 'm'::text)",                                                                                                         +
                   "Rows Removed by Filter": 2427912,                                                                                                                +
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
     "Planning Time": 9709.474,                                                                                                                                      +
     "Triggers": [                                                                                                                                                   +
     ],                                                                                                                                                              +
     "Execution Time": 31865.250                                                                                                                                     +
   }                                                                                                                                                                 +
 ]
(1 row)

