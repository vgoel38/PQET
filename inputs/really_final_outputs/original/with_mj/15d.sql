                                                      QUERY PLAN                                                       
-----------------------------------------------------------------------------------------------------------------------
 [                                                                                                                    +
   {                                                                                                                  +
     "Plan": {                                                                                                        +
       "Node Type": "Aggregate",                                                                                      +
       "Strategy": "Plain",                                                                                           +
       "Partial Mode": "Simple",                                                                                      +
       "Parallel Aware": false,                                                                                       +
       "Startup Cost": 43893.19,                                                                                      +
       "Total Cost": 43893.19,                                                                                        +
       "Plan Rows": 1,                                                                                                +
       "Plan Width": 64,                                                                                              +
       "Actual Startup Time": 16634.751,                                                                              +
       "Actual Total Time": 16634.751,                                                                                +
       "Actual Rows": 1,                                                                                              +
       "Actual Loops": 1,                                                                                             +
       "Shared Hit Blocks": 21,                                                                                       +
       "Shared Read Blocks": 251253,                                                                                  +
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
           "Startup Cost": 43872.20,                                                                                  +
           "Total Cost": 43893.13,                                                                                    +
           "Plan Rows": 414,                                                                                          +
           "Plan Width": 38,                                                                                          +
           "Actual Startup Time": 16558.983,                                                                          +
           "Actual Total Time": 16602.721,                                                                            +
           "Actual Rows": 11347,                                                                                      +
           "Actual Loops": 1,                                                                                         +
           "Inner Unique": true,                                                                                      +
           "Merge Cond": "(mk.keyword_id = k.id)",                                                                    +
           "Shared Hit Blocks": 21,                                                                                   +
           "Shared Read Blocks": 251253,                                                                              +
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
               "Startup Cost": 43478.28,                                                                              +
               "Total Cost": 43478.31,                                                                                +
               "Plan Rows": 414,                                                                                      +
               "Plan Width": 42,                                                                                      +
               "Actual Startup Time": 16451.076,                                                                      +
               "Actual Total Time": 16453.522,                                                                        +
               "Actual Rows": 11347,                                                                                  +
               "Actual Loops": 1,                                                                                     +
               "Sort Key": ["mk.keyword_id"],                                                                         +
               "Sort Method": "quicksort",                                                                            +
               "Sort Space Used": 1617,                                                                               +
               "Sort Space Type": "Memory",                                                                           +
               "Shared Hit Blocks": 19,                                                                               +
               "Shared Read Blocks": 250306,                                                                          +
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
                   "Startup Cost": 42448.55,                                                                          +
                   "Total Cost": 43477.72,                                                                            +
                   "Plan Rows": 414,                                                                                  +
                   "Plan Width": 42,                                                                                  +
                   "Actual Startup Time": 15149.151,                                                                  +
                   "Actual Total Time": 16446.795,                                                                    +
                   "Actual Rows": 11347,                                                                              +
                   "Actual Loops": 1,                                                                                 +
                   "Inner Unique": false,                                                                             +
                   "Merge Cond": "(t.id = at.movie_id)",                                                              +
                   "Shared Hit Blocks": 15,                                                                           +
                   "Shared Read Blocks": 250306,                                                                      +
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
                       "Node Type": "Merge Join",                                                                     +
                       "Parent Relationship": "Outer",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Join Type": "Inner",                                                                          +
                       "Startup Cost": 41192.98,                                                                      +
                       "Total Cost": 42166.88,                                                                        +
                       "Plan Rows": 1036,                                                                             +
                       "Plan Width": 37,                                                                              +
                       "Actual Startup Time": 14772.370,                                                              +
                       "Actual Total Time": 15965.618,                                                                +
                       "Actual Rows": 25564,                                                                          +
                       "Actual Loops": 1,                                                                             +
                       "Inner Unique": false,                                                                         +
                       "Merge Cond": "(t.id = mk.movie_id)",                                                          +
                       "Shared Hit Blocks": 13,                                                                       +
                       "Shared Read Blocks": 244116,                                                                  +
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
                           "Node Type": "Merge Join",                                                                 +
                           "Parent Relationship": "Outer",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Join Type": "Inner",                                                                      +
                           "Startup Cost": 24582.06,                                                                  +
                           "Total Cost": 24853.47,                                                                    +
                           "Plan Rows": 88,                                                                           +
                           "Plan Width": 29,                                                                          +
                           "Actual Startup Time": 12654.431,                                                          +
                           "Actual Total Time": 13126.591,                                                            +
                           "Actual Rows": 9857,                                                                       +
                           "Actual Loops": 1,                                                                         +
                           "Inner Unique": true,                                                                      +
                           "Merge Cond": "(mi.movie_id = t.id)",                                                      +
                           "Shared Hit Blocks": 10,                                                                   +
                           "Shared Read Blocks": 219665,                                                              +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0,                                                                  +
                           "Plans": [                                                                                 +
                             {                                                                                        +
                               "Node Type": "Sort",                                                                   +
                               "Parent Relationship": "Outer",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Startup Cost": 17449.56,                                                              +
                               "Total Cost": 17449.57,                                                                +
                               "Plan Rows": 127,                                                                      +
                               "Plan Width": 8,                                                                       +
                               "Actual Startup Time": 10460.370,                                                      +
                               "Actual Total Time": 10461.790,                                                        +
                               "Actual Rows": 9874,                                                                   +
                               "Actual Loops": 1,                                                                     +
                               "Sort Key": ["mc.movie_id"],                                                           +
                               "Sort Method": "quicksort",                                                            +
                               "Sort Space Used": 847,                                                                +
                               "Sort Space Type": "Memory",                                                           +
                               "Shared Hit Blocks": 9,                                                                +
                               "Shared Read Blocks": 183668,                                                          +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Merge Join",                                                         +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Join Type": "Inner",                                                              +
                                   "Startup Cost": 17449.39,                                                          +
                                   "Total Cost": 17449.42,                                                            +
                                   "Plan Rows": 127,                                                                  +
                                   "Plan Width": 8,                                                                   +
                                   "Actual Startup Time": 10454.655,                                                  +
                                   "Actual Total Time": 10457.194,                                                    +
                                   "Actual Rows": 9874,                                                               +
                                   "Actual Loops": 1,                                                                 +
                                   "Inner Unique": true,                                                              +
                                   "Merge Cond": "(mc.company_type_id = ct.id)",                                      +
                                   "Shared Hit Blocks": 9,                                                            +
                                   "Shared Read Blocks": 183668,                                                      +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0,                                                          +
                                   "Plans": [                                                                         +
                                     {                                                                                +
                                       "Node Type": "Sort",                                                           +
                                       "Parent Relationship": "Outer",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Startup Cost": 17449.36,                                                      +
                                       "Total Cost": 17449.37,                                                        +
                                       "Plan Rows": 127,                                                              +
                                       "Plan Width": 12,                                                              +
                                       "Actual Startup Time": 10454.632,                                              +
                                       "Actual Total Time": 10455.095,                                                +
                                       "Actual Rows": 9874,                                                           +
                                       "Actual Loops": 1,                                                             +
                                       "Sort Key": ["mc.company_type_id"],                                            +
                                       "Sort Method": "quicksort",                                                    +
                                       "Sort Space Used": 847,                                                        +
                                       "Sort Space Type": "Memory",                                                   +
                                       "Shared Hit Blocks": 8,                                                        +
                                       "Shared Read Blocks": 183668,                                                  +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0,                                                      +
                                       "Plans": [                                                                     +
                                         {                                                                            +
                                           "Node Type": "Merge Join",                                                 +
                                           "Parent Relationship": "Outer",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Join Type": "Inner",                                                      +
                                           "Startup Cost": 17435.98,                                                  +
                                           "Total Cost": 17449.22,                                                    +
                                           "Plan Rows": 127,                                                          +
                                           "Plan Width": 12,                                                          +
                                           "Actual Startup Time": 10430.084,                                          +
                                           "Actual Total Time": 10452.506,                                            +
                                           "Actual Rows": 9874,                                                       +
                                           "Actual Loops": 1,                                                         +
                                           "Inner Unique": true,                                                      +
                                           "Merge Cond": "(mc.company_id = cn.id)",                                   +
                                           "Shared Hit Blocks": 8,                                                    +
                                           "Shared Read Blocks": 183668,                                              +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0,                                                  +
                                           "Plans": [                                                                 +
                                             {                                                                        +
                                               "Node Type": "Sort",                                                   +
                                               "Parent Relationship": "Outer",                                        +
                                               "Parallel Aware": false,                                               +
                                               "Startup Cost": 17091.88,                                              +
                                               "Total Cost": 17091.90,                                                +
                                               "Plan Rows": 351,                                                      +
                                               "Plan Width": 16,                                                      +
                                               "Actual Startup Time": 10256.484,                                      +
                                               "Actual Total Time": 10258.052,                                        +
                                               "Actual Rows": 14401,                                                  +
                                               "Actual Loops": 1,                                                     +
                                               "Sort Key": ["mc.company_id"],                                         +
                                               "Sort Method": "quicksort",                                            +
                                               "Sort Space Used": 1060,                                               +
                                               "Sort Space Type": "Memory",                                           +
                                               "Shared Hit Blocks": 6,                                                +
                                               "Shared Read Blocks": 180676,                                          +
                                               "Shared Dirtied Blocks": 0,                                            +
                                               "Shared Written Blocks": 0,                                            +
                                               "Local Hit Blocks": 0,                                                 +
                                               "Local Read Blocks": 0,                                                +
                                               "Local Dirtied Blocks": 0,                                             +
                                               "Local Written Blocks": 0,                                             +
                                               "Temp Read Blocks": 0,                                                 +
                                               "Temp Written Blocks": 0,                                              +
                                               "Plans": [                                                             +
                                                 {                                                                    +
                                                   "Node Type": "Merge Join",                                         +
                                                   "Parent Relationship": "Outer",                                    +
                                                   "Parallel Aware": false,                                           +
                                                   "Join Type": "Inner",                                              +
                                                   "Startup Cost": 16686.23,                                          +
                                                   "Total Cost": 17091.42,                                            +
                                                   "Plan Rows": 351,                                                  +
                                                   "Plan Width": 16,                                                  +
                                                   "Actual Startup Time": 9882.012,                                   +
                                                   "Actual Total Time": 10251.254,                                    +
                                                   "Actual Rows": 14401,                                              +
                                                   "Actual Loops": 1,                                                 +
                                                   "Inner Unique": false,                                             +
                                                   "Merge Cond": "(mi.movie_id = mc.movie_id)",                       +
                                                   "Shared Hit Blocks": 6,                                            +
                                                   "Shared Read Blocks": 180676,                                      +
                                                   "Shared Dirtied Blocks": 0,                                        +
                                                   "Shared Written Blocks": 0,                                        +
                                                   "Local Hit Blocks": 0,                                             +
                                                   "Local Read Blocks": 0,                                            +
                                                   "Local Dirtied Blocks": 0,                                         +
                                                   "Local Written Blocks": 0,                                         +
                                                   "Temp Read Blocks": 0,                                             +
                                                   "Temp Written Blocks": 0,                                          +
                                                   "Plans": [                                                         +
                                                     {                                                                +
                                                       "Node Type": "Sort",                                           +
                                                       "Parent Relationship": "Outer",                                +
                                                       "Parallel Aware": false,                                       +
                                                       "Startup Cost": 7280.78,                                       +
                                                       "Total Cost": 7280.79,                                         +
                                                       "Plan Rows": 98,                                               +
                                                       "Plan Width": 4,                                               +
                                                       "Actual Startup Time": 8363.366,                               +
                                                       "Actual Total Time": 8363.994,                                 +
                                                       "Actual Rows": 10679,                                          +
                                                       "Actual Loops": 1,                                             +
                                                       "Sort Key": ["mi.movie_id"],                                   +
                                                       "Sort Method": "quicksort",                                    +
                                                       "Sort Space Used": 885,                                        +
                                                       "Sort Space Type": "Memory",                                   +
                                                       "Shared Hit Blocks": 3,                                        +
                                                       "Shared Read Blocks": 161890,                                  +
                                                       "Shared Dirtied Blocks": 0,                                    +
                                                       "Shared Written Blocks": 0,                                    +
                                                       "Local Hit Blocks": 0,                                         +
                                                       "Local Read Blocks": 0,                                        +
                                                       "Local Dirtied Blocks": 0,                                     +
                                                       "Local Written Blocks": 0,                                     +
                                                       "Temp Read Blocks": 0,                                         +
                                                       "Temp Written Blocks": 0,                                      +
                                                       "Plans": [                                                     +
                                                         {                                                            +
                                                           "Node Type": "Merge Join",                                 +
                                                           "Parent Relationship": "Outer",                            +
                                                           "Parallel Aware": false,                                   +
                                                           "Join Type": "Inner",                                      +
                                                           "Startup Cost": 7278.94,                                   +
                                                           "Total Cost": 7280.68,                                     +
                                                           "Plan Rows": 98,                                           +
                                                           "Plan Width": 4,                                           +
                                                           "Actual Startup Time": 8347.730,                           +
                                                           "Actual Total Time": 8355.004,                             +
                                                           "Actual Rows": 10679,                                      +
                                                           "Actual Loops": 1,                                         +
                                                           "Inner Unique": false,                                     +
                                                           "Merge Cond": "(it1.id = mi.info_type_id)",                +
                                                           "Shared Hit Blocks": 3,                                    +
                                                           "Shared Read Blocks": 161890,                              +
                                                           "Shared Dirtied Blocks": 0,                                +
                                                           "Shared Written Blocks": 0,                                +
                                                           "Local Hit Blocks": 0,                                     +
                                                           "Local Read Blocks": 0,                                    +
                                                           "Local Dirtied Blocks": 0,                                 +
                                                           "Local Written Blocks": 0,                                 +
                                                           "Temp Read Blocks": 0,                                     +
                                                           "Temp Written Blocks": 0,                                  +
                                                           "Plans": [                                                 +
                                                             {                                                        +
                                                               "Node Type": "Sort",                                   +
                                                               "Parent Relationship": "Outer",                        +
                                                               "Parallel Aware": false,                               +
                                                               "Startup Cost": 0.05,                                  +
                                                               "Total Cost": 0.05,                                    +
                                                               "Plan Rows": 1,                                        +
                                                               "Plan Width": 4,                                       +
                                                               "Actual Startup Time": 0.100,                          +
                                                               "Actual Total Time": 0.101,                            +
                                                               "Actual Rows": 1,                                      +
                                                               "Actual Loops": 1,                                     +
                                                               "Sort Key": ["it1.id"],                                +
                                                               "Sort Method": "quicksort",                            +
                                                               "Sort Space Used": 25,                                 +
                                                               "Sort Space Type": "Memory",                           +
                                                               "Shared Hit Blocks": 1,                                +
                                                               "Shared Read Blocks": 0,                               +
                                                               "Shared Dirtied Blocks": 0,                            +
                                                               "Shared Written Blocks": 0,                            +
                                                               "Local Hit Blocks": 0,                                 +
                                                               "Local Read Blocks": 0,                                +
                                                               "Local Dirtied Blocks": 0,                             +
                                                               "Local Written Blocks": 0,                             +
                                                               "Temp Read Blocks": 0,                                 +
                                                               "Temp Written Blocks": 0,                              +
                                                               "Plans": [                                             +
                                                                 {                                                    +
                                                                   "Node Type": "Seq Scan",                           +
                                                                   "Parent Relationship": "Outer",                    +
                                                                   "Parallel Aware": false,                           +
                                                                   "Relation Name": "info_type",                      +
                                                                   "Alias": "it1",                                    +
                                                                   "Startup Cost": 0.00,                              +
                                                                   "Total Cost": 0.05,                                +
                                                                   "Plan Rows": 1,                                    +
                                                                   "Plan Width": 4,                                   +
                                                                   "Actual Startup Time": 0.048,                      +
                                                                   "Actual Total Time": 0.082,                        +
                                                                   "Actual Rows": 1,                                  +
                                                                   "Actual Loops": 1,                                 +
                                                                   "Filter": "((info)::text = 'release dates'::text)",+
                                                                   "Rows Removed by Filter": 112,                     +
                                                                   "Shared Hit Blocks": 1,                            +
                                                                   "Shared Read Blocks": 0,                           +
                                                                   "Shared Dirtied Blocks": 0,                        +
                                                                   "Shared Written Blocks": 0,                        +
                                                                   "Local Hit Blocks": 0,                             +
                                                                   "Local Read Blocks": 0,                            +
                                                                   "Local Dirtied Blocks": 0,                         +
                                                                   "Local Written Blocks": 0,                         +
                                                                   "Temp Read Blocks": 0,                             +
                                                                   "Temp Written Blocks": 0                           +
                                                                 }                                                    +
                                                               ]                                                      +
                                                             },                                                       +
                                                             {                                                        +
                                                               "Node Type": "Sort",                                   +
                                                               "Parent Relationship": "Inner",                        +
                                                               "Parallel Aware": false,                               +
                                                               "Startup Cost": 7278.89,                               +
                                                               "Total Cost": 7279.76,                                 +
                                                               "Plan Rows": 11124,                                    +
                                                               "Plan Width": 8,                                       +
                                                               "Actual Startup Time": 8347.597,                       +
                                                               "Actual Total Time": 8349.183,                         +
                                                               "Actual Rows": 10714,                                  +
                                                               "Actual Loops": 1,                                     +
                                                               "Sort Key": ["mi.info_type_id"],                       +
                                                               "Sort Method": "quicksort",                            +
                                                               "Sort Space Used": 891,                                +
                                                               "Sort Space Type": "Memory",                           +
                                                               "Shared Hit Blocks": 2,                                +
                                                               "Shared Read Blocks": 161890,                          +
                                                               "Shared Dirtied Blocks": 0,                            +
                                                               "Shared Written Blocks": 0,                            +
                                                               "Local Hit Blocks": 0,                                 +
                                                               "Local Read Blocks": 0,                                +
                                                               "Local Dirtied Blocks": 0,                             +
                                                               "Local Written Blocks": 0,                             +
                                                               "Temp Read Blocks": 0,                                 +
                                                               "Temp Written Blocks": 0,                              +
                                                               "Plans": [                                             +
                                                                 {                                                    +
                                                                   "Node Type": "Seq Scan",                           +
                                                                   "Parent Relationship": "Outer",                    +
                                                                   "Parallel Aware": false,                           +
                                                                   "Relation Name": "movie_info",                     +
                                                                   "Alias": "mi",                                     +
                                                                   "Startup Cost": 0.00,                              +
                                                                   "Total Cost": 7255.68,                             +
                                                                   "Plan Rows": 11124,                                +
                                                                   "Plan Width": 8,                                   +
                                                                   "Actual Startup Time": 126.627,                    +
                                                                   "Actual Total Time": 8341.403,                     +
                                                                   "Actual Rows": 10810,                              +
                                                                   "Actual Loops": 1,                                 +
                                                                   "Filter": "(note ~~ '%internet%'::text)",          +
                                                                   "Rows Removed by Filter": 14824910,                +
                                                                   "Shared Hit Blocks": 2,                            +
                                                                   "Shared Read Blocks": 161890,                      +
                                                                   "Shared Dirtied Blocks": 0,                        +
                                                                   "Shared Written Blocks": 0,                        +
                                                                   "Local Hit Blocks": 0,                             +
                                                                   "Local Read Blocks": 0,                            +
                                                                   "Local Dirtied Blocks": 0,                         +
                                                                   "Local Written Blocks": 0,                         +
                                                                   "Temp Read Blocks": 0,                             +
                                                                   "Temp Written Blocks": 0                           +
                                                                 }                                                    +
                                                               ]                                                      +
                                                             }                                                        +
                                                           ]                                                          +
                                                         }                                                            +
                                                       ]                                                              +
                                                     },                                                               +
                                                     {                                                                +
                                                       "Node Type": "Sort",                                           +
                                                       "Parent Relationship": "Inner",                                +
                                                       "Parallel Aware": false,                                       +
                                                       "Startup Cost": 9405.45,                                       +
                                                       "Total Cost": 9608.03,                                         +
                                                       "Plan Rows": 2609129,                                          +
                                                       "Plan Width": 12,                                              +
                                                       "Actual Startup Time": 1518.634,                               +
                                                       "Actual Total Time": 1638.621,                                 +
                                                       "Actual Rows": 2609214,                                        +
                                                       "Actual Loops": 1,                                             +
                                                       "Sort Key": ["mc.movie_id"],                                   +
                                                       "Sort Method": "quicksort",                                    +
                                                       "Sort Space Used": 220607,                                     +
                                                       "Sort Space Type": "Memory",                                   +
                                                       "Shared Hit Blocks": 3,                                        +
                                                       "Shared Read Blocks": 18786,                                   +
                                                       "Shared Dirtied Blocks": 0,                                    +
                                                       "Shared Written Blocks": 0,                                    +
                                                       "Local Hit Blocks": 0,                                         +
                                                       "Local Read Blocks": 0,                                        +
                                                       "Local Dirtied Blocks": 0,                                     +
                                                       "Local Written Blocks": 0,                                     +
                                                       "Temp Read Blocks": 0,                                         +
                                                       "Temp Written Blocks": 0,                                      +
                                                       "Plans": [                                                     +
                                                         {                                                            +
                                                           "Node Type": "Seq Scan",                                   +
                                                           "Parent Relationship": "Outer",                            +
                                                           "Parallel Aware": false,                                   +
                                                           "Relation Name": "movie_companies",                        +
                                                           "Alias": "mc",                                             +
                                                           "Startup Cost": 0.00,                                      +
                                                           "Total Cost": 769.75,                                      +
                                                           "Plan Rows": 2609129,                                      +
                                                           "Plan Width": 12,                                          +
                                                           "Actual Startup Time": 0.015,                              +
                                                           "Actual Total Time": 550.641,                              +
                                                           "Actual Rows": 2609129,                                    +
                                                           "Actual Loops": 1,                                         +
                                                           "Shared Hit Blocks": 3,                                    +
                                                           "Shared Read Blocks": 18786,                               +
                                                           "Shared Dirtied Blocks": 0,                                +
                                                           "Shared Written Blocks": 0,                                +
                                                           "Local Hit Blocks": 0,                                     +
                                                           "Local Read Blocks": 0,                                    +
                                                           "Local Dirtied Blocks": 0,                                 +
                                                           "Local Written Blocks": 0,                                 +
                                                           "Temp Read Blocks": 0,                                     +
                                                           "Temp Written Blocks": 0                                   +
                                                         }                                                            +
                                                       ]                                                              +
                                                     }                                                                +
                                                   ]                                                                  +
                                                 }                                                                    +
                                               ]                                                                      +
                                             },                                                                       +
                                             {                                                                        +
                                               "Node Type": "Sort",                                                   +
                                               "Parent Relationship": "Inner",                                        +
                                               "Parallel Aware": false,                                               +
                                               "Startup Cost": 344.10,                                                +
                                               "Total Cost": 350.69,                                                  +
                                               "Plan Rows": 84843,                                                    +
                                               "Plan Width": 4,                                                       +
                                               "Actual Startup Time": 173.593,                                        +
                                               "Actual Total Time": 181.624,                                          +
                                               "Actual Rows": 84843,                                                  +
                                               "Actual Loops": 1,                                                     +
                                               "Sort Key": ["cn.id"],                                                 +
                                               "Sort Method": "quicksort",                                            +
                                               "Sort Space Used": 7050,                                               +
                                               "Sort Space Type": "Memory",                                           +
                                               "Shared Hit Blocks": 2,                                                +
                                               "Shared Read Blocks": 2992,                                            +
                                               "Shared Dirtied Blocks": 0,                                            +
                                               "Shared Written Blocks": 0,                                            +
                                               "Local Hit Blocks": 0,                                                 +
                                               "Local Read Blocks": 0,                                                +
                                               "Local Dirtied Blocks": 0,                                             +
                                               "Local Written Blocks": 0,                                             +
                                               "Temp Read Blocks": 0,                                                 +
                                               "Temp Written Blocks": 0,                                              +
                                               "Plans": [                                                             +
                                                 {                                                                    +
                                                   "Node Type": "Seq Scan",                                           +
                                                   "Parent Relationship": "Outer",                                    +
                                                   "Parallel Aware": false,                                           +
                                                   "Relation Name": "company_name",                                   +
                                                   "Alias": "cn",                                                     +
                                                   "Startup Cost": 0.00,                                              +
                                                   "Total Cost": 128.41,                                              +
                                                   "Plan Rows": 84843,                                                +
                                                   "Plan Width": 4,                                                   +
                                                   "Actual Startup Time": 14.041,                                     +
                                                   "Actual Total Time": 132.716,                                      +
                                                   "Actual Rows": 84843,                                              +
                                                   "Actual Loops": 1,                                                 +
                                                   "Filter": "((country_code)::text = '[us]'::text)",                 +
                                                   "Rows Removed by Filter": 150154,                                  +
                                                   "Shared Hit Blocks": 2,                                            +
                                                   "Shared Read Blocks": 2992,                                        +
                                                   "Shared Dirtied Blocks": 0,                                        +
                                                   "Shared Written Blocks": 0,                                        +
                                                   "Local Hit Blocks": 0,                                             +
                                                   "Local Read Blocks": 0,                                            +
                                                   "Local Dirtied Blocks": 0,                                         +
                                                   "Local Written Blocks": 0,                                         +
                                                   "Temp Read Blocks": 0,                                             +
                                                   "Temp Written Blocks": 0                                           +
                                                 }                                                                    +
                                               ]                                                                      +
                                             }                                                                        +
                                           ]                                                                          +
                                         }                                                                            +
                                       ]                                                                              +
                                     },                                                                               +
                                     {                                                                                +
                                       "Node Type": "Sort",                                                           +
                                       "Parent Relationship": "Inner",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Startup Cost": 0.03,                                                          +
                                       "Total Cost": 0.03,                                                            +
                                       "Plan Rows": 4,                                                                +
                                       "Plan Width": 4,                                                               +
                                       "Actual Startup Time": 0.018,                                                  +
                                       "Actual Total Time": 0.018,                                                    +
                                       "Actual Rows": 2,                                                              +
                                       "Actual Loops": 1,                                                             +
                                       "Sort Key": ["ct.id"],                                                         +
                                       "Sort Method": "quicksort",                                                    +
                                       "Sort Space Used": 25,                                                         +
                                       "Sort Space Type": "Memory",                                                   +
                                       "Shared Hit Blocks": 1,                                                        +
                                       "Shared Read Blocks": 0,                                                       +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0,                                                      +
                                       "Plans": [                                                                     +
                                         {                                                                            +
                                           "Node Type": "Seq Scan",                                                   +
                                           "Parent Relationship": "Outer",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Relation Name": "company_type",                                           +
                                           "Alias": "ct",                                                             +
                                           "Startup Cost": 0.00,                                                      +
                                           "Total Cost": 0.03,                                                        +
                                           "Plan Rows": 4,                                                            +
                                           "Plan Width": 4,                                                           +
                                           "Actual Startup Time": 0.008,                                              +
                                           "Actual Total Time": 0.009,                                                +
                                           "Actual Rows": 4,                                                          +
                                           "Actual Loops": 1,                                                         +
                                           "Shared Hit Blocks": 1,                                                    +
                                           "Shared Read Blocks": 0,                                                   +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0                                                   +
                                         }                                                                            +
                                       ]                                                                              +
                                     }                                                                                +
                                   ]                                                                                  +
                                 }                                                                                    +
                               ]                                                                                      +
                             },                                                                                       +
                             {                                                                                        +
                               "Node Type": "Sort",                                                                   +
                               "Parent Relationship": "Inner",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Startup Cost": 7132.50,                                                               +
                               "Total Cost": 7268.30,                                                                 +
                               "Plan Rows": 1749033,                                                                  +
                               "Plan Width": 21,                                                                      +
                               "Actual Startup Time": 2194.048,                                                       +
                               "Actual Total Time": 2417.964,                                                         +
                               "Actual Rows": 1748408,                                                                +
                               "Actual Loops": 1,                                                                     +
                               "Sort Key": ["t.id"],                                                                  +
                               "Sort Method": "quicksort",                                                            +
                               "Sort Space Used": 171002,                                                             +
                               "Sort Space Type": "Memory",                                                           +
                               "Shared Hit Blocks": 1,                                                                +
                               "Shared Read Blocks": 35997,                                                           +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Seq Scan",                                                           +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Relation Name": "title",                                                          +
                                   "Alias": "t",                                                                      +
                                   "Startup Cost": 0.00,                                                              +
                                   "Total Cost": 1500.26,                                                             +
                                   "Plan Rows": 1749033,                                                              +
                                   "Plan Width": 21,                                                                  +
                                   "Actual Startup Time": 10.416,                                                     +
                                   "Actual Total Time": 1250.895,                                                     +
                                   "Actual Rows": 1749032,                                                            +
                                   "Actual Loops": 1,                                                                 +
                                   "Filter": "(production_year > 1990)",                                              +
                                   "Rows Removed by Filter": 779280,                                                  +
                                   "Shared Hit Blocks": 1,                                                            +
                                   "Shared Read Blocks": 35997,                                                       +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0                                                           +
                                 }                                                                                    +
                               ]                                                                                      +
                             }                                                                                        +
                           ]                                                                                          +
                         },                                                                                           +
                         {                                                                                            +
                           "Node Type": "Sort",                                                                       +
                           "Parent Relationship": "Inner",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Startup Cost": 16610.92,                                                                  +
                           "Total Cost": 16962.16,                                                                    +
                           "Plan Rows": 4523930,                                                                      +
                           "Plan Width": 8,                                                                           +
                           "Actual Startup Time": 2117.929,                                                           +
                           "Actual Total Time": 2385.343,                                                             +
                           "Actual Rows": 4538097,                                                                    +
                           "Actual Loops": 1,                                                                         +
                           "Sort Key": ["mk.movie_id"],                                                               +
                           "Sort Method": "quicksort",                                                                +
                           "Sort Space Used": 408668,                                                                 +
                           "Sort Space Type": "Memory",                                                               +
                           "Shared Hit Blocks": 3,                                                                    +
                           "Shared Read Blocks": 24451,                                                               +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0,                                                                  +
                           "Plans": [                                                                                 +
                             {                                                                                        +
                               "Node Type": "Seq Scan",                                                               +
                               "Parent Relationship": "Outer",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Relation Name": "movie_keyword",                                                      +
                               "Alias": "mk",                                                                         +
                               "Startup Cost": 0.00,                                                                  +
                               "Total Cost": 1079.84,                                                                 +
                               "Plan Rows": 4523930,                                                                  +
                               "Plan Width": 8,                                                                       +
                               "Actual Startup Time": 0.014,                                                          +
                               "Actual Total Time": 748.312,                                                          +
                               "Actual Rows": 4523930,                                                                +
                               "Actual Loops": 1,                                                                     +
                               "Shared Hit Blocks": 3,                                                                +
                               "Shared Read Blocks": 24451,                                                           +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0                                                               +
                             }                                                                                        +
                           ]                                                                                          +
                         }                                                                                            +
                       ]                                                                                              +
                     },                                                                                               +
                     {                                                                                                +
                       "Node Type": "Sort",                                                                           +
                       "Parent Relationship": "Inner",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Startup Cost": 1255.56,                                                                       +
                       "Total Cost": 1283.62,                                                                         +
                       "Plan Rows": 361472,                                                                           +
                       "Plan Width": 25,                                                                              +
                       "Actual Startup Time": 373.754,                                                                +
                       "Actual Total Time": 423.752,                                                                  +
                       "Actual Rows": 371412,                                                                         +
                       "Actual Loops": 1,                                                                             +
                       "Sort Key": ["at.movie_id"],                                                                   +
                       "Sort Method": "quicksort",                                                                    +
                       "Sort Space Used": 39602,                                                                      +
                       "Sort Space Type": "Memory",                                                                   +
                       "Shared Hit Blocks": 2,                                                                        +
                       "Shared Read Blocks": 6190,                                                                    +
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
                           "Relation Name": "aka_title",                                                              +
                           "Alias": "at",                                                                             +
                           "Startup Cost": 0.00,                                                                      +
                           "Total Cost": 219.22,                                                                      +
                           "Plan Rows": 361472,                                                                       +
                           "Plan Width": 25,                                                                          +
                           "Actual Startup Time": 5.144,                                                              +
                           "Actual Total Time": 185.728,                                                              +
                           "Actual Rows": 361472,                                                                     +
                           "Actual Loops": 1,                                                                         +
                           "Shared Hit Blocks": 2,                                                                    +
                           "Shared Read Blocks": 6190,                                                                +
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
               "Startup Cost": 393.92,                                                                                +
               "Total Cost": 404.34,                                                                                  +
               "Plan Rows": 134170,                                                                                   +
               "Plan Width": 4,                                                                                       +
               "Actual Startup Time": 107.898,                                                                        +
               "Actual Total Time": 122.101,                                                                          +
               "Actual Rows": 133880,                                                                                 +
               "Actual Loops": 1,                                                                                     +
               "Sort Key": ["k.id"],                                                                                  +
               "Sort Method": "quicksort",                                                                            +
               "Sort Space Used": 12434,                                                                              +
               "Sort Space Type": "Memory",                                                                           +
               "Shared Hit Blocks": 2,                                                                                +
               "Shared Read Blocks": 947,                                                                             +
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
                   "Relation Name": "keyword",                                                                        +
                   "Alias": "k",                                                                                      +
                   "Startup Cost": 0.00,                                                                              +
                   "Total Cost": 39.04,                                                                               +
                   "Plan Rows": 134170,                                                                               +
                   "Plan Width": 4,                                                                                   +
                   "Actual Startup Time": 17.545,                                                                     +
                   "Actual Total Time": 50.418,                                                                       +
                   "Actual Rows": 134170,                                                                             +
                   "Actual Loops": 1,                                                                                 +
                   "Shared Hit Blocks": 2,                                                                            +
                   "Shared Read Blocks": 947,                                                                         +
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
         }                                                                                                            +
       ]                                                                                                              +
     },                                                                                                               +
     "Planning Time": 9192.760,                                                                                       +
     "Triggers": [                                                                                                    +
     ],                                                                                                               +
     "Execution Time": 16690.942                                                                                      +
   }                                                                                                                  +
 ]
(1 row)

