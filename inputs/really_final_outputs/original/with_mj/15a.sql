                                                                 QUERY PLAN                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                         +
   {                                                                                                                                       +
     "Plan": {                                                                                                                             +
       "Node Type": "Aggregate",                                                                                                           +
       "Strategy": "Plain",                                                                                                                +
       "Partial Mode": "Simple",                                                                                                           +
       "Parallel Aware": false,                                                                                                            +
       "Startup Cost": 35108.77,                                                                                                           +
       "Total Cost": 35108.77,                                                                                                             +
       "Plan Rows": 1,                                                                                                                     +
       "Plan Width": 64,                                                                                                                   +
       "Actual Startup Time": 15385.873,                                                                                                   +
       "Actual Total Time": 15385.874,                                                                                                     +
       "Actual Rows": 1,                                                                                                                   +
       "Actual Loops": 1,                                                                                                                  +
       "Shared Hit Blocks": 21,                                                                                                            +
       "Shared Read Blocks": 251253,                                                                                                       +
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
           "Startup Cost": 35095.60,                                                                                                       +
           "Total Cost": 35108.77,                                                                                                         +
           "Plan Rows": 8,                                                                                                                 +
           "Plan Width": 59,                                                                                                               +
           "Actual Startup Time": 15380.399,                                                                                               +
           "Actual Total Time": 15385.736,                                                                                                 +
           "Actual Rows": 328,                                                                                                             +
           "Actual Loops": 1,                                                                                                              +
           "Inner Unique": true,                                                                                                           +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                        +
           "Shared Hit Blocks": 21,                                                                                                        +
           "Shared Read Blocks": 251253,                                                                                                   +
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
               "Startup Cost": 34751.49,                                                                                                   +
               "Total Cost": 34751.49,                                                                                                     +
               "Plan Rows": 8,                                                                                                             +
               "Plan Width": 63,                                                                                                           +
               "Actual Startup Time": 15203.750,                                                                                           +
               "Actual Total Time": 15203.786,                                                                                             +
               "Actual Rows": 354,                                                                                                         +
               "Actual Loops": 1,                                                                                                          +
               "Sort Key": ["mc.company_id"],                                                                                              +
               "Sort Method": "quicksort",                                                                                                 +
               "Sort Space Used": 56,                                                                                                      +
               "Sort Space Type": "Memory",                                                                                                +
               "Shared Hit Blocks": 19,                                                                                                    +
               "Shared Read Blocks": 248261,                                                                                               +
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
                   "Startup Cost": 34751.49,                                                                                               +
                   "Total Cost": 34751.49,                                                                                                 +
                   "Plan Rows": 8,                                                                                                         +
                   "Plan Width": 63,                                                                                                       +
                   "Actual Startup Time": 15203.503,                                                                                       +
                   "Actual Total Time": 15203.598,                                                                                         +
                   "Actual Rows": 354,                                                                                                     +
                   "Actual Loops": 1,                                                                                                      +
                   "Inner Unique": true,                                                                                                   +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                           +
                   "Shared Hit Blocks": 15,                                                                                                +
                   "Shared Read Blocks": 248261,                                                                                           +
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
                       "Startup Cost": 34751.45,                                                                                           +
                       "Total Cost": 34751.45,                                                                                             +
                       "Plan Rows": 8,                                                                                                     +
                       "Plan Width": 67,                                                                                                   +
                       "Actual Startup Time": 15203.492,                                                                                   +
                       "Actual Total Time": 15203.508,                                                                                     +
                       "Actual Rows": 354,                                                                                                 +
                       "Actual Loops": 1,                                                                                                  +
                       "Sort Key": ["mc.company_type_id"],                                                                                 +
                       "Sort Method": "quicksort",                                                                                         +
                       "Sort Space Used": 60,                                                                                              +
                       "Sort Space Type": "Memory",                                                                                        +
                       "Shared Hit Blocks": 14,                                                                                            +
                       "Shared Read Blocks": 248261,                                                                                       +
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
                           "Startup Cost": 34751.45,                                                                                       +
                           "Total Cost": 34751.45,                                                                                         +
                           "Plan Rows": 8,                                                                                                 +
                           "Plan Width": 67,                                                                                               +
                           "Actual Startup Time": 15203.300,                                                                               +
                           "Actual Total Time": 15203.404,                                                                                 +
                           "Actual Rows": 354,                                                                                             +
                           "Actual Loops": 1,                                                                                              +
                           "Inner Unique": true,                                                                                           +
                           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                     +
                           "Shared Hit Blocks": 14,                                                                                        +
                           "Shared Read Blocks": 248261,                                                                                   +
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
                               "Node Type": "Sort",                                                                                        +
                               "Parent Relationship": "Outer",                                                                             +
                               "Parallel Aware": false,                                                                                    +
                               "Startup Cost": 34751.40,                                                                                   +
                               "Total Cost": 34751.40,                                                                                     +
                               "Plan Rows": 15,                                                                                            +
                               "Plan Width": 71,                                                                                           +
                               "Actual Startup Time": 15203.267,                                                                           +
                               "Actual Total Time": 15203.285,                                                                             +
                               "Actual Rows": 354,                                                                                         +
                               "Actual Loops": 1,                                                                                          +
                               "Sort Key": ["mi.info_type_id"],                                                                            +
                               "Sort Method": "quicksort",                                                                                 +
                               "Sort Space Used": 62,                                                                                      +
                               "Sort Space Type": "Memory",                                                                                +
                               "Shared Hit Blocks": 13,                                                                                    +
                               "Shared Read Blocks": 248261,                                                                               +
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
                                   "Startup Cost": 34730.55,                                                                               +
                                   "Total Cost": 34751.39,                                                                                 +
                                   "Plan Rows": 15,                                                                                        +
                                   "Plan Width": 71,                                                                                       +
                                   "Actual Startup Time": 15178.095,                                                                       +
                                   "Actual Total Time": 15203.144,                                                                         +
                                   "Actual Rows": 354,                                                                                     +
                                   "Actual Loops": 1,                                                                                      +
                                   "Inner Unique": true,                                                                                   +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                                                                 +
                                   "Shared Hit Blocks": 13,                                                                                +
                                   "Shared Read Blocks": 248261,                                                                           +
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
                                       "Node Type": "Sort",                                                                                +
                                       "Parent Relationship": "Outer",                                                                     +
                                       "Parallel Aware": false,                                                                            +
                                       "Startup Cost": 34336.63,                                                                           +
                                       "Total Cost": 34336.63,                                                                             +
                                       "Plan Rows": 15,                                                                                    +
                                       "Plan Width": 75,                                                                                   +
                                       "Actual Startup Time": 15043.301,                                                                   +
                                       "Actual Total Time": 15043.347,                                                                     +
                                       "Actual Rows": 354,                                                                                 +
                                       "Actual Loops": 1,                                                                                  +
                                       "Sort Key": ["mk.keyword_id"],                                                                      +
                                       "Sort Method": "quicksort",                                                                         +
                                       "Sort Space Used": 64,                                                                              +
                                       "Sort Space Type": "Memory",                                                                        +
                                       "Shared Hit Blocks": 11,                                                                            +
                                       "Shared Read Blocks": 247314,                                                                       +
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
                                           "Node Type": "Merge Join",                                                                      +
                                           "Parent Relationship": "Outer",                                                                 +
                                           "Parallel Aware": false,                                                                        +
                                           "Join Type": "Inner",                                                                           +
                                           "Startup Cost": 33363.08,                                                                       +
                                           "Total Cost": 34336.62,                                                                         +
                                           "Plan Rows": 15,                                                                                +
                                           "Plan Width": 75,                                                                               +
                                           "Actual Startup Time": 13935.930,                                                               +
                                           "Actual Total Time": 15043.120,                                                                 +
                                           "Actual Rows": 354,                                                                             +
                                           "Actual Loops": 1,                                                                              +
                                           "Inner Unique": false,                                                                          +
                                           "Merge Cond": "(t.id = mc.movie_id)",                                                           +
                                           "Shared Hit Blocks": 11,                                                                        +
                                           "Shared Read Blocks": 247314,                                                                   +
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
                                               "Startup Cost": 32150.14,                                                                   +
                                               "Total Cost": 33122.21,                                                                     +
                                               "Plan Rows": 758,                                                                           +
                                               "Plan Width": 83,                                                                           +
                                               "Actual Startup Time": 12991.465,                                                           +
                                               "Actual Total Time": 14122.271,                                                             +
                                               "Actual Rows": 1024,                                                                        +
                                               "Actual Loops": 1,                                                                          +
                                               "Inner Unique": false,                                                                      +
                                               "Merge Cond": "(t.id = at.movie_id)",                                                       +
                                               "Shared Hit Blocks": 8,                                                                     +
                                               "Shared Read Blocks": 228528,                                                               +
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
                                                   "Node Type": "Merge Join",                                                              +
                                                   "Parent Relationship": "Outer",                                                         +
                                                   "Parallel Aware": false,                                                                +
                                                   "Join Type": "Inner",                                                                   +
                                                   "Startup Cost": 30894.57,                                                               +
                                                   "Total Cost": 31811.47,                                                                 +
                                                   "Plan Rows": 1675,                                                                      +
                                                   "Plan Width": 79,                                                                       +
                                                   "Actual Startup Time": 12608.477,                                                       +
                                                   "Actual Total Time": 13654.079,                                                         +
                                                   "Actual Rows": 4309,                                                                    +
                                                   "Actual Loops": 1,                                                                      +
                                                   "Inner Unique": false,                                                                  +
                                                   "Merge Cond": "(t.id = mk.movie_id)",                                                   +
                                                   "Shared Hit Blocks": 6,                                                                 +
                                                   "Shared Read Blocks": 222338,                                                           +
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
                                                       "Node Type": "Merge Join",                                                          +
                                                       "Parent Relationship": "Outer",                                                     +
                                                       "Parallel Aware": false,                                                            +
                                                       "Join Type": "Inner",                                                               +
                                                       "Startup Cost": 14283.65,                                                           +
                                                       "Total Cost": 14498.05,                                                             +
                                                       "Plan Rows": 142,                                                                   +
                                                       "Plan Width": 71,                                                                   +
                                                       "Actual Startup Time": 10438.848,                                                   +
                                                       "Actual Total Time": 10814.590,                                                     +
                                                       "Actual Rows": 1749,                                                                +
                                                       "Actual Loops": 1,                                                                  +
                                                       "Inner Unique": true,                                                               +
                                                       "Merge Cond": "(mi.movie_id = t.id)",                                               +
                                                       "Shared Hit Blocks": 3,                                                             +
                                                       "Shared Read Blocks": 197887,                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                         +
                                                       "Shared Written Blocks": 0,                                                         +
                                                       "Local Hit Blocks": 0,                                                              +
                                                       "Local Read Blocks": 0,                                                             +
                                                       "Local Dirtied Blocks": 0,                                                          +
                                                       "Local Written Blocks": 0,                                                          +
                                                       "Temp Read Blocks": 0,                                                              +
                                                       "Temp Written Blocks": 0,                                                           +
                                                       "Plans": [                                                                          +
                                                         {                                                                                 +
                                                           "Node Type": "Sort",                                                            +
                                                           "Parent Relationship": "Outer",                                                 +
                                                           "Parallel Aware": false,                                                        +
                                                           "Startup Cost": 8407.84,                                                        +
                                                           "Total Cost": 8407.86,                                                          +
                                                           "Plan Rows": 260,                                                               +
                                                           "Plan Width": 50,                                                               +
                                                           "Actual Startup Time": 8396.764,                                                +
                                                           "Actual Total Time": 8396.963,                                                  +
                                                           "Actual Rows": 1771,                                                            +
                                                           "Actual Loops": 1,                                                              +
                                                           "Sort Key": ["mi.movie_id"],                                                    +
                                                           "Sort Method": "quicksort",                                                     +
                                                           "Sort Space Used": 187,                                                         +
                                                           "Sort Space Type": "Memory",                                                    +
                                                           "Shared Hit Blocks": 2,                                                         +
                                                           "Shared Read Blocks": 161890,                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                     +
                                                           "Shared Written Blocks": 0,                                                     +
                                                           "Local Hit Blocks": 0,                                                          +
                                                           "Local Read Blocks": 0,                                                         +
                                                           "Local Dirtied Blocks": 0,                                                      +
                                                           "Local Written Blocks": 0,                                                      +
                                                           "Temp Read Blocks": 0,                                                          +
                                                           "Temp Written Blocks": 0,                                                       +
                                                           "Plans": [                                                                      +
                                                             {                                                                             +
                                                               "Node Type": "Seq Scan",                                                    +
                                                               "Parent Relationship": "Outer",                                             +
                                                               "Parallel Aware": false,                                                    +
                                                               "Relation Name": "movie_info",                                              +
                                                               "Alias": "mi",                                                              +
                                                               "Startup Cost": 0.00,                                                       +
                                                               "Total Cost": 8407.52,                                                      +
                                                               "Plan Rows": 260,                                                           +
                                                               "Plan Width": 50,                                                           +
                                                               "Actual Startup Time": 1548.054,                                            +
                                                               "Actual Total Time": 8395.028,                                              +
                                                               "Actual Rows": 1771,                                                        +
                                                               "Actual Loops": 1,                                                          +
                                                               "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",+
                                                               "Rows Removed by Filter": 14833949,                                         +
                                                               "Shared Hit Blocks": 2,                                                     +
                                                               "Shared Read Blocks": 161890,                                               +
                                                               "Shared Dirtied Blocks": 0,                                                 +
                                                               "Shared Written Blocks": 0,                                                 +
                                                               "Local Hit Blocks": 0,                                                      +
                                                               "Local Read Blocks": 0,                                                     +
                                                               "Local Dirtied Blocks": 0,                                                  +
                                                               "Local Written Blocks": 0,                                                  +
                                                               "Temp Read Blocks": 0,                                                      +
                                                               "Temp Written Blocks": 0                                                    +
                                                             }                                                                             +
                                                           ]                                                                               +
                                                         },                                                                                +
                                                         {                                                                                 +
                                                           "Node Type": "Sort",                                                            +
                                                           "Parent Relationship": "Inner",                                                 +
                                                           "Parallel Aware": false,                                                        +
                                                           "Startup Cost": 5875.81,                                                        +
                                                           "Total Cost": 5983.06,                                                          +
                                                           "Plan Rows": 1381453,                                                           +
                                                           "Plan Width": 21,                                                               +
                                                           "Actual Startup Time": 2041.971,                                                +
                                                           "Actual Total Time": 2219.588,                                                  +
                                                           "Actual Rows": 1379880,                                                         +
                                                           "Actual Loops": 1,                                                              +
                                                           "Sort Key": ["t.id"],                                                           +
                                                           "Sort Method": "quicksort",                                                     +
                                                           "Sort Space Used": 145245,                                                      +
                                                           "Sort Space Type": "Memory",                                                    +
                                                           "Shared Hit Blocks": 1,                                                         +
                                                           "Shared Read Blocks": 35997,                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                     +
                                                           "Shared Written Blocks": 0,                                                     +
                                                           "Local Hit Blocks": 0,                                                          +
                                                           "Local Read Blocks": 0,                                                         +
                                                           "Local Dirtied Blocks": 0,                                                      +
                                                           "Local Written Blocks": 0,                                                      +
                                                           "Temp Read Blocks": 0,                                                          +
                                                           "Temp Written Blocks": 0,                                                       +
                                                           "Plans": [                                                                      +
                                                             {                                                                             +
                                                               "Node Type": "Seq Scan",                                                    +
                                                               "Parent Relationship": "Outer",                                             +
                                                               "Parallel Aware": false,                                                    +
                                                               "Relation Name": "title",                                                   +
                                                               "Alias": "t",                                                               +
                                                               "Startup Cost": 0.00,                                                       +
                                                               "Total Cost": 1500.26,                                                      +
                                                               "Plan Rows": 1381453,                                                       +
                                                               "Plan Width": 21,                                                           +
                                                               "Actual Startup Time": 24.214,                                              +
                                                               "Actual Total Time": 1271.570,                                              +
                                                               "Actual Rows": 1381453,                                                     +
                                                               "Actual Loops": 1,                                                          +
                                                               "Filter": "(production_year > 2000)",                                       +
                                                               "Rows Removed by Filter": 1146859,                                          +
                                                               "Shared Hit Blocks": 1,                                                     +
                                                               "Shared Read Blocks": 35997,                                                +
                                                               "Shared Dirtied Blocks": 0,                                                 +
                                                               "Shared Written Blocks": 0,                                                 +
                                                               "Local Hit Blocks": 0,                                                      +
                                                               "Local Read Blocks": 0,                                                     +
                                                               "Local Dirtied Blocks": 0,                                                  +
                                                               "Local Written Blocks": 0,                                                  +
                                                               "Temp Read Blocks": 0,                                                      +
                                                               "Temp Written Blocks": 0                                                    +
                                                             }                                                                             +
                                                           ]                                                                               +
                                                         }                                                                                 +
                                                       ]                                                                                   +
                                                     },                                                                                    +
                                                     {                                                                                     +
                                                       "Node Type": "Sort",                                                                +
                                                       "Parent Relationship": "Inner",                                                     +
                                                       "Parallel Aware": false,                                                            +
                                                       "Startup Cost": 16610.92,                                                           +
                                                       "Total Cost": 16962.16,                                                             +
                                                       "Plan Rows": 4523930,                                                               +
                                                       "Plan Width": 8,                                                                    +
                                                       "Actual Startup Time": 2169.597,                                                    +
                                                       "Actual Total Time": 2410.367,                                                      +
                                                       "Actual Rows": 4514886,                                                             +
                                                       "Actual Loops": 1,                                                                  +
                                                       "Sort Key": ["mk.movie_id"],                                                        +
                                                       "Sort Method": "quicksort",                                                         +
                                                       "Sort Space Used": 408668,                                                          +
                                                       "Sort Space Type": "Memory",                                                        +
                                                       "Shared Hit Blocks": 3,                                                             +
                                                       "Shared Read Blocks": 24451,                                                        +
                                                       "Shared Dirtied Blocks": 0,                                                         +
                                                       "Shared Written Blocks": 0,                                                         +
                                                       "Local Hit Blocks": 0,                                                              +
                                                       "Local Read Blocks": 0,                                                             +
                                                       "Local Dirtied Blocks": 0,                                                          +
                                                       "Local Written Blocks": 0,                                                          +
                                                       "Temp Read Blocks": 0,                                                              +
                                                       "Temp Written Blocks": 0,                                                           +
                                                       "Plans": [                                                                          +
                                                         {                                                                                 +
                                                           "Node Type": "Seq Scan",                                                        +
                                                           "Parent Relationship": "Outer",                                                 +
                                                           "Parallel Aware": false,                                                        +
                                                           "Relation Name": "movie_keyword",                                               +
                                                           "Alias": "mk",                                                                  +
                                                           "Startup Cost": 0.00,                                                           +
                                                           "Total Cost": 1079.84,                                                          +
                                                           "Plan Rows": 4523930,                                                           +
                                                           "Plan Width": 8,                                                                +
                                                           "Actual Startup Time": 0.015,                                                   +
                                                           "Actual Total Time": 799.289,                                                   +
                                                           "Actual Rows": 4523930,                                                         +
                                                           "Actual Loops": 1,                                                              +
                                                           "Shared Hit Blocks": 3,                                                         +
                                                           "Shared Read Blocks": 24451,                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                     +
                                                           "Shared Written Blocks": 0,                                                     +
                                                           "Local Hit Blocks": 0,                                                          +
                                                           "Local Read Blocks": 0,                                                         +
                                                           "Local Dirtied Blocks": 0,                                                      +
                                                           "Local Written Blocks": 0,                                                      +
                                                           "Temp Read Blocks": 0,                                                          +
                                                           "Temp Written Blocks": 0                                                        +
                                                         }                                                                                 +
                                                       ]                                                                                   +
                                                     }                                                                                     +
                                                   ]                                                                                       +
                                                 },                                                                                        +
                                                 {                                                                                         +
                                                   "Node Type": "Sort",                                                                    +
                                                   "Parent Relationship": "Inner",                                                         +
                                                   "Parallel Aware": false,                                                                +
                                                   "Startup Cost": 1255.56,                                                                +
                                                   "Total Cost": 1283.62,                                                                  +
                                                   "Plan Rows": 361472,                                                                    +
                                                   "Plan Width": 4,                                                                        +
                                                   "Actual Startup Time": 380.396,                                                         +
                                                   "Actual Total Time": 427.275,                                                           +
                                                   "Actual Rows": 360051,                                                                  +
                                                   "Actual Loops": 1,                                                                      +
                                                   "Sort Key": ["at.movie_id"],                                                            +
                                                   "Sort Method": "quicksort",                                                             +
                                                   "Sort Space Used": 29233,                                                               +
                                                   "Sort Space Type": "Memory",                                                            +
                                                   "Shared Hit Blocks": 2,                                                                 +
                                                   "Shared Read Blocks": 6190,                                                             +
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
                                                       "Relation Name": "aka_title",                                                       +
                                                       "Alias": "at",                                                                      +
                                                       "Startup Cost": 0.00,                                                               +
                                                       "Total Cost": 219.22,                                                               +
                                                       "Plan Rows": 361472,                                                                +
                                                       "Plan Width": 4,                                                                    +
                                                       "Actual Startup Time": 10.920,                                                      +
                                                       "Actual Total Time": 197.375,                                                       +
                                                       "Actual Rows": 361472,                                                              +
                                                       "Actual Loops": 1,                                                                  +
                                                       "Shared Hit Blocks": 2,                                                             +
                                                       "Shared Read Blocks": 6190,                                                         +
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
                                             },                                                                                            +
                                             {                                                                                             +
                                               "Node Type": "Sort",                                                                        +
                                               "Parent Relationship": "Inner",                                                             +
                                               "Parallel Aware": false,                                                                    +
                                               "Startup Cost": 1212.93,                                                                    +
                                               "Total Cost": 1214.28,                                                                      +
                                               "Plan Rows": 17389,                                                                         +
                                               "Plan Width": 12,                                                                           +
                                               "Actual Startup Time": 911.503,                                                             +
                                               "Actual Total Time": 914.728,                                                               +
                                               "Actual Rows": 61795,                                                                       +
                                               "Actual Loops": 1,                                                                          +
                                               "Sort Key": ["mc.movie_id"],                                                                +
                                               "Sort Method": "quicksort",                                                                 +
                                               "Sort Space Used": 4427,                                                                    +
                                               "Sort Space Type": "Memory",                                                                +
                                               "Shared Hit Blocks": 3,                                                                     +
                                               "Shared Read Blocks": 18786,                                                                +
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
                                                   "Node Type": "Seq Scan",                                                                +
                                                   "Parent Relationship": "Outer",                                                         +
                                                   "Parallel Aware": false,                                                                +
                                                   "Relation Name": "movie_companies",                                                     +
                                                   "Alias": "mc",                                                                          +
                                                   "Startup Cost": 0.00,                                                                   +
                                                   "Total Cost": 1174.90,                                                                  +
                                                   "Plan Rows": 17389,                                                                     +
                                                   "Plan Width": 12,                                                                       +
                                                   "Actual Startup Time": 0.015,                                                           +
                                                   "Actual Total Time": 882.758,                                                           +
                                                   "Actual Rows": 61664,                                                                   +
                                                   "Actual Loops": 1,                                                                      +
                                                   "Filter": "((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))",           +
                                                   "Rows Removed by Filter": 2547465,                                                      +
                                                   "Shared Hit Blocks": 3,                                                                 +
                                                   "Shared Read Blocks": 18786,                                                            +
                                                   "Shared Dirtied Blocks": 0,                                                             +
                                                   "Shared Written Blocks": 0,                                                             +
                                                   "Local Hit Blocks": 0,                                                                  +
                                                   "Local Read Blocks": 0,                                                                 +
                                                   "Local Dirtied Blocks": 0,                                                              +
                                                   "Local Written Blocks": 0,                                                              +
                                                   "Temp Read Blocks": 0,                                                                  +
                                                   "Temp Written Blocks": 0                                                                +
                                                 }                                                                                         +
                                               ]                                                                                           +
                                             }                                                                                             +
                                           ]                                                                                               +
                                         }                                                                                                 +
                                       ]                                                                                                   +
                                     },                                                                                                    +
                                     {                                                                                                     +
                                       "Node Type": "Sort",                                                                                +
                                       "Parent Relationship": "Inner",                                                                     +
                                       "Parallel Aware": false,                                                                            +
                                       "Startup Cost": 393.92,                                                                             +
                                       "Total Cost": 404.34,                                                                               +
                                       "Plan Rows": 134170,                                                                                +
                                       "Plan Width": 4,                                                                                    +
                                       "Actual Startup Time": 134.785,                                                                     +
                                       "Actual Total Time": 146.129,                                                                       +
                                       "Actual Rows": 133880,                                                                              +
                                       "Actual Loops": 1,                                                                                  +
                                       "Sort Key": ["k.id"],                                                                               +
                                       "Sort Method": "quicksort",                                                                         +
                                       "Sort Space Used": 12434,                                                                           +
                                       "Sort Space Type": "Memory",                                                                        +
                                       "Shared Hit Blocks": 2,                                                                             +
                                       "Shared Read Blocks": 947,                                                                          +
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
                                           "Relation Name": "keyword",                                                                     +
                                           "Alias": "k",                                                                                   +
                                           "Startup Cost": 0.00,                                                                           +
                                           "Total Cost": 39.04,                                                                            +
                                           "Plan Rows": 134170,                                                                            +
                                           "Plan Width": 4,                                                                                +
                                           "Actual Startup Time": 33.634,                                                                  +
                                           "Actual Total Time": 66.463,                                                                    +
                                           "Actual Rows": 134170,                                                                          +
                                           "Actual Loops": 1,                                                                              +
                                           "Shared Hit Blocks": 2,                                                                         +
                                           "Shared Read Blocks": 947,                                                                      +
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
                                 }                                                                                                         +
                               ]                                                                                                           +
                             },                                                                                                            +
                             {                                                                                                             +
                               "Node Type": "Sort",                                                                                        +
                               "Parent Relationship": "Inner",                                                                             +
                               "Parallel Aware": false,                                                                                    +
                               "Startup Cost": 0.05,                                                                                       +
                               "Total Cost": 0.05,                                                                                         +
                               "Plan Rows": 1,                                                                                             +
                               "Plan Width": 4,                                                                                            +
                               "Actual Startup Time": 0.029,                                                                               +
                               "Actual Total Time": 0.029,                                                                                 +
                               "Actual Rows": 1,                                                                                           +
                               "Actual Loops": 1,                                                                                          +
                               "Sort Key": ["it1.id"],                                                                                     +
                               "Sort Method": "quicksort",                                                                                 +
                               "Sort Space Used": 25,                                                                                      +
                               "Sort Space Type": "Memory",                                                                                +
                               "Shared Hit Blocks": 1,                                                                                     +
                               "Shared Read Blocks": 0,                                                                                    +
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
                                   "Relation Name": "info_type",                                                                           +
                                   "Alias": "it1",                                                                                         +
                                   "Startup Cost": 0.00,                                                                                   +
                                   "Total Cost": 0.05,                                                                                     +
                                   "Plan Rows": 1,                                                                                         +
                                   "Plan Width": 4,                                                                                        +
                                   "Actual Startup Time": 0.012,                                                                           +
                                   "Actual Total Time": 0.022,                                                                             +
                                   "Actual Rows": 1,                                                                                       +
                                   "Actual Loops": 1,                                                                                      +
                                   "Filter": "((info)::text = 'release dates'::text)",                                                     +
                                   "Rows Removed by Filter": 112,                                                                          +
                                   "Shared Hit Blocks": 1,                                                                                 +
                                   "Shared Read Blocks": 0,                                                                                +
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
                       "Startup Cost": 0.03,                                                                                               +
                       "Total Cost": 0.03,                                                                                                 +
                       "Plan Rows": 4,                                                                                                     +
                       "Plan Width": 4,                                                                                                    +
                       "Actual Startup Time": 0.008,                                                                                       +
                       "Actual Total Time": 0.008,                                                                                         +
                       "Actual Rows": 1,                                                                                                   +
                       "Actual Loops": 1,                                                                                                  +
                       "Sort Key": ["ct.id"],                                                                                              +
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
                           "Relation Name": "company_type",                                                                                +
                           "Alias": "ct",                                                                                                  +
                           "Startup Cost": 0.00,                                                                                           +
                           "Total Cost": 0.03,                                                                                             +
                           "Plan Rows": 4,                                                                                                 +
                           "Plan Width": 4,                                                                                                +
                           "Actual Startup Time": 0.004,                                                                                   +
                           "Actual Total Time": 0.005,                                                                                     +
                           "Actual Rows": 4,                                                                                               +
                           "Actual Loops": 1,                                                                                              +
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
               "Startup Cost": 344.10,                                                                                                     +
               "Total Cost": 350.69,                                                                                                       +
               "Plan Rows": 84843,                                                                                                         +
               "Plan Width": 4,                                                                                                            +
               "Actual Startup Time": 176.641,                                                                                             +
               "Actual Total Time": 179.202,                                                                                               +
               "Actual Rows": 25736,                                                                                                       +
               "Actual Loops": 1,                                                                                                          +
               "Sort Key": ["cn.id"],                                                                                                      +
               "Sort Method": "quicksort",                                                                                                 +
               "Sort Space Used": 7050,                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                +
               "Shared Hit Blocks": 2,                                                                                                     +
               "Shared Read Blocks": 2992,                                                                                                 +
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
                   "Relation Name": "company_name",                                                                                        +
                   "Alias": "cn",                                                                                                          +
                   "Startup Cost": 0.00,                                                                                                   +
                   "Total Cost": 128.41,                                                                                                   +
                   "Plan Rows": 84843,                                                                                                     +
                   "Plan Width": 4,                                                                                                        +
                   "Actual Startup Time": 25.006,                                                                                          +
                   "Actual Total Time": 134.015,                                                                                           +
                   "Actual Rows": 84843,                                                                                                   +
                   "Actual Loops": 1,                                                                                                      +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                      +
                   "Rows Removed by Filter": 150154,                                                                                       +
                   "Shared Hit Blocks": 2,                                                                                                 +
                   "Shared Read Blocks": 2992,                                                                                             +
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
     "Planning Time": 9333.590,                                                                                                            +
     "Triggers": [                                                                                                                         +
     ],                                                                                                                                    +
     "Execution Time": 15433.816                                                                                                           +
   }                                                                                                                                       +
 ]
(1 row)

