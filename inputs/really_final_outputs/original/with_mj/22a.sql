                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                 +
   {                                                                                                                                                               +
     "Plan": {                                                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                                                   +
       "Strategy": "Plain",                                                                                                                                        +
       "Partial Mode": "Simple",                                                                                                                                   +
       "Parallel Aware": false,                                                                                                                                    +
       "Startup Cost": 37827.02,                                                                                                                                   +
       "Total Cost": 37827.02,                                                                                                                                     +
       "Plan Rows": 1,                                                                                                                                             +
       "Plan Width": 96,                                                                                                                                           +
       "Actual Startup Time": 15710.911,                                                                                                                           +
       "Actual Total Time": 15710.911,                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                           +
       "Actual Loops": 1,                                                                                                                                          +
       "Shared Hit Blocks": 29,                                                                                                                                    +
       "Shared Read Blocks": 252577,                                                                                                                               +
       "Shared Dirtied Blocks": 0,                                                                                                                                 +
       "Shared Written Blocks": 0,                                                                                                                                 +
       "Local Hit Blocks": 0,                                                                                                                                      +
       "Local Read Blocks": 0,                                                                                                                                     +
       "Local Dirtied Blocks": 0,                                                                                                                                  +
       "Local Written Blocks": 0,                                                                                                                                  +
       "Temp Read Blocks": 0,                                                                                                                                      +
       "Temp Written Blocks": 0,                                                                                                                                   +
       "Plans": [                                                                                                                                                  +
         {                                                                                                                                                         +
           "Node Type": "Merge Join",                                                                                                                              +
           "Parent Relationship": "Outer",                                                                                                                         +
           "Parallel Aware": false,                                                                                                                                +
           "Join Type": "Inner",                                                                                                                                   +
           "Startup Cost": 37807.42,                                                                                                                               +
           "Total Cost": 37827.02,                                                                                                                                 +
           "Plan Rows": 1,                                                                                                                                         +
           "Plan Width": 42,                                                                                                                                       +
           "Actual Startup Time": 15699.378,                                                                                                                       +
           "Actual Total Time": 15710.053,                                                                                                                         +
           "Actual Rows": 2851,                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                      +
           "Inner Unique": true,                                                                                                                                   +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                +
           "Shared Hit Blocks": 29,                                                                                                                                +
           "Shared Read Blocks": 252577,                                                                                                                           +
           "Shared Dirtied Blocks": 0,                                                                                                                             +
           "Shared Written Blocks": 0,                                                                                                                             +
           "Local Hit Blocks": 0,                                                                                                                                  +
           "Local Read Blocks": 0,                                                                                                                                 +
           "Local Dirtied Blocks": 0,                                                                                                                              +
           "Local Written Blocks": 0,                                                                                                                              +
           "Temp Read Blocks": 0,                                                                                                                                  +
           "Temp Written Blocks": 0,                                                                                                                               +
           "Plans": [                                                                                                                                              +
             {                                                                                                                                                     +
               "Node Type": "Sort",                                                                                                                                +
               "Parent Relationship": "Outer",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Startup Cost": 37346.86,                                                                                                                           +
               "Total Cost": 37346.86,                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                     +
               "Plan Width": 27,                                                                                                                                   +
               "Actual Startup Time": 15505.847,                                                                                                                   +
               "Actual Total Time": 15506.250,                                                                                                                     +
               "Actual Rows": 3223,                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                  +
               "Sort Key": ["mc.company_id"],                                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                         +
               "Sort Space Used": 335,                                                                                                                             +
               "Sort Space Type": "Memory",                                                                                                                        +
               "Shared Hit Blocks": 27,                                                                                                                            +
               "Shared Read Blocks": 249585,                                                                                                                       +
               "Shared Dirtied Blocks": 0,                                                                                                                         +
               "Shared Written Blocks": 0,                                                                                                                         +
               "Local Hit Blocks": 0,                                                                                                                              +
               "Local Read Blocks": 0,                                                                                                                             +
               "Local Dirtied Blocks": 0,                                                                                                                          +
               "Local Written Blocks": 0,                                                                                                                          +
               "Temp Read Blocks": 0,                                                                                                                              +
               "Temp Written Blocks": 0,                                                                                                                           +
               "Plans": [                                                                                                                                          +
                 {                                                                                                                                                 +
                   "Node Type": "Merge Join",                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                        +
                   "Join Type": "Inner",                                                                                                                           +
                   "Startup Cost": 37346.86,                                                                                                                       +
                   "Total Cost": 37346.86,                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                                 +
                   "Plan Width": 27,                                                                                                                               +
                   "Actual Startup Time": 15494.892,                                                                                                               +
                   "Actual Total Time": 15495.751,                                                                                                                 +
                   "Actual Rows": 3223,                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                              +
                   "Inner Unique": true,                                                                                                                           +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                   +
                   "Shared Hit Blocks": 23,                                                                                                                        +
                   "Shared Read Blocks": 249585,                                                                                                                   +
                   "Shared Dirtied Blocks": 0,                                                                                                                     +
                   "Shared Written Blocks": 0,                                                                                                                     +
                   "Local Hit Blocks": 0,                                                                                                                          +
                   "Local Read Blocks": 0,                                                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                                                      +
                   "Local Written Blocks": 0,                                                                                                                      +
                   "Temp Read Blocks": 0,                                                                                                                          +
                   "Temp Written Blocks": 0,                                                                                                                       +
                   "Plans": [                                                                                                                                      +
                     {                                                                                                                                             +
                       "Node Type": "Sort",                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Startup Cost": 37346.83,                                                                                                                   +
                       "Total Cost": 37346.83,                                                                                                                     +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 31,                                                                                                                           +
                       "Actual Startup Time": 15494.881,                                                                                                           +
                       "Actual Total Time": 15495.029,                                                                                                             +
                       "Actual Rows": 3223,                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                          +
                       "Sort Key": ["mc.company_type_id"],                                                                                                         +
                       "Sort Method": "quicksort",                                                                                                                 +
                       "Sort Space Used": 355,                                                                                                                     +
                       "Sort Space Type": "Memory",                                                                                                                +
                       "Shared Hit Blocks": 22,                                                                                                                    +
                       "Shared Read Blocks": 249585,                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                                 +
                       "Shared Written Blocks": 0,                                                                                                                 +
                       "Local Hit Blocks": 0,                                                                                                                      +
                       "Local Read Blocks": 0,                                                                                                                     +
                       "Local Dirtied Blocks": 0,                                                                                                                  +
                       "Local Written Blocks": 0,                                                                                                                  +
                       "Temp Read Blocks": 0,                                                                                                                      +
                       "Temp Written Blocks": 0,                                                                                                                   +
                       "Plans": [                                                                                                                                  +
                         {                                                                                                                                         +
                           "Node Type": "Merge Join",                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Join Type": "Inner",                                                                                                                   +
                           "Startup Cost": 37346.83,                                                                                                               +
                           "Total Cost": 37346.83,                                                                                                                 +
                           "Plan Rows": 1,                                                                                                                         +
                           "Plan Width": 31,                                                                                                                       +
                           "Actual Startup Time": 15493.247,                                                                                                       +
                           "Actual Total Time": 15494.146,                                                                                                         +
                           "Actual Rows": 3223,                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                      +
                           "Inner Unique": true,                                                                                                                   +
                           "Merge Cond": "(t.kind_id = kt.id)",                                                                                                    +
                           "Shared Hit Blocks": 22,                                                                                                                +
                           "Shared Read Blocks": 249585,                                                                                                           +
                           "Shared Dirtied Blocks": 0,                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                  +
                           "Temp Written Blocks": 0,                                                                                                               +
                           "Plans": [                                                                                                                              +
                             {                                                                                                                                     +
                               "Node Type": "Sort",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Startup Cost": 37346.79,                                                                                                           +
                               "Total Cost": 37346.79,                                                                                                             +
                               "Plan Rows": 1,                                                                                                                     +
                               "Plan Width": 35,                                                                                                                   +
                               "Actual Startup Time": 15493.232,                                                                                                   +
                               "Actual Total Time": 15493.392,                                                                                                     +
                               "Actual Rows": 3451,                                                                                                                +
                               "Actual Loops": 1,                                                                                                                  +
                               "Sort Key": ["t.kind_id"],                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                         +
                               "Sort Space Used": 374,                                                                                                             +
                               "Sort Space Type": "Memory",                                                                                                        +
                               "Shared Hit Blocks": 21,                                                                                                            +
                               "Shared Read Blocks": 249585,                                                                                                       +
                               "Shared Dirtied Blocks": 0,                                                                                                         +
                               "Shared Written Blocks": 0,                                                                                                         +
                               "Local Hit Blocks": 0,                                                                                                              +
                               "Local Read Blocks": 0,                                                                                                             +
                               "Local Dirtied Blocks": 0,                                                                                                          +
                               "Local Written Blocks": 0,                                                                                                          +
                               "Temp Read Blocks": 0,                                                                                                              +
                               "Temp Written Blocks": 0,                                                                                                           +
                               "Plans": [                                                                                                                          +
                                 {                                                                                                                                 +
                                   "Node Type": "Merge Join",                                                                                                      +
                                   "Parent Relationship": "Outer",                                                                                                 +
                                   "Parallel Aware": false,                                                                                                        +
                                   "Join Type": "Inner",                                                                                                           +
                                   "Startup Cost": 37346.79,                                                                                                       +
                                   "Total Cost": 37346.79,                                                                                                         +
                                   "Plan Rows": 1,                                                                                                                 +
                                   "Plan Width": 35,                                                                                                               +
                                   "Actual Startup Time": 15491.231,                                                                                               +
                                   "Actual Total Time": 15492.258,                                                                                                 +
                                   "Actual Rows": 3451,                                                                                                            +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Inner Unique": true,                                                                                                           +
                                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                     +
                                   "Shared Hit Blocks": 21,                                                                                                        +
                                   "Shared Read Blocks": 249585,                                                                                                   +
                                   "Shared Dirtied Blocks": 0,                                                                                                     +
                                   "Shared Written Blocks": 0,                                                                                                     +
                                   "Local Hit Blocks": 0,                                                                                                          +
                                   "Local Read Blocks": 0,                                                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                                                      +
                                   "Local Written Blocks": 0,                                                                                                      +
                                   "Temp Read Blocks": 0,                                                                                                          +
                                   "Temp Written Blocks": 0,                                                                                                       +
                                   "Plans": [                                                                                                                      +
                                     {                                                                                                                             +
                                       "Node Type": "Sort",                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Startup Cost": 37346.74,                                                                                                   +
                                       "Total Cost": 37346.74,                                                                                                     +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 39,                                                                                                           +
                                       "Actual Startup Time": 15491.171,                                                                                           +
                                       "Actual Total Time": 15491.340,                                                                                             +
                                       "Actual Rows": 3635,                                                                                                        +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Sort Key": ["mi.info_type_id"],                                                                                            +
                                       "Sort Method": "quicksort",                                                                                                 +
                                       "Sort Space Used": 394,                                                                                                     +
                                       "Sort Space Type": "Memory",                                                                                                +
                                       "Shared Hit Blocks": 20,                                                                                                    +
                                       "Shared Read Blocks": 249585,                                                                                               +
                                       "Shared Dirtied Blocks": 0,                                                                                                 +
                                       "Shared Written Blocks": 0,                                                                                                 +
                                       "Local Hit Blocks": 0,                                                                                                      +
                                       "Local Read Blocks": 0,                                                                                                     +
                                       "Local Dirtied Blocks": 0,                                                                                                  +
                                       "Local Written Blocks": 0,                                                                                                  +
                                       "Temp Read Blocks": 0,                                                                                                      +
                                       "Temp Written Blocks": 0,                                                                                                   +
                                       "Plans": [                                                                                                                  +
                                         {                                                                                                                         +
                                           "Node Type": "Merge Join",                                                                                              +
                                           "Parent Relationship": "Outer",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Join Type": "Inner",                                                                                                   +
                                           "Startup Cost": 37346.74,                                                                                               +
                                           "Total Cost": 37346.74,                                                                                                 +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 39,                                                                                                       +
                                           "Actual Startup Time": 15489.053,                                                                                       +
                                           "Actual Total Time": 15490.199,                                                                                         +
                                           "Actual Rows": 3655,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Inner Unique": true,                                                                                                   +
                                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                         +
                                           "Shared Hit Blocks": 20,                                                                                                +
                                           "Shared Read Blocks": 249585,                                                                                           +
                                           "Shared Dirtied Blocks": 0,                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                              +
                                           "Local Written Blocks": 0,                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                  +
                                           "Temp Written Blocks": 0,                                                                                               +
                                           "Plans": [                                                                                                              +
                                             {                                                                                                                     +
                                               "Node Type": "Sort",                                                                                                +
                                               "Parent Relationship": "Outer",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Startup Cost": 37346.69,                                                                                           +
                                               "Total Cost": 37346.69,                                                                                             +
                                               "Plan Rows": 14,                                                                                                    +
                                               "Plan Width": 43,                                                                                                   +
                                               "Actual Startup Time": 15487.208,                                                                                   +
                                               "Actual Total Time": 15488.012,                                                                                     +
                                               "Actual Rows": 13207,                                                                                               +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Sort Key": ["mi_idx.info_type_id"],                                                                                +
                                               "Sort Method": "quicksort",                                                                                         +
                                               "Sort Space Used": 1689,                                                                                            +
                                               "Sort Space Type": "Memory",                                                                                        +
                                               "Shared Hit Blocks": 19,                                                                                            +
                                               "Shared Read Blocks": 249585,                                                                                       +
                                               "Shared Dirtied Blocks": 0,                                                                                         +
                                               "Shared Written Blocks": 0,                                                                                         +
                                               "Local Hit Blocks": 0,                                                                                              +
                                               "Local Read Blocks": 0,                                                                                             +
                                               "Local Dirtied Blocks": 0,                                                                                          +
                                               "Local Written Blocks": 0,                                                                                          +
                                               "Temp Read Blocks": 0,                                                                                              +
                                               "Temp Written Blocks": 0,                                                                                           +
                                               "Plans": [                                                                                                          +
                                                 {                                                                                                                 +
                                                   "Node Type": "Merge Join",                                                                                      +
                                                   "Parent Relationship": "Outer",                                                                                 +
                                                   "Parallel Aware": false,                                                                                        +
                                                   "Join Type": "Inner",                                                                                           +
                                                   "Startup Cost": 36935.87,                                                                                       +
                                                   "Total Cost": 37346.68,                                                                                         +
                                                   "Plan Rows": 14,                                                                                                +
                                                   "Plan Width": 43,                                                                                               +
                                                   "Actual Startup Time": 14991.452,                                                                               +
                                                   "Actual Total Time": 15482.708,                                                                                 +
                                                   "Actual Rows": 13551,                                                                                           +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Inner Unique": false,                                                                                          +
                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                       +
                                                   "Shared Hit Blocks": 19,                                                                                        +
                                                   "Shared Read Blocks": 249585,                                                                                   +
                                                   "Shared Dirtied Blocks": 0,                                                                                     +
                                                   "Shared Written Blocks": 0,                                                                                     +
                                                   "Local Hit Blocks": 0,                                                                                          +
                                                   "Local Read Blocks": 0,                                                                                         +
                                                   "Local Dirtied Blocks": 0,                                                                                      +
                                                   "Local Written Blocks": 0,                                                                                      +
                                                   "Temp Read Blocks": 0,                                                                                          +
                                                   "Temp Written Blocks": 0,                                                                                       +
                                                   "Plans": [                                                                                                      +
                                                     {                                                                                                             +
                                                       "Node Type": "Merge Join",                                                                                  +
                                                       "Parent Relationship": "Outer",                                                                             +
                                                       "Parallel Aware": false,                                                                                    +
                                                       "Join Type": "Inner",                                                                                       +
                                                       "Startup Cost": 32796.37,                                                                                   +
                                                       "Total Cost": 33025.06,                                                                                     +
                                                       "Plan Rows": 19,                                                                                            +
                                                       "Plan Width": 49,                                                                                           +
                                                       "Actual Startup Time": 14134.694,                                                                           +
                                                       "Actual Total Time": 14473.384,                                                                             +
                                                       "Actual Rows": 5117,                                                                                        +
                                                       "Actual Loops": 1,                                                                                          +
                                                       "Inner Unique": false,                                                                                      +
                                                       "Merge Cond": "(t.id = mi.movie_id)",                                                                       +
                                                       "Shared Hit Blocks": 17,                                                                                    +
                                                       "Shared Read Blocks": 241134,                                                                               +
                                                       "Shared Dirtied Blocks": 0,                                                                                 +
                                                       "Shared Written Blocks": 0,                                                                                 +
                                                       "Local Hit Blocks": 0,                                                                                      +
                                                       "Local Read Blocks": 0,                                                                                     +
                                                       "Local Dirtied Blocks": 0,                                                                                  +
                                                       "Local Written Blocks": 0,                                                                                  +
                                                       "Temp Read Blocks": 0,                                                                                      +
                                                       "Temp Written Blocks": 0,                                                                                   +
                                                       "Plans": [                                                                                                  +
                                                         {                                                                                                         +
                                                           "Node Type": "Merge Join",                                                                              +
                                                           "Parent Relationship": "Outer",                                                                         +
                                                           "Parallel Aware": false,                                                                                +
                                                           "Join Type": "Inner",                                                                                   +
                                                           "Startup Cost": 22382.17,                                                                               +
                                                           "Total Cost": 22507.15,                                                                                 +
                                                           "Plan Rows": 11,                                                                                        +
                                                           "Plan Width": 41,                                                                                       +
                                                           "Actual Startup Time": 5601.028,                                                                        +
                                                           "Actual Total Time": 5840.864,                                                                          +
                                                           "Actual Rows": 5186,                                                                                    +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Inner Unique": false,                                                                                  +
                                                           "Merge Cond": "(t.id = mc.movie_id)",                                                                   +
                                                           "Shared Hit Blocks": 15,                                                                                +
                                                           "Shared Read Blocks": 79244,                                                                            +
                                                           "Shared Dirtied Blocks": 0,                                                                             +
                                                           "Shared Written Blocks": 0,                                                                             +
                                                           "Local Hit Blocks": 0,                                                                                  +
                                                           "Local Read Blocks": 0,                                                                                 +
                                                           "Local Dirtied Blocks": 0,                                                                              +
                                                           "Local Written Blocks": 0,                                                                              +
                                                           "Temp Read Blocks": 0,                                                                                  +
                                                           "Temp Written Blocks": 0,                                                                               +
                                                           "Plans": [                                                                                              +
                                                             {                                                                                                     +
                                                               "Node Type": "Merge Join",                                                                          +
                                                               "Parent Relationship": "Outer",                                                                     +
                                                               "Parallel Aware": false,                                                                            +
                                                               "Join Type": "Inner",                                                                               +
                                                               "Startup Cost": 20826.25,                                                                           +
                                                               "Total Cost": 20928.98,                                                                             +
                                                               "Plan Rows": 35,                                                                                    +
                                                               "Plan Width": 29,                                                                                   +
                                                               "Actual Startup Time": 4527.483,                                                                    +
                                                               "Actual Total Time": 4720.775,                                                                      +
                                                               "Actual Rows": 5606,                                                                                +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Inner Unique": true,                                                                               +
                                                               "Merge Cond": "(mk.movie_id = t.id)",                                                               +
                                                               "Shared Hit Blocks": 12,                                                                            +
                                                               "Shared Read Blocks": 60458,                                                                        +
                                                               "Shared Dirtied Blocks": 0,                                                                         +
                                                               "Shared Written Blocks": 0,                                                                         +
                                                               "Local Hit Blocks": 0,                                                                              +
                                                               "Local Read Blocks": 0,                                                                             +
                                                               "Local Dirtied Blocks": 0,                                                                          +
                                                               "Local Written Blocks": 0,                                                                          +
                                                               "Temp Read Blocks": 0,                                                                              +
                                                               "Temp Written Blocks": 0,                                                                           +
                                                               "Plans": [                                                                                          +
                                                                 {                                                                                                 +
                                                                   "Node Type": "Sort",                                                                            +
                                                                   "Parent Relationship": "Outer",                                                                 +
                                                                   "Parallel Aware": false,                                                                        +
                                                                   "Startup Cost": 17338.09,                                                                       +
                                                                   "Total Cost": 17338.10,                                                                         +
                                                                   "Plan Rows": 135,                                                                               +
                                                                   "Plan Width": 4,                                                                                +
                                                                   "Actual Startup Time": 2663.798,                                                                +
                                                                   "Actual Total Time": 2668.946,                                                                  +
                                                                   "Actual Rows": 37091,                                                                           +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Sort Key": ["mk.movie_id"],                                                                    +
                                                                   "Sort Method": "quicksort",                                                                     +
                                                                   "Sort Space Used": 3275,                                                                        +
                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                   "Shared Hit Blocks": 11,                                                                        +
                                                                   "Shared Read Blocks": 24461,                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                     +
                                                                   "Shared Written Blocks": 0,                                                                     +
                                                                   "Local Hit Blocks": 0,                                                                          +
                                                                   "Local Read Blocks": 0,                                                                         +
                                                                   "Local Dirtied Blocks": 0,                                                                      +
                                                                   "Local Written Blocks": 0,                                                                      +
                                                                   "Temp Read Blocks": 0,                                                                          +
                                                                   "Temp Written Blocks": 0,                                                                       +
                                                                   "Plans": [                                                                                      +
                                                                     {                                                                                             +
                                                                       "Node Type": "Merge Join",                                                                  +
                                                                       "Parent Relationship": "Outer",                                                             +
                                                                       "Parallel Aware": false,                                                                    +
                                                                       "Join Type": "Inner",                                                                       +
                                                                       "Startup Cost": 16635.45,                                                                   +
                                                                       "Total Cost": 17337.94,                                                                     +
                                                                       "Plan Rows": 135,                                                                           +
                                                                       "Plan Width": 4,                                                                            +
                                                                       "Actual Startup Time": 2434.339,                                                            +
                                                                       "Actual Total Time": 2651.567,                                                              +
                                                                       "Actual Rows": 37091,                                                                       +
                                                                       "Actual Loops": 1,                                                                          +
                                                                       "Inner Unique": false,                                                                      +
                                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                     +
                                                                       "Shared Hit Blocks": 11,                                                                    +
                                                                       "Shared Read Blocks": 24461,                                                                +
                                                                       "Shared Dirtied Blocks": 0,                                                                 +
                                                                       "Shared Written Blocks": 0,                                                                 +
                                                                       "Local Hit Blocks": 0,                                                                      +
                                                                       "Local Read Blocks": 0,                                                                     +
                                                                       "Local Dirtied Blocks": 0,                                                                  +
                                                                       "Local Written Blocks": 0,                                                                  +
                                                                       "Temp Read Blocks": 0,                                                                      +
                                                                       "Temp Written Blocks": 0,                                                                   +
                                                                       "Plans": [                                                                                  +
                                                                         {                                                                                         +
                                                                           "Node Type": "Sort",                                                                    +
                                                                           "Parent Relationship": "Outer",                                                         +
                                                                           "Parallel Aware": false,                                                                +
                                                                           "Startup Cost": 24.53,                                                                  +
                                                                           "Total Cost": 24.53,                                                                    +
                                                                           "Plan Rows": 4,                                                                         +
                                                                           "Plan Width": 4,                                                                        +
                                                                           "Actual Startup Time": 55.416,                                                          +
                                                                           "Actual Total Time": 55.418,                                                            +
                                                                           "Actual Rows": 3,                                                                       +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Sort Key": ["k.id"],                                                                   +
                                                                           "Sort Method": "quicksort",                                                             +
                                                                           "Sort Space Used": 25,                                                                  +
                                                                           "Sort Space Type": "Memory",                                                            +
                                                                           "Shared Hit Blocks": 8,                                                                 +
                                                                           "Shared Read Blocks": 10,                                                               +
                                                                           "Shared Dirtied Blocks": 0,                                                             +
                                                                           "Shared Written Blocks": 0,                                                             +
                                                                           "Local Hit Blocks": 0,                                                                  +
                                                                           "Local Read Blocks": 0,                                                                 +
                                                                           "Local Dirtied Blocks": 0,                                                              +
                                                                           "Local Written Blocks": 0,                                                              +
                                                                           "Temp Read Blocks": 0,                                                                  +
                                                                           "Temp Written Blocks": 0,                                                               +
                                                                           "Plans": [                                                                              +
                                                                             {                                                                                     +
                                                                               "Node Type": "Index Scan",                                                          +
                                                                               "Parent Relationship": "Outer",                                                     +
                                                                               "Parallel Aware": false,                                                            +
                                                                               "Scan Direction": "Forward",                                                        +
                                                                               "Index Name": "keyword_idx_keyword",                                                +
                                                                               "Relation Name": "keyword",                                                         +
                                                                               "Alias": "k",                                                                       +
                                                                               "Startup Cost": 0.01,                                                               +
                                                                               "Total Cost": 24.53,                                                                +
                                                                               "Plan Rows": 4,                                                                     +
                                                                               "Plan Width": 4,                                                                    +
                                                                               "Actual Startup Time": 30.464,                                                      +
                                                                               "Actual Total Time": 55.378,                                                        +
                                                                               "Actual Rows": 3,                                                                   +
                                                                               "Actual Loops": 1,                                                                  +
                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",+
                                                                               "Rows Removed by Index Recheck": 0,                                                 +
                                                                               "Shared Hit Blocks": 8,                                                             +
                                                                               "Shared Read Blocks": 10,                                                           +
                                                                               "Shared Dirtied Blocks": 0,                                                         +
                                                                               "Shared Written Blocks": 0,                                                         +
                                                                               "Local Hit Blocks": 0,                                                              +
                                                                               "Local Read Blocks": 0,                                                             +
                                                                               "Local Dirtied Blocks": 0,                                                          +
                                                                               "Local Written Blocks": 0,                                                          +
                                                                               "Temp Read Blocks": 0,                                                              +
                                                                               "Temp Written Blocks": 0                                                            +
                                                                             }                                                                                     +
                                                                           ]                                                                                       +
                                                                         },                                                                                        +
                                                                         {                                                                                         +
                                                                           "Node Type": "Sort",                                                                    +
                                                                           "Parent Relationship": "Inner",                                                         +
                                                                           "Parallel Aware": false,                                                                +
                                                                           "Startup Cost": 16610.92,                                                               +
                                                                           "Total Cost": 16962.16,                                                                 +
                                                                           "Plan Rows": 4523930,                                                                   +
                                                                           "Plan Width": 8,                                                                        +
                                                                           "Actual Startup Time": 2327.626,                                                        +
                                                                           "Actual Total Time": 2477.355,                                                          +
                                                                           "Actual Rows": 943582,                                                                  +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Sort Key": ["mk.keyword_id"],                                                          +
                                                                           "Sort Method": "quicksort",                                                             +
                                                                           "Sort Space Used": 408668,                                                              +
                                                                           "Sort Space Type": "Memory",                                                            +
                                                                           "Shared Hit Blocks": 3,                                                                 +
                                                                           "Shared Read Blocks": 24451,                                                            +
                                                                           "Shared Dirtied Blocks": 0,                                                             +
                                                                           "Shared Written Blocks": 0,                                                             +
                                                                           "Local Hit Blocks": 0,                                                                  +
                                                                           "Local Read Blocks": 0,                                                                 +
                                                                           "Local Dirtied Blocks": 0,                                                              +
                                                                           "Local Written Blocks": 0,                                                              +
                                                                           "Temp Read Blocks": 0,                                                                  +
                                                                           "Temp Written Blocks": 0,                                                               +
                                                                           "Plans": [                                                                              +
                                                                             {                                                                                     +
                                                                               "Node Type": "Seq Scan",                                                            +
                                                                               "Parent Relationship": "Outer",                                                     +
                                                                               "Parallel Aware": false,                                                            +
                                                                               "Relation Name": "movie_keyword",                                                   +
                                                                               "Alias": "mk",                                                                      +
                                                                               "Startup Cost": 0.00,                                                               +
                                                                               "Total Cost": 1079.84,                                                              +
                                                                               "Plan Rows": 4523930,                                                               +
                                                                               "Plan Width": 8,                                                                    +
                                                                               "Actual Startup Time": 0.019,                                                       +
                                                                               "Actual Total Time": 855.111,                                                       +
                                                                               "Actual Rows": 4523930,                                                             +
                                                                               "Actual Loops": 1,                                                                  +
                                                                               "Shared Hit Blocks": 3,                                                             +
                                                                               "Shared Read Blocks": 24451,                                                        +
                                                                               "Shared Dirtied Blocks": 0,                                                         +
                                                                               "Shared Written Blocks": 0,                                                         +
                                                                               "Local Hit Blocks": 0,                                                              +
                                                                               "Local Read Blocks": 0,                                                             +
                                                                               "Local Dirtied Blocks": 0,                                                          +
                                                                               "Local Written Blocks": 0,                                                          +
                                                                               "Temp Read Blocks": 0,                                                              +
                                                                               "Temp Written Blocks": 0                                                            +
                                                                             }                                                                                     +
                                                                           ]                                                                                       +
                                                                         }                                                                                         +
                                                                       ]                                                                                           +
                                                                     }                                                                                             +
                                                                   ]                                                                                               +
                                                                 },                                                                                                +
                                                                 {                                                                                                 +
                                                                   "Node Type": "Sort",                                                                            +
                                                                   "Parent Relationship": "Inner",                                                                 +
                                                                   "Parallel Aware": false,                                                                        +
                                                                   "Startup Cost": 3488.16,                                                                        +
                                                                   "Total Cost": 3539.57,                                                                          +
                                                                   "Plan Rows": 662066,                                                                            +
                                                                   "Plan Width": 25,                                                                               +
                                                                   "Actual Startup Time": 1862.651,                                                                +
                                                                   "Actual Total Time": 1946.485,                                                                  +
                                                                   "Actual Rows": 661814,                                                                          +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Sort Key": ["t.id"],                                                                           +
                                                                   "Sort Method": "quicksort",                                                                     +
                                                                   "Sort Space Used": 74955,                                                                       +
                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                   "Shared Hit Blocks": 1,                                                                         +
                                                                   "Shared Read Blocks": 35997,                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                     +
                                                                   "Shared Written Blocks": 0,                                                                     +
                                                                   "Local Hit Blocks": 0,                                                                          +
                                                                   "Local Read Blocks": 0,                                                                         +
                                                                   "Local Dirtied Blocks": 0,                                                                      +
                                                                   "Local Written Blocks": 0,                                                                      +
                                                                   "Temp Read Blocks": 0,                                                                          +
                                                                   "Temp Written Blocks": 0,                                                                       +
                                                                   "Plans": [                                                                                      +
                                                                     {                                                                                             +
                                                                       "Node Type": "Seq Scan",                                                                    +
                                                                       "Parent Relationship": "Outer",                                                             +
                                                                       "Parallel Aware": false,                                                                    +
                                                                       "Relation Name": "title",                                                                   +
                                                                       "Alias": "t",                                                                               +
                                                                       "Startup Cost": 0.00,                                                                       +
                                                                       "Total Cost": 1500.26,                                                                      +
                                                                       "Plan Rows": 662066,                                                                        +
                                                                       "Plan Width": 25,                                                                           +
                                                                       "Actual Startup Time": 15.258,                                                              +
                                                                       "Actual Total Time": 1413.821,                                                              +
                                                                       "Actual Rows": 662065,                                                                      +
                                                                       "Actual Loops": 1,                                                                          +
                                                                       "Filter": "(production_year > 2008)",                                                       +
                                                                       "Rows Removed by Filter": 1866247,                                                          +
                                                                       "Shared Hit Blocks": 1,                                                                     +
                                                                       "Shared Read Blocks": 35997,                                                                +
                                                                       "Shared Dirtied Blocks": 0,                                                                 +
                                                                       "Shared Written Blocks": 0,                                                                 +
                                                                       "Local Hit Blocks": 0,                                                                      +
                                                                       "Local Read Blocks": 0,                                                                     +
                                                                       "Local Dirtied Blocks": 0,                                                                  +
                                                                       "Local Written Blocks": 0,                                                                  +
                                                                       "Temp Read Blocks": 0,                                                                      +
                                                                       "Temp Written Blocks": 0                                                                    +
                                                                     }                                                                                             +
                                                                   ]                                                                                               +
                                                                 }                                                                                                 +
                                                               ]                                                                                                   +
                                                             },                                                                                                    +
                                                             {                                                                                                     +
                                                               "Node Type": "Sort",                                                                                +
                                                               "Parent Relationship": "Inner",                                                                     +
                                                               "Parallel Aware": false,                                                                            +
                                                               "Startup Cost": 1555.92,                                                                            +
                                                               "Total Cost": 1567.04,                                                                              +
                                                               "Plan Rows": 143259,                                                                                +
                                                               "Plan Width": 12,                                                                                   +
                                                               "Actual Startup Time": 1070.950,                                                                    +
                                                               "Actual Total Time": 1088.840,                                                                      +
                                                               "Actual Rows": 305462,                                                                              +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Sort Key": ["mc.movie_id"],                                                                        +
                                                               "Sort Method": "quicksort",                                                                         +
                                                               "Sort Space Used": 26504,                                                                           +
                                                               "Sort Space Type": "Memory",                                                                        +
                                                               "Shared Hit Blocks": 3,                                                                             +
                                                               "Shared Read Blocks": 18786,                                                                        +
                                                               "Shared Dirtied Blocks": 0,                                                                         +
                                                               "Shared Written Blocks": 0,                                                                         +
                                                               "Local Hit Blocks": 0,                                                                              +
                                                               "Local Read Blocks": 0,                                                                             +
                                                               "Local Dirtied Blocks": 0,                                                                          +
                                                               "Local Written Blocks": 0,                                                                          +
                                                               "Temp Read Blocks": 0,                                                                              +
                                                               "Temp Written Blocks": 0,                                                                           +
                                                               "Plans": [                                                                                          +
                                                                 {                                                                                                 +
                                                                   "Node Type": "Seq Scan",                                                                        +
                                                                   "Parent Relationship": "Outer",                                                                 +
                                                                   "Parallel Aware": false,                                                                        +
                                                                   "Relation Name": "movie_companies",                                                             +
                                                                   "Alias": "mc",                                                                                  +
                                                                   "Startup Cost": 0.00,                                                                           +
                                                                   "Total Cost": 1174.90,                                                                          +
                                                                   "Plan Rows": 143259,                                                                            +
                                                                   "Plan Width": 12,                                                                               +
                                                                   "Actual Startup Time": 0.016,                                                                   +
                                                                   "Actual Total Time": 958.741,                                                                   +
                                                                   "Actual Rows": 303271,                                                                          +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                        +
                                                                   "Rows Removed by Filter": 2305858,                                                              +
                                                                   "Shared Hit Blocks": 3,                                                                         +
                                                                   "Shared Read Blocks": 18786,                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                     +
                                                                   "Shared Written Blocks": 0,                                                                     +
                                                                   "Local Hit Blocks": 0,                                                                          +
                                                                   "Local Read Blocks": 0,                                                                         +
                                                                   "Local Dirtied Blocks": 0,                                                                      +
                                                                   "Local Written Blocks": 0,                                                                      +
                                                                   "Temp Read Blocks": 0,                                                                          +
                                                                   "Temp Written Blocks": 0                                                                        +
                                                                 }                                                                                                 +
                                                               ]                                                                                                   +
                                                             }                                                                                                     +
                                                           ]                                                                                                       +
                                                         },                                                                                                        +
                                                         {                                                                                                         +
                                                           "Node Type": "Sort",                                                                                    +
                                                           "Parent Relationship": "Inner",                                                                         +
                                                           "Parallel Aware": false,                                                                                +
                                                           "Startup Cost": 10414.20,                                                                               +
                                                           "Total Cost": 10466.06,                                                                                 +
                                                           "Plan Rows": 667885,                                                                                    +
                                                           "Plan Width": 8,                                                                                        +
                                                           "Actual Startup Time": 8533.195,                                                                        +
                                                           "Actual Total Time": 8566.775,                                                                          +
                                                           "Actual Rows": 673666,                                                                                  +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Sort Key": ["mi.movie_id"],                                                                            +
                                                           "Sort Method": "quicksort",                                                                             +
                                                           "Sort Space Used": 55952,                                                                               +
                                                           "Sort Space Type": "Memory",                                                                            +
                                                           "Shared Hit Blocks": 2,                                                                                 +
                                                           "Shared Read Blocks": 161890,                                                                           +
                                                           "Shared Dirtied Blocks": 0,                                                                             +
                                                           "Shared Written Blocks": 0,                                                                             +
                                                           "Local Hit Blocks": 0,                                                                                  +
                                                           "Local Read Blocks": 0,                                                                                 +
                                                           "Local Dirtied Blocks": 0,                                                                              +
                                                           "Local Written Blocks": 0,                                                                              +
                                                           "Temp Read Blocks": 0,                                                                                  +
                                                           "Temp Written Blocks": 0,                                                                               +
                                                           "Plans": [                                                                                              +
                                                             {                                                                                                     +
                                                               "Node Type": "Seq Scan",                                                                            +
                                                               "Parent Relationship": "Outer",                                                                     +
                                                               "Parallel Aware": false,                                                                            +
                                                               "Relation Name": "movie_info",                                                                      +
                                                               "Alias": "mi",                                                                                      +
                                                               "Startup Cost": 0.00,                                                                               +
                                                               "Total Cost": 8407.52,                                                                              +
                                                               "Plan Rows": 667885,                                                                                +
                                                               "Plan Width": 8,                                                                                    +
                                                               "Actual Startup Time": 9.786,                                                                       +
                                                               "Actual Total Time": 8279.583,                                                                      +
                                                               "Actual Rows": 669336,                                                                              +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Filter": "(info = ANY ('{Germany,German,USA,American}'::text[]))",                                 +
                                                               "Rows Removed by Filter": 14166384,                                                                 +
                                                               "Shared Hit Blocks": 2,                                                                             +
                                                               "Shared Read Blocks": 161890,                                                                       +
                                                               "Shared Dirtied Blocks": 0,                                                                         +
                                                               "Shared Written Blocks": 0,                                                                         +
                                                               "Local Hit Blocks": 0,                                                                              +
                                                               "Local Read Blocks": 0,                                                                             +
                                                               "Local Dirtied Blocks": 0,                                                                          +
                                                               "Local Written Blocks": 0,                                                                          +
                                                               "Temp Read Blocks": 0,                                                                              +
                                                               "Temp Written Blocks": 0                                                                            +
                                                             }                                                                                                     +
                                                           ]                                                                                                       +
                                                         }                                                                                                         +
                                                       ]                                                                                                           +
                                                     },                                                                                                            +
                                                     {                                                                                                             +
                                                       "Node Type": "Sort",                                                                                        +
                                                       "Parent Relationship": "Inner",                                                                             +
                                                       "Parallel Aware": false,                                                                                    +
                                                       "Startup Cost": 4139.50,                                                                                    +
                                                       "Total Cost": 4230.56,                                                                                      +
                                                       "Plan Rows": 1172842,                                                                                       +
                                                       "Plan Width": 14,                                                                                           +
                                                       "Actual Startup Time": 831.036,                                                                             +
                                                       "Actual Total Time": 886.988,                                                                               +
                                                       "Actual Rows": 1182478,                                                                                     +
                                                       "Actual Loops": 1,                                                                                          +
                                                       "Sort Key": ["mi_idx.movie_id"],                                                                            +
                                                       "Sort Method": "quicksort",                                                                                 +
                                                       "Sort Space Used": 118412,                                                                                  +
                                                       "Sort Space Type": "Memory",                                                                                +
                                                       "Shared Hit Blocks": 2,                                                                                     +
                                                       "Shared Read Blocks": 8451,                                                                                 +
                                                       "Shared Dirtied Blocks": 0,                                                                                 +
                                                       "Shared Written Blocks": 0,                                                                                 +
                                                       "Local Hit Blocks": 0,                                                                                      +
                                                       "Local Read Blocks": 0,                                                                                     +
                                                       "Local Dirtied Blocks": 0,                                                                                  +
                                                       "Local Written Blocks": 0,                                                                                  +
                                                       "Temp Read Blocks": 0,                                                                                      +
                                                       "Temp Written Blocks": 0,                                                                                   +
                                                       "Plans": [                                                                                                  +
                                                         {                                                                                                         +
                                                           "Node Type": "Seq Scan",                                                                                +
                                                           "Parent Relationship": "Outer",                                                                         +
                                                           "Parallel Aware": false,                                                                                +
                                                           "Relation Name": "movie_info_idx",                                                                      +
                                                           "Alias": "mi_idx",                                                                                      +
                                                           "Startup Cost": 0.00,                                                                                   +
                                                           "Total Cost": 467.71,                                                                                   +
                                                           "Plan Rows": 1172842,                                                                                   +
                                                           "Plan Width": 14,                                                                                       +
                                                           "Actual Startup Time": 0.015,                                                                           +
                                                           "Actual Total Time": 386.707,                                                                           +
                                                           "Actual Rows": 1172832,                                                                                 +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Filter": "(info < '7.0'::text)",                                                                       +
                                                           "Rows Removed by Filter": 207203,                                                                       +
                                                           "Shared Hit Blocks": 2,                                                                                 +
                                                           "Shared Read Blocks": 8451,                                                                             +
                                                           "Shared Dirtied Blocks": 0,                                                                             +
                                                           "Shared Written Blocks": 0,                                                                             +
                                                           "Local Hit Blocks": 0,                                                                                  +
                                                           "Local Read Blocks": 0,                                                                                 +
                                                           "Local Dirtied Blocks": 0,                                                                              +
                                                           "Local Written Blocks": 0,                                                                              +
                                                           "Temp Read Blocks": 0,                                                                                  +
                                                           "Temp Written Blocks": 0                                                                                +
                                                         }                                                                                                         +
                                                       ]                                                                                                           +
                                                     }                                                                                                             +
                                                   ]                                                                                                               +
                                                 }                                                                                                                 +
                                               ]                                                                                                                   +
                                             },                                                                                                                    +
                                             {                                                                                                                     +
                                               "Node Type": "Sort",                                                                                                +
                                               "Parent Relationship": "Inner",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Startup Cost": 0.05,                                                                                               +
                                               "Total Cost": 0.05,                                                                                                 +
                                               "Plan Rows": 1,                                                                                                     +
                                               "Plan Width": 4,                                                                                                    +
                                               "Actual Startup Time": 0.037,                                                                                       +
                                               "Actual Total Time": 0.037,                                                                                         +
                                               "Actual Rows": 1,                                                                                                   +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Sort Key": ["it2.id"],                                                                                             +
                                               "Sort Method": "quicksort",                                                                                         +
                                               "Sort Space Used": 25,                                                                                              +
                                               "Sort Space Type": "Memory",                                                                                        +
                                               "Shared Hit Blocks": 1,                                                                                             +
                                               "Shared Read Blocks": 0,                                                                                            +
                                               "Shared Dirtied Blocks": 0,                                                                                         +
                                               "Shared Written Blocks": 0,                                                                                         +
                                               "Local Hit Blocks": 0,                                                                                              +
                                               "Local Read Blocks": 0,                                                                                             +
                                               "Local Dirtied Blocks": 0,                                                                                          +
                                               "Local Written Blocks": 0,                                                                                          +
                                               "Temp Read Blocks": 0,                                                                                              +
                                               "Temp Written Blocks": 0,                                                                                           +
                                               "Plans": [                                                                                                          +
                                                 {                                                                                                                 +
                                                   "Node Type": "Seq Scan",                                                                                        +
                                                   "Parent Relationship": "Outer",                                                                                 +
                                                   "Parallel Aware": false,                                                                                        +
                                                   "Relation Name": "info_type",                                                                                   +
                                                   "Alias": "it2",                                                                                                 +
                                                   "Startup Cost": 0.00,                                                                                           +
                                                   "Total Cost": 0.05,                                                                                             +
                                                   "Plan Rows": 1,                                                                                                 +
                                                   "Plan Width": 4,                                                                                                +
                                                   "Actual Startup Time": 0.027,                                                                                   +
                                                   "Actual Total Time": 0.029,                                                                                     +
                                                   "Actual Rows": 1,                                                                                               +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                    +
                                                   "Rows Removed by Filter": 112,                                                                                  +
                                                   "Shared Hit Blocks": 1,                                                                                         +
                                                   "Shared Read Blocks": 0,                                                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                                                     +
                                                   "Shared Written Blocks": 0,                                                                                     +
                                                   "Local Hit Blocks": 0,                                                                                          +
                                                   "Local Read Blocks": 0,                                                                                         +
                                                   "Local Dirtied Blocks": 0,                                                                                      +
                                                   "Local Written Blocks": 0,                                                                                      +
                                                   "Temp Read Blocks": 0,                                                                                          +
                                                   "Temp Written Blocks": 0                                                                                        +
                                                 }                                                                                                                 +
                                               ]                                                                                                                   +
                                             }                                                                                                                     +
                                           ]                                                                                                                       +
                                         }                                                                                                                         +
                                       ]                                                                                                                           +
                                     },                                                                                                                            +
                                     {                                                                                                                             +
                                       "Node Type": "Sort",                                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Startup Cost": 0.05,                                                                                                       +
                                       "Total Cost": 0.05,                                                                                                         +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 4,                                                                                                            +
                                       "Actual Startup Time": 0.020,                                                                                               +
                                       "Actual Total Time": 0.020,                                                                                                 +
                                       "Actual Rows": 1,                                                                                                           +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Sort Key": ["it1.id"],                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                 +
                                       "Sort Space Used": 25,                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                +
                                       "Shared Hit Blocks": 1,                                                                                                     +
                                       "Shared Read Blocks": 0,                                                                                                    +
                                       "Shared Dirtied Blocks": 0,                                                                                                 +
                                       "Shared Written Blocks": 0,                                                                                                 +
                                       "Local Hit Blocks": 0,                                                                                                      +
                                       "Local Read Blocks": 0,                                                                                                     +
                                       "Local Dirtied Blocks": 0,                                                                                                  +
                                       "Local Written Blocks": 0,                                                                                                  +
                                       "Temp Read Blocks": 0,                                                                                                      +
                                       "Temp Written Blocks": 0,                                                                                                   +
                                       "Plans": [                                                                                                                  +
                                         {                                                                                                                         +
                                           "Node Type": "Seq Scan",                                                                                                +
                                           "Parent Relationship": "Outer",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Relation Name": "info_type",                                                                                           +
                                           "Alias": "it1",                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                   +
                                           "Total Cost": 0.05,                                                                                                     +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 4,                                                                                                        +
                                           "Actual Startup Time": 0.007,                                                                                           +
                                           "Actual Total Time": 0.017,                                                                                             +
                                           "Actual Rows": 1,                                                                                                       +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Filter": "((info)::text = 'countries'::text)",                                                                         +
                                           "Rows Removed by Filter": 112,                                                                                          +
                                           "Shared Hit Blocks": 1,                                                                                                 +
                                           "Shared Read Blocks": 0,                                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                              +
                                           "Local Written Blocks": 0,                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                  +
                                           "Temp Written Blocks": 0                                                                                                +
                                         }                                                                                                                         +
                                       ]                                                                                                                           +
                                     }                                                                                                                             +
                                   ]                                                                                                                               +
                                 }                                                                                                                                 +
                               ]                                                                                                                                   +
                             },                                                                                                                                    +
                             {                                                                                                                                     +
                               "Node Type": "Sort",                                                                                                                +
                               "Parent Relationship": "Inner",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Startup Cost": 0.03,                                                                                                               +
                               "Total Cost": 0.03,                                                                                                                 +
                               "Plan Rows": 2,                                                                                                                     +
                               "Plan Width": 4,                                                                                                                    +
                               "Actual Startup Time": 0.012,                                                                                                       +
                               "Actual Total Time": 0.012,                                                                                                         +
                               "Actual Rows": 2,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                  +
                               "Sort Key": ["kt.id"],                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                         +
                               "Sort Space Used": 25,                                                                                                              +
                               "Sort Space Type": "Memory",                                                                                                        +
                               "Shared Hit Blocks": 1,                                                                                                             +
                               "Shared Read Blocks": 0,                                                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                                                         +
                               "Shared Written Blocks": 0,                                                                                                         +
                               "Local Hit Blocks": 0,                                                                                                              +
                               "Local Read Blocks": 0,                                                                                                             +
                               "Local Dirtied Blocks": 0,                                                                                                          +
                               "Local Written Blocks": 0,                                                                                                          +
                               "Temp Read Blocks": 0,                                                                                                              +
                               "Temp Written Blocks": 0,                                                                                                           +
                               "Plans": [                                                                                                                          +
                                 {                                                                                                                                 +
                                   "Node Type": "Seq Scan",                                                                                                        +
                                   "Parent Relationship": "Outer",                                                                                                 +
                                   "Parallel Aware": false,                                                                                                        +
                                   "Relation Name": "kind_type",                                                                                                   +
                                   "Alias": "kt",                                                                                                                  +
                                   "Startup Cost": 0.00,                                                                                                           +
                                   "Total Cost": 0.03,                                                                                                             +
                                   "Plan Rows": 2,                                                                                                                 +
                                   "Plan Width": 4,                                                                                                                +
                                   "Actual Startup Time": 0.008,                                                                                                   +
                                   "Actual Total Time": 0.009,                                                                                                     +
                                   "Actual Rows": 2,                                                                                                               +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                   +
                                   "Rows Removed by Filter": 5,                                                                                                    +
                                   "Shared Hit Blocks": 1,                                                                                                         +
                                   "Shared Read Blocks": 0,                                                                                                        +
                                   "Shared Dirtied Blocks": 0,                                                                                                     +
                                   "Shared Written Blocks": 0,                                                                                                     +
                                   "Local Hit Blocks": 0,                                                                                                          +
                                   "Local Read Blocks": 0,                                                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                                                      +
                                   "Local Written Blocks": 0,                                                                                                      +
                                   "Temp Read Blocks": 0,                                                                                                          +
                                   "Temp Written Blocks": 0                                                                                                        +
                                 }                                                                                                                                 +
                               ]                                                                                                                                   +
                             }                                                                                                                                     +
                           ]                                                                                                                                       +
                         }                                                                                                                                         +
                       ]                                                                                                                                           +
                     },                                                                                                                                            +
                     {                                                                                                                                             +
                       "Node Type": "Sort",                                                                                                                        +
                       "Parent Relationship": "Inner",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Startup Cost": 0.03,                                                                                                                       +
                       "Total Cost": 0.03,                                                                                                                         +
                       "Plan Rows": 4,                                                                                                                             +
                       "Plan Width": 4,                                                                                                                            +
                       "Actual Startup Time": 0.007,                                                                                                               +
                       "Actual Total Time": 0.007,                                                                                                                 +
                       "Actual Rows": 1,                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                          +
                       "Sort Key": ["ct.id"],                                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                                 +
                       "Sort Space Used": 25,                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                +
                       "Shared Hit Blocks": 1,                                                                                                                     +
                       "Shared Read Blocks": 0,                                                                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                                                                 +
                       "Shared Written Blocks": 0,                                                                                                                 +
                       "Local Hit Blocks": 0,                                                                                                                      +
                       "Local Read Blocks": 0,                                                                                                                     +
                       "Local Dirtied Blocks": 0,                                                                                                                  +
                       "Local Written Blocks": 0,                                                                                                                  +
                       "Temp Read Blocks": 0,                                                                                                                      +
                       "Temp Written Blocks": 0,                                                                                                                   +
                       "Plans": [                                                                                                                                  +
                         {                                                                                                                                         +
                           "Node Type": "Seq Scan",                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Relation Name": "company_type",                                                                                                        +
                           "Alias": "ct",                                                                                                                          +
                           "Startup Cost": 0.00,                                                                                                                   +
                           "Total Cost": 0.03,                                                                                                                     +
                           "Plan Rows": 4,                                                                                                                         +
                           "Plan Width": 4,                                                                                                                        +
                           "Actual Startup Time": 0.004,                                                                                                           +
                           "Actual Total Time": 0.005,                                                                                                             +
                           "Actual Rows": 4,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                      +
                           "Shared Hit Blocks": 1,                                                                                                                 +
                           "Shared Read Blocks": 0,                                                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                  +
                           "Temp Written Blocks": 0                                                                                                                +
                         }                                                                                                                                         +
                       ]                                                                                                                                           +
                     }                                                                                                                                             +
                   ]                                                                                                                                               +
                 }                                                                                                                                                 +
               ]                                                                                                                                                   +
             },                                                                                                                                                    +
             {                                                                                                                                                     +
               "Node Type": "Sort",                                                                                                                                +
               "Parent Relationship": "Inner",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Startup Cost": 460.56,                                                                                                                             +
               "Total Cost": 470.36,                                                                                                                               +
               "Plan Rows": 126230,                                                                                                                                +
               "Plan Width": 23,                                                                                                                                   +
               "Actual Startup Time": 193.518,                                                                                                                     +
               "Actual Total Time": 197.724,                                                                                                                       +
               "Actual Rows": 38546,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                  +
               "Sort Key": ["cn.id"],                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                         +
               "Sort Space Used": 12077,                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                        +
               "Shared Hit Blocks": 2,                                                                                                                             +
               "Shared Read Blocks": 2992,                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                         +
               "Shared Written Blocks": 0,                                                                                                                         +
               "Local Hit Blocks": 0,                                                                                                                              +
               "Local Read Blocks": 0,                                                                                                                             +
               "Local Dirtied Blocks": 0,                                                                                                                          +
               "Local Written Blocks": 0,                                                                                                                          +
               "Temp Read Blocks": 0,                                                                                                                              +
               "Temp Written Blocks": 0,                                                                                                                           +
               "Plans": [                                                                                                                                          +
                 {                                                                                                                                                 +
                   "Node Type": "Seq Scan",                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                        +
                   "Relation Name": "company_name",                                                                                                                +
                   "Alias": "cn",                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                           +
                   "Total Cost": 128.41,                                                                                                                           +
                   "Plan Rows": 126230,                                                                                                                            +
                   "Plan Width": 23,                                                                                                                               +
                   "Actual Startup Time": 23.009,                                                                                                                  +
                   "Actual Total Time": 115.372,                                                                                                                   +
                   "Actual Rows": 126230,                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                              +
                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                                             +
                   "Rows Removed by Filter": 108767,                                                                                                               +
                   "Shared Hit Blocks": 2,                                                                                                                         +
                   "Shared Read Blocks": 2992,                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                     +
                   "Shared Written Blocks": 0,                                                                                                                     +
                   "Local Hit Blocks": 0,                                                                                                                          +
                   "Local Read Blocks": 0,                                                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                                                      +
                   "Local Written Blocks": 0,                                                                                                                      +
                   "Temp Read Blocks": 0,                                                                                                                          +
                   "Temp Written Blocks": 0                                                                                                                        +
                 }                                                                                                                                                 +
               ]                                                                                                                                                   +
             }                                                                                                                                                     +
           ]                                                                                                                                                       +
         }                                                                                                                                                         +
       ]                                                                                                                                                           +
     },                                                                                                                                                            +
     "Planning Time": 9272.780,                                                                                                                                    +
     "Triggers": [                                                                                                                                                 +
     ],                                                                                                                                                            +
     "Execution Time": 15765.799                                                                                                                                   +
   }                                                                                                                                                               +
 ]
(1 row)

