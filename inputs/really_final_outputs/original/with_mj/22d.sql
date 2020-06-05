                                                                                      QUERY PLAN                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                   +
   {                                                                                                                                                                                 +
     "Plan": {                                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                                      +
       "Startup Cost": 51481.30,                                                                                                                                                     +
       "Total Cost": 51481.30,                                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                                               +
       "Plan Width": 96,                                                                                                                                                             +
       "Actual Startup Time": 17320.001,                                                                                                                                             +
       "Actual Total Time": 17320.001,                                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                                             +
       "Actual Loops": 1,                                                                                                                                                            +
       "Shared Hit Blocks": 29,                                                                                                                                                      +
       "Shared Read Blocks": 252577,                                                                                                                                                 +
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
           "Startup Cost": 51481.30,                                                                                                                                                 +
           "Total Cost": 51481.30,                                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                                           +
           "Plan Width": 42,                                                                                                                                                         +
           "Actual Startup Time": 17258.887,                                                                                                                                         +
           "Actual Total Time": 17281.657,                                                                                                                                           +
           "Actual Rows": 46281,                                                                                                                                                     +
           "Actual Loops": 1,                                                                                                                                                        +
           "Inner Unique": true,                                                                                                                                                     +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                                             +
           "Shared Hit Blocks": 29,                                                                                                                                                  +
           "Shared Read Blocks": 252577,                                                                                                                                             +
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
               "Startup Cost": 51481.27,                                                                                                                                             +
               "Total Cost": 51481.27,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                       +
               "Plan Width": 46,                                                                                                                                                     +
               "Actual Startup Time": 17258.870,                                                                                                                                     +
               "Actual Total Time": 17262.902,                                                                                                                                       +
               "Actual Rows": 46281,                                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                                    +
               "Sort Key": ["mc.company_type_id"],                                                                                                                                   +
               "Sort Method": "quicksort",                                                                                                                                           +
               "Sort Space Used": 6214,                                                                                                                                              +
               "Sort Space Type": "Memory",                                                                                                                                          +
               "Shared Hit Blocks": 28,                                                                                                                                              +
               "Shared Read Blocks": 252577,                                                                                                                                         +
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
                   "Startup Cost": 51481.26,                                                                                                                                         +
                   "Total Cost": 51481.27,                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                                   +
                   "Plan Width": 46,                                                                                                                                                 +
                   "Actual Startup Time": 17224.021,                                                                                                                                 +
                   "Actual Total Time": 17237.782,                                                                                                                                   +
                   "Actual Rows": 46281,                                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                                                +
                   "Inner Unique": true,                                                                                                                                             +
                   "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                              +
                   "Shared Hit Blocks": 24,                                                                                                                                          +
                   "Shared Read Blocks": 252577,                                                                                                                                     +
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
                       "Startup Cost": 51481.23,                                                                                                                                     +
                       "Total Cost": 51481.23,                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                               +
                       "Plan Width": 50,                                                                                                                                             +
                       "Actual Startup Time": 17223.995,                                                                                                                             +
                       "Actual Total Time": 17226.574,                                                                                                                               +
                       "Actual Rows": 49908,                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                            +
                       "Sort Key": ["t.kind_id"],                                                                                                                                    +
                       "Sort Method": "quicksort",                                                                                                                                   +
                       "Sort Space Used": 6959,                                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                                  +
                       "Shared Hit Blocks": 23,                                                                                                                                      +
                       "Shared Read Blocks": 252577,                                                                                                                                 +
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
                           "Startup Cost": 51481.23,                                                                                                                                 +
                           "Total Cost": 51481.23,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                           +
                           "Plan Width": 50,                                                                                                                                         +
                           "Actual Startup Time": 17194.040,                                                                                                                         +
                           "Actual Total Time": 17208.932,                                                                                                                           +
                           "Actual Rows": 49908,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                        +
                           "Inner Unique": true,                                                                                                                                     +
                           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                               +
                           "Shared Hit Blocks": 23,                                                                                                                                  +
                           "Shared Read Blocks": 252577,                                                                                                                             +
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
                               "Startup Cost": 51481.18,                                                                                                                             +
                               "Total Cost": 51481.18,                                                                                                                               +
                               "Plan Rows": 2,                                                                                                                                       +
                               "Plan Width": 54,                                                                                                                                     +
                               "Actual Startup Time": 17192.331,                                                                                                                     +
                               "Actual Total Time": 17195.466,                                                                                                                       +
                               "Actual Rows": 56718,                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                    +
                               "Sort Key": ["mi.info_type_id"],                                                                                                                      +
                               "Sort Method": "quicksort",                                                                                                                           +
                               "Sort Space Used": 8422,                                                                                                                              +
                               "Sort Space Type": "Memory",                                                                                                                          +
                               "Shared Hit Blocks": 22,                                                                                                                              +
                               "Shared Read Blocks": 252577,                                                                                                                         +
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
                                   "Startup Cost": 51481.16,                                                                                                                         +
                                   "Total Cost": 51481.18,                                                                                                                           +
                                   "Plan Rows": 2,                                                                                                                                   +
                                   "Plan Width": 54,                                                                                                                                 +
                                   "Actual Startup Time": 17153.609,                                                                                                                 +
                                   "Actual Total Time": 17174.527,                                                                                                                   +
                                   "Actual Rows": 58785,                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                                +
                                   "Inner Unique": true,                                                                                                                             +
                                   "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                                   +
                                   "Shared Hit Blocks": 22,                                                                                                                          +
                                   "Shared Read Blocks": 252577,                                                                                                                     +
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
                                       "Startup Cost": 51481.11,                                                                                                                     +
                                       "Total Cost": 51481.12,                                                                                                                       +
                                       "Plan Rows": 167,                                                                                                                             +
                                       "Plan Width": 58,                                                                                                                             +
                                       "Actual Startup Time": 17127.059,                                                                                                             +
                                       "Actual Total Time": 17143.324,                                                                                                               +
                                       "Actual Rows": 175507,                                                                                                                        +
                                       "Actual Loops": 1,                                                                                                                            +
                                       "Sort Key": ["mi_idx.info_type_id"],                                                                                                          +
                                       "Sort Method": "quicksort",                                                                                                                   +
                                       "Sort Space Used": 29472,                                                                                                                     +
                                       "Sort Space Type": "Memory",                                                                                                                  +
                                       "Shared Hit Blocks": 21,                                                                                                                      +
                                       "Shared Read Blocks": 252577,                                                                                                                 +
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
                                           "Startup Cost": 51461.22,                                                                                                                 +
                                           "Total Cost": 51480.92,                                                                                                                   +
                                           "Plan Rows": 167,                                                                                                                         +
                                           "Plan Width": 58,                                                                                                                         +
                                           "Actual Startup Time": 16937.872,                                                                                                         +
                                           "Actual Total Time": 17066.786,                                                                                                           +
                                           "Actual Rows": 177837,                                                                                                                    +
                                           "Actual Loops": 1,                                                                                                                        +
                                           "Inner Unique": true,                                                                                                                     +
                                           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                  +
                                           "Shared Hit Blocks": 21,                                                                                                                  +
                                           "Shared Read Blocks": 252577,                                                                                                             +
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
                                               "Startup Cost": 51000.66,                                                                                                             +
                                               "Total Cost": 51000.70,                                                                                                               +
                                               "Plan Rows": 484,                                                                                                                     +
                                               "Plan Width": 43,                                                                                                                     +
                                               "Actual Startup Time": 16755.164,                                                                                                     +
                                               "Actual Total Time": 16785.644,                                                                                                       +
                                               "Actual Rows": 250236,                                                                                                                +
                                               "Actual Loops": 1,                                                                                                                    +
                                               "Sort Key": ["mc.company_id"],                                                                                                        +
                                               "Sort Method": "quicksort",                                                                                                           +
                                               "Sort Space Used": 29390,                                                                                                             +
                                               "Sort Space Type": "Memory",                                                                                                          +
                                               "Shared Hit Blocks": 19,                                                                                                              +
                                               "Shared Read Blocks": 249585,                                                                                                         +
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
                                                   "Startup Cost": 50119.13,                                                                                                         +
                                                   "Total Cost": 50999.99,                                                                                                           +
                                                   "Plan Rows": 484,                                                                                                                 +
                                                   "Plan Width": 43,                                                                                                                 +
                                                   "Actual Startup Time": 15561.401,                                                                                                 +
                                                   "Actual Total Time": 16659.655,                                                                                                   +
                                                   "Actual Rows": 250236,                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                +
                                                   "Inner Unique": false,                                                                                                            +
                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                         +
                                                   "Shared Hit Blocks": 19,                                                                                                          +
                                                   "Shared Read Blocks": 249585,                                                                                                     +
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
                                                       "Startup Cost": 45404.29,                                                                                                     +
                                                       "Total Cost": 46077.67,                                                                                                       +
                                                       "Plan Rows": 563,                                                                                                             +
                                                       "Plan Width": 49,                                                                                                             +
                                                       "Actual Startup Time": 14664.441,                                                                                             +
                                                       "Actual Total Time": 15482.004,                                                                                               +
                                                       "Actual Rows": 87156,                                                                                                         +
                                                       "Actual Loops": 1,                                                                                                            +
                                                       "Inner Unique": false,                                                                                                        +
                                                       "Merge Cond": "(t.id = mc.movie_id)",                                                                                         +
                                                       "Shared Hit Blocks": 17,                                                                                                      +
                                                       "Shared Read Blocks": 241134,                                                                                                 +
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
                                                           "Startup Cost": 35998.84,                                                                                                 +
                                                           "Total Cost": 36267.05,                                                                                                   +
                                                           "Plan Rows": 101,                                                                                                         +
                                                           "Plan Width": 37,                                                                                                         +
                                                           "Actual Startup Time": 13131.727,                                                                                         +
                                                           "Actual Total Time": 13547.220,                                                                                           +
                                                           "Actual Rows": 7395,                                                                                                      +
                                                           "Actual Loops": 1,                                                                                                        +
                                                           "Inner Unique": false,                                                                                                    +
                                                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                     +
                                                           "Shared Hit Blocks": 14,                                                                                                  +
                                                           "Shared Read Blocks": 222348,                                                                                             +
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
                                                               "Startup Cost": 21976.21,                                                                                             +
                                                               "Total Cost": 22133.37,                                                                                               +
                                                               "Plan Rows": 54,                                                                                                      +
                                                               "Plan Width": 29,                                                                                                     +
                                                               "Actual Startup Time": 4508.520,                                                                                      +
                                                               "Actual Total Time": 4809.654,                                                                                        +
                                                               "Actual Rows": 9739,                                                                                                  +
                                                               "Actual Loops": 1,                                                                                                    +
                                                               "Inner Unique": true,                                                                                                 +
                                                               "Merge Cond": "(mk.movie_id = t.id)",                                                                                 +
                                                               "Shared Hit Blocks": 12,                                                                                              +
                                                               "Shared Read Blocks": 60458,                                                                                          +
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
                                                                   "Startup Cost": 17338.09,                                                                                         +
                                                                   "Total Cost": 17338.10,                                                                                           +
                                                                   "Plan Rows": 135,                                                                                                 +
                                                                   "Plan Width": 4,                                                                                                  +
                                                                   "Actual Startup Time": 2570.859,                                                                                  +
                                                                   "Actual Total Time": 2576.060,                                                                                    +
                                                                   "Actual Rows": 37091,                                                                                             +
                                                                   "Actual Loops": 1,                                                                                                +
                                                                   "Sort Key": ["mk.movie_id"],                                                                                      +
                                                                   "Sort Method": "quicksort",                                                                                       +
                                                                   "Sort Space Used": 3275,                                                                                          +
                                                                   "Sort Space Type": "Memory",                                                                                      +
                                                                   "Shared Hit Blocks": 11,                                                                                          +
                                                                   "Shared Read Blocks": 24461,                                                                                      +
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
                                                                       "Startup Cost": 16635.45,                                                                                     +
                                                                       "Total Cost": 17337.94,                                                                                       +
                                                                       "Plan Rows": 135,                                                                                             +
                                                                       "Plan Width": 4,                                                                                              +
                                                                       "Actual Startup Time": 2351.288,                                                                              +
                                                                       "Actual Total Time": 2558.355,                                                                                +
                                                                       "Actual Rows": 37091,                                                                                         +
                                                                       "Actual Loops": 1,                                                                                            +
                                                                       "Inner Unique": false,                                                                                        +
                                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                                       +
                                                                       "Shared Hit Blocks": 11,                                                                                      +
                                                                       "Shared Read Blocks": 24461,                                                                                  +
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
                                                                           "Startup Cost": 24.53,                                                                                    +
                                                                           "Total Cost": 24.53,                                                                                      +
                                                                           "Plan Rows": 4,                                                                                           +
                                                                           "Plan Width": 4,                                                                                          +
                                                                           "Actual Startup Time": 55.413,                                                                            +
                                                                           "Actual Total Time": 55.415,                                                                              +
                                                                           "Actual Rows": 3,                                                                                         +
                                                                           "Actual Loops": 1,                                                                                        +
                                                                           "Sort Key": ["k.id"],                                                                                     +
                                                                           "Sort Method": "quicksort",                                                                               +
                                                                           "Sort Space Used": 25,                                                                                    +
                                                                           "Sort Space Type": "Memory",                                                                              +
                                                                           "Shared Hit Blocks": 8,                                                                                   +
                                                                           "Shared Read Blocks": 10,                                                                                 +
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
                                                                               "Total Cost": 24.53,                                                                                  +
                                                                               "Plan Rows": 4,                                                                                       +
                                                                               "Plan Width": 4,                                                                                      +
                                                                               "Actual Startup Time": 30.451,                                                                        +
                                                                               "Actual Total Time": 55.383,                                                                          +
                                                                               "Actual Rows": 3,                                                                                     +
                                                                               "Actual Loops": 1,                                                                                    +
                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",                  +
                                                                               "Rows Removed by Index Recheck": 0,                                                                   +
                                                                               "Shared Hit Blocks": 8,                                                                               +
                                                                               "Shared Read Blocks": 10,                                                                             +
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
                                                                           "Actual Startup Time": 2244.637,                                                                          +
                                                                           "Actual Total Time": 2384.500,                                                                            +
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
                                                                               "Actual Startup Time": 0.019,                                                                         +
                                                                               "Actual Total Time": 793.434,                                                                         +
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
                                                                   "Startup Cost": 4638.12,                                                                                          +
                                                                   "Total Cost": 4716.76,                                                                                            +
                                                                   "Plan Rows": 1012920,                                                                                             +
                                                                   "Plan Width": 25,                                                                                                 +
                                                                   "Actual Startup Time": 1937.567,                                                                                  +
                                                                   "Actual Total Time": 2071.287,                                                                                    +
                                                                   "Actual Rows": 1012613,                                                                                           +
                                                                   "Actual Loops": 1,                                                                                                +
                                                                   "Sort Key": ["t.id"],                                                                                             +
                                                                   "Sort Method": "quicksort",                                                                                       +
                                                                   "Sort Space Used": 101193,                                                                                        +
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
                                                                       "Total Cost": 1500.26,                                                                                        +
                                                                       "Plan Rows": 1012920,                                                                                         +
                                                                       "Plan Width": 25,                                                                                             +
                                                                       "Actual Startup Time": 8.179,                                                                                 +
                                                                       "Actual Total Time": 1292.960,                                                                                +
                                                                       "Actual Rows": 1012920,                                                                                       +
                                                                       "Actual Loops": 1,                                                                                            +
                                                                       "Filter": "(production_year > 2005)",                                                                         +
                                                                       "Rows Removed by Filter": 1515392,                                                                            +
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
                                                               "Startup Cost": 14022.63,                                                                                             +
                                                               "Total Cost": 14078.15,                                                                                               +
                                                               "Plan Rows": 715132,                                                                                                  +
                                                               "Plan Width": 8,                                                                                                      +
                                                               "Actual Startup Time": 8623.190,                                                                                      +
                                                               "Actual Total Time": 8663.874,                                                                                        +
                                                               "Actual Rows": 718388,                                                                                                +
                                                               "Actual Loops": 1,                                                                                                    +
                                                               "Sort Key": ["mi.movie_id"],                                                                                          +
                                                               "Sort Method": "quicksort",                                                                                           +
                                                               "Sort Space Used": 58149,                                                                                             +
                                                               "Sort Space Type": "Memory",                                                                                          +
                                                               "Shared Hit Blocks": 2,                                                                                               +
                                                               "Shared Read Blocks": 161890,                                                                                         +
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
                                                                   "Relation Name": "movie_info",                                                                                    +
                                                                   "Alias": "mi",                                                                                                    +
                                                                   "Startup Cost": 0.00,                                                                                             +
                                                                   "Total Cost": 11863.04,                                                                                           +
                                                                   "Plan Rows": 715132,                                                                                              +
                                                                   "Plan Width": 8,                                                                                                  +
                                                                   "Actual Startup Time": 14.065,                                                                                    +
                                                                   "Actual Total Time": 8362.863,                                                                                    +
                                                                   "Actual Rows": 716210,                                                                                            +
                                                                   "Actual Loops": 1,                                                                                                +
                                                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",+
                                                                   "Rows Removed by Filter": 14119510,                                                                               +
                                                                   "Shared Hit Blocks": 2,                                                                                           +
                                                                   "Shared Read Blocks": 161890,                                                                                     +
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
                                                           "Startup Cost": 9405.45,                                                                                                  +
                                                           "Total Cost": 9608.03,                                                                                                    +
                                                           "Plan Rows": 2609129,                                                                                                     +
                                                           "Plan Width": 12,                                                                                                         +
                                                           "Actual Startup Time": 1532.640,                                                                                          +
                                                           "Actual Total Time": 1669.170,                                                                                            +
                                                           "Actual Rows": 2656115,                                                                                                   +
                                                           "Actual Loops": 1,                                                                                                        +
                                                           "Sort Key": ["mc.movie_id"],                                                                                              +
                                                           "Sort Method": "quicksort",                                                                                               +
                                                           "Sort Space Used": 220607,                                                                                                +
                                                           "Sort Space Type": "Memory",                                                                                              +
                                                           "Shared Hit Blocks": 3,                                                                                                   +
                                                           "Shared Read Blocks": 18786,                                                                                              +
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
                                                               "Relation Name": "movie_companies",                                                                                   +
                                                               "Alias": "mc",                                                                                                        +
                                                               "Startup Cost": 0.00,                                                                                                 +
                                                               "Total Cost": 769.75,                                                                                                 +
                                                               "Plan Rows": 2609129,                                                                                                 +
                                                               "Plan Width": 12,                                                                                                     +
                                                               "Actual Startup Time": 0.012,                                                                                         +
                                                               "Actual Total Time": 558.415,                                                                                         +
                                                               "Actual Rows": 2609129,                                                                                               +
                                                               "Actual Loops": 1,                                                                                                    +
                                                               "Shared Hit Blocks": 3,                                                                                               +
                                                               "Shared Read Blocks": 18786,                                                                                          +
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
                                                       "Startup Cost": 4714.83,                                                                                                      +
                                                       "Total Cost": 4819.15,                                                                                                        +
                                                       "Plan Rows": 1343551,                                                                                                         +
                                                       "Plan Width": 14,                                                                                                             +
                                                       "Actual Startup Time": 896.892,                                                                                               +
                                                       "Actual Total Time": 978.067,                                                                                                 +
                                                       "Actual Rows": 1584015,                                                                                                       +
                                                       "Actual Loops": 1,                                                                                                            +
                                                       "Sort Key": ["mi_idx.movie_id"],                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                   +
                                                       "Sort Space Used": 126497,                                                                                                    +
                                                       "Sort Space Type": "Memory",                                                                                                  +
                                                       "Shared Hit Blocks": 2,                                                                                                       +
                                                       "Shared Read Blocks": 8451,                                                                                                   +
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
                                                           "Relation Name": "movie_info_idx",                                                                                        +
                                                           "Alias": "mi_idx",                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                     +
                                                           "Total Cost": 467.71,                                                                                                     +
                                                           "Plan Rows": 1343551,                                                                                                     +
                                                           "Plan Width": 14,                                                                                                         +
                                                           "Actual Startup Time": 0.021,                                                                                             +
                                                           "Actual Total Time": 399.802,                                                                                             +
                                                           "Actual Rows": 1343555,                                                                                                   +
                                                           "Actual Loops": 1,                                                                                                        +
                                                           "Filter": "(info < '8.5'::text)",                                                                                         +
                                                           "Rows Removed by Filter": 36480,                                                                                          +
                                                           "Shared Hit Blocks": 2,                                                                                                   +
                                                           "Shared Read Blocks": 8451,                                                                                               +
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
                                               "Startup Cost": 460.56,                                                                                                               +
                                               "Total Cost": 470.36,                                                                                                                 +
                                               "Plan Rows": 126230,                                                                                                                  +
                                               "Plan Width": 23,                                                                                                                     +
                                               "Actual Startup Time": 182.698,                                                                                                       +
                                               "Actual Total Time": 198.310,                                                                                                         +
                                               "Actual Rows": 126210,                                                                                                                +
                                               "Actual Loops": 1,                                                                                                                    +
                                               "Sort Key": ["cn.id"],                                                                                                                +
                                               "Sort Method": "quicksort",                                                                                                           +
                                               "Sort Space Used": 12077,                                                                                                             +
                                               "Sort Space Type": "Memory",                                                                                                          +
                                               "Shared Hit Blocks": 2,                                                                                                               +
                                               "Shared Read Blocks": 2992,                                                                                                           +
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
                                                   "Relation Name": "company_name",                                                                                                  +
                                                   "Alias": "cn",                                                                                                                    +
                                                   "Startup Cost": 0.00,                                                                                                             +
                                                   "Total Cost": 128.41,                                                                                                             +
                                                   "Plan Rows": 126230,                                                                                                              +
                                                   "Plan Width": 23,                                                                                                                 +
                                                   "Actual Startup Time": 22.786,                                                                                                    +
                                                   "Actual Total Time": 116.777,                                                                                                     +
                                                   "Actual Rows": 126230,                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                +
                                                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                               +
                                                   "Rows Removed by Filter": 108767,                                                                                                 +
                                                   "Shared Hit Blocks": 2,                                                                                                           +
                                                   "Shared Read Blocks": 2992,                                                                                                       +
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
                                       "Actual Startup Time": 0.037,                                                                                                                 +
                                       "Actual Total Time": 0.037,                                                                                                                   +
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
                                           "Actual Startup Time": 0.026,                                                                                                             +
                                           "Actual Total Time": 0.028,                                                                                                               +
                                           "Actual Rows": 1,                                                                                                                         +
                                           "Actual Loops": 1,                                                                                                                        +
                                           "Filter": "((info)::text = 'rating'::text)",                                                                                              +
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
                               "Startup Cost": 0.05,                                                                                                                                 +
                               "Total Cost": 0.05,                                                                                                                                   +
                               "Plan Rows": 1,                                                                                                                                       +
                               "Plan Width": 4,                                                                                                                                      +
                               "Actual Startup Time": 0.034,                                                                                                                         +
                               "Actual Total Time": 0.034,                                                                                                                           +
                               "Actual Rows": 1,                                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                                    +
                               "Sort Key": ["it1.id"],                                                                                                                               +
                               "Sort Method": "quicksort",                                                                                                                           +
                               "Sort Space Used": 25,                                                                                                                                +
                               "Sort Space Type": "Memory",                                                                                                                          +
                               "Shared Hit Blocks": 1,                                                                                                                               +
                               "Shared Read Blocks": 0,                                                                                                                              +
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
                                   "Relation Name": "info_type",                                                                                                                     +
                                   "Alias": "it1",                                                                                                                                   +
                                   "Startup Cost": 0.00,                                                                                                                             +
                                   "Total Cost": 0.05,                                                                                                                               +
                                   "Plan Rows": 1,                                                                                                                                   +
                                   "Plan Width": 4,                                                                                                                                  +
                                   "Actual Startup Time": 0.017,                                                                                                                     +
                                   "Actual Total Time": 0.028,                                                                                                                       +
                                   "Actual Rows": 1,                                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                                +
                                   "Filter": "((info)::text = 'countries'::text)",                                                                                                   +
                                   "Rows Removed by Filter": 112,                                                                                                                    +
                                   "Shared Hit Blocks": 1,                                                                                                                           +
                                   "Shared Read Blocks": 0,                                                                                                                          +
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
                       "Startup Cost": 0.03,                                                                                                                                         +
                       "Total Cost": 0.03,                                                                                                                                           +
                       "Plan Rows": 2,                                                                                                                                               +
                       "Plan Width": 4,                                                                                                                                              +
                       "Actual Startup Time": 0.022,                                                                                                                                 +
                       "Actual Total Time": 0.023,                                                                                                                                   +
                       "Actual Rows": 2,                                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                            +
                       "Sort Key": ["kt.id"],                                                                                                                                        +
                       "Sort Method": "quicksort",                                                                                                                                   +
                       "Sort Space Used": 25,                                                                                                                                        +
                       "Sort Space Type": "Memory",                                                                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                                                                       +
                       "Shared Read Blocks": 0,                                                                                                                                      +
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
                           "Relation Name": "kind_type",                                                                                                                             +
                           "Alias": "kt",                                                                                                                                            +
                           "Startup Cost": 0.00,                                                                                                                                     +
                           "Total Cost": 0.03,                                                                                                                                       +
                           "Plan Rows": 2,                                                                                                                                           +
                           "Plan Width": 4,                                                                                                                                          +
                           "Actual Startup Time": 0.014,                                                                                                                             +
                           "Actual Total Time": 0.017,                                                                                                                               +
                           "Actual Rows": 2,                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                        +
                           "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                             +
                           "Rows Removed by Filter": 5,                                                                                                                              +
                           "Shared Hit Blocks": 1,                                                                                                                                   +
                           "Shared Read Blocks": 0,                                                                                                                                  +
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
               "Startup Cost": 0.03,                                                                                                                                                 +
               "Total Cost": 0.03,                                                                                                                                                   +
               "Plan Rows": 4,                                                                                                                                                       +
               "Plan Width": 4,                                                                                                                                                      +
               "Actual Startup Time": 0.014,                                                                                                                                         +
               "Actual Total Time": 0.014,                                                                                                                                           +
               "Actual Rows": 2,                                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                                    +
               "Sort Key": ["ct.id"],                                                                                                                                                +
               "Sort Method": "quicksort",                                                                                                                                           +
               "Sort Space Used": 25,                                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                                                               +
               "Shared Read Blocks": 0,                                                                                                                                              +
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
                   "Relation Name": "company_type",                                                                                                                                  +
                   "Alias": "ct",                                                                                                                                                    +
                   "Startup Cost": 0.00,                                                                                                                                             +
                   "Total Cost": 0.03,                                                                                                                                               +
                   "Plan Rows": 4,                                                                                                                                                   +
                   "Plan Width": 4,                                                                                                                                                  +
                   "Actual Startup Time": 0.008,                                                                                                                                     +
                   "Actual Total Time": 0.009,                                                                                                                                       +
                   "Actual Rows": 4,                                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                                +
                   "Shared Hit Blocks": 1,                                                                                                                                           +
                   "Shared Read Blocks": 0,                                                                                                                                          +
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
     },                                                                                                                                                                              +
     "Planning Time": 9111.738,                                                                                                                                                      +
     "Triggers": [                                                                                                                                                                   +
     ],                                                                                                                                                                              +
     "Execution Time": 17419.810                                                                                                                                                     +
   }                                                                                                                                                                                 +
 ]
(1 row)
