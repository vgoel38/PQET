                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                  +
   {                                                                                                                                                                                +
     "Plan": {                                                                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                                                                    +
       "Strategy": "Plain",                                                                                                                                                         +
       "Partial Mode": "Simple",                                                                                                                                                    +
       "Parallel Aware": false,                                                                                                                                                     +
       "Startup Cost": 1282.28,                                                                                                                                                     +
       "Total Cost": 1282.28,                                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                                              +
       "Plan Width": 64,                                                                                                                                                            +
       "Actual Startup Time": 693680.577,                                                                                                                                           +
       "Actual Total Time": 693680.578,                                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                                            +
       "Actual Loops": 1,                                                                                                                                                           +
       "Shared Hit Blocks": 525094,                                                                                                                                                 +
       "Shared Read Blocks": 126274,                                                                                                                                                +
       "Shared Dirtied Blocks": 0,                                                                                                                                                  +
       "Shared Written Blocks": 0,                                                                                                                                                  +
       "Local Hit Blocks": 0,                                                                                                                                                       +
       "Local Read Blocks": 0,                                                                                                                                                      +
       "Local Dirtied Blocks": 0,                                                                                                                                                   +
       "Local Written Blocks": 0,                                                                                                                                                   +
       "Temp Read Blocks": 0,                                                                                                                                                       +
       "Temp Written Blocks": 0,                                                                                                                                                    +
       "Plans": [                                                                                                                                                                   +
         {                                                                                                                                                                          +
           "Node Type": "Nested Loop",                                                                                                                                              +
           "Parent Relationship": "Outer",                                                                                                                                          +
           "Parallel Aware": false,                                                                                                                                                 +
           "Join Type": "Inner",                                                                                                                                                    +
           "Startup Cost": 0.10,                                                                                                                                                    +
           "Total Cost": 1282.28,                                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                                          +
           "Plan Width": 32,                                                                                                                                                        +
           "Actual Startup Time": 3846.603,                                                                                                                                         +
           "Actual Total Time": 693643.863,                                                                                                                                         +
           "Actual Rows": 5406,                                                                                                                                                     +
           "Actual Loops": 1,                                                                                                                                                       +
           "Inner Unique": true,                                                                                                                                                    +
           "Shared Hit Blocks": 525094,                                                                                                                                             +
           "Shared Read Blocks": 126274,                                                                                                                                            +
           "Shared Dirtied Blocks": 0,                                                                                                                                              +
           "Shared Written Blocks": 0,                                                                                                                                              +
           "Local Hit Blocks": 0,                                                                                                                                                   +
           "Local Read Blocks": 0,                                                                                                                                                  +
           "Local Dirtied Blocks": 0,                                                                                                                                               +
           "Local Written Blocks": 0,                                                                                                                                               +
           "Temp Read Blocks": 0,                                                                                                                                                   +
           "Temp Written Blocks": 0,                                                                                                                                                +
           "Plans": [                                                                                                                                                               +
             {                                                                                                                                                                      +
               "Node Type": "Nested Loop",                                                                                                                                          +
               "Parent Relationship": "Outer",                                                                                                                                      +
               "Parallel Aware": false,                                                                                                                                             +
               "Join Type": "Inner",                                                                                                                                                +
               "Startup Cost": 0.08,                                                                                                                                                +
               "Total Cost": 1282.18,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                      +
               "Plan Width": 21,                                                                                                                                                    +
               "Actual Startup Time": 3830.172,                                                                                                                                     +
               "Actual Total Time": 651545.296,                                                                                                                                     +
               "Actual Rows": 5406,                                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                                   +
               "Inner Unique": true,                                                                                                                                                +
               "Shared Hit Blocks": 509596,                                                                                                                                         +
               "Shared Read Blocks": 120124,                                                                                                                                        +
               "Shared Dirtied Blocks": 0,                                                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                                                               +
               "Local Read Blocks": 0,                                                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                                                           +
               "Local Written Blocks": 0,                                                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                                                               +
               "Temp Written Blocks": 0,                                                                                                                                            +
               "Plans": [                                                                                                                                                           +
                 {                                                                                                                                                                  +
                   "Node Type": "Nested Loop",                                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                                         +
                   "Join Type": "Inner",                                                                                                                                            +
                   "Startup Cost": 0.07,                                                                                                                                            +
                   "Total Cost": 1282.09,                                                                                                                                           +
                   "Plan Rows": 5,                                                                                                                                                  +
                   "Plan Width": 25,                                                                                                                                                +
                   "Actual Startup Time": 2270.938,                                                                                                                                 +
                   "Actual Total Time": 486985.806,                                                                                                                                 +
                   "Actual Rows": 189844,                                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                                               +
                   "Inner Unique": true,                                                                                                                                            +
                   "Join Filter": "(t.kind_id = kt.id)",                                                                                                                            +
                   "Rows Removed by Join Filter": 17433,                                                                                                                            +
                   "Shared Hit Blocks": 240979,                                                                                                                                     +
                   "Shared Read Blocks": 91589,                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                                                           +
                   "Temp Written Blocks": 0,                                                                                                                                        +
                   "Plans": [                                                                                                                                                       +
                     {                                                                                                                                                              +
                       "Node Type": "Nested Loop",                                                                                                                                  +
                       "Parent Relationship": "Outer",                                                                                                                              +
                       "Parallel Aware": false,                                                                                                                                     +
                       "Join Type": "Inner",                                                                                                                                        +
                       "Startup Cost": 0.07,                                                                                                                                        +
                       "Total Cost": 1282.05,                                                                                                                                       +
                       "Plan Rows": 33,                                                                                                                                             +
                       "Plan Width": 29,                                                                                                                                            +
                       "Actual Startup Time": 830.800,                                                                                                                              +
                       "Actual Total Time": 486501.513,                                                                                                                             +
                       "Actual Rows": 207277,                                                                                                                                       +
                       "Actual Loops": 1,                                                                                                                                           +
                       "Inner Unique": false,                                                                                                                                       +
                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                                       +
                       "Rows Removed by Join Filter": 0,                                                                                                                            +
                       "Shared Hit Blocks": 240978,                                                                                                                                 +
                       "Shared Read Blocks": 91589,                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                                    +
                       "Plans": [                                                                                                                                                   +
                         {                                                                                                                                                          +
                           "Node Type": "Nested Loop",                                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Join Type": "Inner",                                                                                                                                    +
                           "Startup Cost": 0.05,                                                                                                                                    +
                           "Total Cost": 1281.26,                                                                                                                                   +
                           "Plan Rows": 3,                                                                                                                                          +
                           "Plan Width": 33,                                                                                                                                        +
                           "Actual Startup Time": 792.372,                                                                                                                          +
                           "Actual Total Time": 62041.204,                                                                                                                          +
                           "Actual Rows": 1595,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Inner Unique": true,                                                                                                                                    +
                           "Shared Hit Blocks": 104386,                                                                                                                             +
                           "Shared Read Blocks": 20279,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0,                                                                                                                                +
                           "Plans": [                                                                                                                                               +
                             {                                                                                                                                                      +
                               "Node Type": "Nested Loop",                                                                                                                          +
                               "Parent Relationship": "Outer",                                                                                                                      +
                               "Parallel Aware": false,                                                                                                                             +
                               "Join Type": "Inner",                                                                                                                                +
                               "Startup Cost": 0.04,                                                                                                                                +
                               "Total Cost": 1281.01,                                                                                                                               +
                               "Plan Rows": 6,                                                                                                                                      +
                               "Plan Width": 8,                                                                                                                                     +
                               "Actual Startup Time": 113.509,                                                                                                                      +
                               "Actual Total Time": 21433.364,                                                                                                                      +
                               "Actual Rows": 6396,                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                   +
                               "Inner Unique": true,                                                                                                                                +
                               "Join Filter": "(cc.status_id = cct2.id)",                                                                                                           +
                               "Rows Removed by Join Filter": 3253,                                                                                                                 +
                               "Shared Hit Blocks": 85262,                                                                                                                          +
                               "Shared Read Blocks": 13799,                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                                               +
                               "Temp Written Blocks": 0,                                                                                                                            +
                               "Plans": [                                                                                                                                           +
                                 {                                                                                                                                                  +
                                   "Node Type": "Nested Loop",                                                                                                                      +
                                   "Parent Relationship": "Outer",                                                                                                                  +
                                   "Parallel Aware": false,                                                                                                                         +
                                   "Join Type": "Inner",                                                                                                                            +
                                   "Startup Cost": 0.04,                                                                                                                            +
                                   "Total Cost": 1280.97,                                                                                                                           +
                                   "Plan Rows": 26,                                                                                                                                 +
                                   "Plan Width": 12,                                                                                                                                +
                                   "Actual Startup Time": 113.488,                                                                                                                  +
                                   "Actual Total Time": 21417.588,                                                                                                                  +
                                   "Actual Rows": 6396,                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                               +
                                   "Inner Unique": true,                                                                                                                            +
                                   "Join Filter": "(cc.subject_id = cct1.id)",                                                                                                      +
                                   "Rows Removed by Join Filter": 2996,                                                                                                             +
                                   "Shared Hit Blocks": 85261,                                                                                                                      +
                                   "Shared Read Blocks": 13799,                                                                                                                     +
                                   "Shared Dirtied Blocks": 0,                                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                                           +
                                   "Temp Written Blocks": 0,                                                                                                                        +
                                   "Plans": [                                                                                                                                       +
                                     {                                                                                                                                              +
                                       "Node Type": "Nested Loop",                                                                                                                  +
                                       "Parent Relationship": "Outer",                                                                                                              +
                                       "Parallel Aware": false,                                                                                                                     +
                                       "Join Type": "Inner",                                                                                                                        +
                                       "Startup Cost": 0.04,                                                                                                                        +
                                       "Total Cost": 1280.91,                                                                                                                       +
                                       "Plan Rows": 102,                                                                                                                            +
                                       "Plan Width": 16,                                                                                                                            +
                                       "Actual Startup Time": 113.453,                                                                                                              +
                                       "Actual Total Time": 21389.332,                                                                                                              +
                                       "Actual Rows": 9392,                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                           +
                                       "Inner Unique": false,                                                                                                                       +
                                       "Shared Hit Blocks": 85260,                                                                                                                  +
                                       "Shared Read Blocks": 13799,                                                                                                                 +
                                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                                       +
                                       "Temp Written Blocks": 0,                                                                                                                    +
                                       "Plans": [                                                                                                                                   +
                                         {                                                                                                                                          +
                                           "Node Type": "Nested Loop",                                                                                                              +
                                           "Parent Relationship": "Outer",                                                                                                          +
                                           "Parallel Aware": false,                                                                                                                 +
                                           "Join Type": "Inner",                                                                                                                    +
                                           "Startup Cost": 0.03,                                                                                                                    +
                                           "Total Cost": 1276.18,                                                                                                                   +
                                           "Plan Rows": 337,                                                                                                                        +
                                           "Plan Width": 4,                                                                                                                         +
                                           "Actual Startup Time": 45.818,                                                                                                           +
                                           "Actual Total Time": 17349.352,                                                                                                          +
                                           "Actual Rows": 24091,                                                                                                                    +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Inner Unique": false,                                                                                                                   +
                                           "Shared Hit Blocks": 4505,                                                                                                               +
                                           "Shared Read Blocks": 12761,                                                                                                             +
                                           "Shared Dirtied Blocks": 0,                                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                                               +
                                           "Local Written Blocks": 0,                                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                                   +
                                           "Temp Written Blocks": 0,                                                                                                                +
                                           "Plans": [                                                                                                                               +
                                             {                                                                                                                                      +
                                               "Node Type": "Index Scan",                                                                                                           +
                                               "Parent Relationship": "Outer",                                                                                                      +
                                               "Parallel Aware": false,                                                                                                             +
                                               "Scan Direction": "Forward",                                                                                                         +
                                               "Index Name": "keyword_idx_keyword",                                                                                                 +
                                               "Relation Name": "keyword",                                                                                                          +
                                               "Alias": "k",                                                                                                                        +
                                               "Startup Cost": 0.01,                                                                                                                +
                                               "Total Cost": 61.32,                                                                                                                 +
                                               "Plan Rows": 10,                                                                                                                     +
                                               "Plan Width": 4,                                                                                                                     +
                                               "Actual Startup Time": 18.770,                                                                                                       +
                                               "Actual Total Time": 313.039,                                                                                                        +
                                               "Actual Rows": 10,                                                                                                                   +
                                               "Actual Loops": 1,                                                                                                                   +
                                               "Index Cond": "(keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))",+
                                               "Rows Removed by Index Recheck": 0,                                                                                                  +
                                               "Shared Hit Blocks": 20,                                                                                                             +
                                               "Shared Read Blocks": 23,                                                                                                            +
                                               "Shared Dirtied Blocks": 0,                                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                                               +
                                               "Local Read Blocks": 0,                                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                                           +
                                               "Local Written Blocks": 0,                                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                                               +
                                               "Temp Written Blocks": 0                                                                                                             +
                                             },                                                                                                                                     +
                                             {                                                                                                                                      +
                                               "Node Type": "Index Scan",                                                                                                           +
                                               "Parent Relationship": "Inner",                                                                                                      +
                                               "Parallel Aware": false,                                                                                                             +
                                               "Scan Direction": "Forward",                                                                                                         +
                                               "Index Name": "keyword_id_movie_keyword",                                                                                            +
                                               "Relation Name": "movie_keyword",                                                                                                    +
                                               "Alias": "mk",                                                                                                                       +
                                               "Startup Cost": 0.01,                                                                                                                +
                                               "Total Cost": 121.48,                                                                                                                +
                                               "Plan Rows": 39,                                                                                                                     +
                                               "Plan Width": 8,                                                                                                                     +
                                               "Actual Startup Time": 32.208,                                                                                                       +
                                               "Actual Total Time": 1701.049,                                                                                                       +
                                               "Actual Rows": 2409,                                                                                                                 +
                                               "Actual Loops": 10,                                                                                                                  +
                                               "Index Cond": "(keyword_id = k.id)",                                                                                                 +
                                               "Rows Removed by Index Recheck": 0,                                                                                                  +
                                               "Shared Hit Blocks": 4485,                                                                                                           +
                                               "Shared Read Blocks": 12738,                                                                                                         +
                                               "Shared Dirtied Blocks": 0,                                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                                               +
                                               "Local Read Blocks": 0,                                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                                           +
                                               "Local Written Blocks": 0,                                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                                               +
                                               "Temp Written Blocks": 0                                                                                                             +
                                             }                                                                                                                                      +
                                           ]                                                                                                                                        +
                                         },                                                                                                                                         +
                                         {                                                                                                                                          +
                                           "Node Type": "Index Scan",                                                                                                               +
                                           "Parent Relationship": "Inner",                                                                                                          +
                                           "Parallel Aware": false,                                                                                                                 +
                                           "Scan Direction": "Forward",                                                                                                             +
                                           "Index Name": "movie_id_complete_cast",                                                                                                  +
                                           "Relation Name": "complete_cast",                                                                                                        +
                                           "Alias": "cc",                                                                                                                           +
                                           "Startup Cost": 0.01,                                                                                                                    +
                                           "Total Cost": 0.01,                                                                                                                      +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 12,                                                                                                                        +
                                           "Actual Startup Time": 0.108,                                                                                                            +
                                           "Actual Total Time": 0.165,                                                                                                              +
                                           "Actual Rows": 0,                                                                                                                        +
                                           "Actual Loops": 24091,                                                                                                                   +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                                +
                                           "Rows Removed by Index Recheck": 0,                                                                                                      +
                                           "Shared Hit Blocks": 80755,                                                                                                              +
                                           "Shared Read Blocks": 1038,                                                                                                              +
                                           "Shared Dirtied Blocks": 0,                                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                                               +
                                           "Local Written Blocks": 0,                                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                                   +
                                           "Temp Written Blocks": 0                                                                                                                 +
                                         }                                                                                                                                          +
                                       ]                                                                                                                                            +
                                     },                                                                                                                                             +
                                     {                                                                                                                                              +
                                       "Node Type": "Materialize",                                                                                                                  +
                                       "Parent Relationship": "Inner",                                                                                                              +
                                       "Parallel Aware": false,                                                                                                                     +
                                       "Startup Cost": 0.00,                                                                                                                        +
                                       "Total Cost": 0.03,                                                                                                                          +
                                       "Plan Rows": 1,                                                                                                                              +
                                       "Plan Width": 4,                                                                                                                             +
                                       "Actual Startup Time": 0.001,                                                                                                                +
                                       "Actual Total Time": 0.001,                                                                                                                  +
                                       "Actual Rows": 1,                                                                                                                            +
                                       "Actual Loops": 9392,                                                                                                                        +
                                       "Shared Hit Blocks": 1,                                                                                                                      +
                                       "Shared Read Blocks": 0,                                                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                                       +
                                       "Temp Written Blocks": 0,                                                                                                                    +
                                       "Plans": [                                                                                                                                   +
                                         {                                                                                                                                          +
                                           "Node Type": "Seq Scan",                                                                                                                 +
                                           "Parent Relationship": "Outer",                                                                                                          +
                                           "Parallel Aware": false,                                                                                                                 +
                                           "Relation Name": "comp_cast_type",                                                                                                       +
                                           "Alias": "cct1",                                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                                    +
                                           "Total Cost": 0.03,                                                                                                                      +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 4,                                                                                                                         +
                                           "Actual Startup Time": 0.018,                                                                                                            +
                                           "Actual Total Time": 0.026,                                                                                                              +
                                           "Actual Rows": 1,                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Filter": "((kind)::text = 'cast'::text)",                                                                                               +
                                           "Rows Removed by Filter": 3,                                                                                                             +
                                           "Shared Hit Blocks": 1,                                                                                                                  +
                                           "Shared Read Blocks": 0,                                                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                                               +
                                           "Local Written Blocks": 0,                                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                                   +
                                           "Temp Written Blocks": 0                                                                                                                 +
                                         }                                                                                                                                          +
                                       ]                                                                                                                                            +
                                     }                                                                                                                                              +
                                   ]                                                                                                                                                +
                                 },                                                                                                                                                 +
                                 {                                                                                                                                                  +
                                   "Node Type": "Materialize",                                                                                                                      +
                                   "Parent Relationship": "Inner",                                                                                                                  +
                                   "Parallel Aware": false,                                                                                                                         +
                                   "Startup Cost": 0.00,                                                                                                                            +
                                   "Total Cost": 0.03,                                                                                                                              +
                                   "Plan Rows": 1,                                                                                                                                  +
                                   "Plan Width": 4,                                                                                                                                 +
                                   "Actual Startup Time": 0.000,                                                                                                                    +
                                   "Actual Total Time": 0.000,                                                                                                                      +
                                   "Actual Rows": 2,                                                                                                                                +
                                   "Actual Loops": 6396,                                                                                                                            +
                                   "Shared Hit Blocks": 1,                                                                                                                          +
                                   "Shared Read Blocks": 0,                                                                                                                         +
                                   "Shared Dirtied Blocks": 0,                                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                                           +
                                   "Temp Written Blocks": 0,                                                                                                                        +
                                   "Plans": [                                                                                                                                       +
                                     {                                                                                                                                              +
                                       "Node Type": "Seq Scan",                                                                                                                     +
                                       "Parent Relationship": "Outer",                                                                                                              +
                                       "Parallel Aware": false,                                                                                                                     +
                                       "Relation Name": "comp_cast_type",                                                                                                           +
                                       "Alias": "cct2",                                                                                                                             +
                                       "Startup Cost": 0.00,                                                                                                                        +
                                       "Total Cost": 0.03,                                                                                                                          +
                                       "Plan Rows": 1,                                                                                                                              +
                                       "Plan Width": 4,                                                                                                                             +
                                       "Actual Startup Time": 0.010,                                                                                                                +
                                       "Actual Total Time": 0.011,                                                                                                                  +
                                       "Actual Rows": 2,                                                                                                                            +
                                       "Actual Loops": 1,                                                                                                                           +
                                       "Filter": "((kind)::text ~~ '%complete%'::text)",                                                                                            +
                                       "Rows Removed by Filter": 2,                                                                                                                 +
                                       "Shared Hit Blocks": 1,                                                                                                                      +
                                       "Shared Read Blocks": 0,                                                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                                       +
                                       "Temp Written Blocks": 0                                                                                                                     +
                                     }                                                                                                                                              +
                                   ]                                                                                                                                                +
                                 }                                                                                                                                                  +
                               ]                                                                                                                                                    +
                             },                                                                                                                                                     +
                             {                                                                                                                                                      +
                               "Node Type": "Index Scan",                                                                                                                           +
                               "Parent Relationship": "Inner",                                                                                                                      +
                               "Parallel Aware": false,                                                                                                                             +
                               "Scan Direction": "Forward",                                                                                                                         +
                               "Index Name": "title_idx_id",                                                                                                                        +
                               "Relation Name": "title",                                                                                                                            +
                               "Alias": "t",                                                                                                                                        +
                               "Startup Cost": 0.01,                                                                                                                                +
                               "Total Cost": 0.04,                                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                                      +
                               "Plan Width": 25,                                                                                                                                    +
                               "Actual Startup Time": 6.346,                                                                                                                        +
                               "Actual Total Time": 6.346,                                                                                                                          +
                               "Actual Rows": 0,                                                                                                                                    +
                               "Actual Loops": 6396,                                                                                                                                +
                               "Index Cond": "(id = mk.movie_id)",                                                                                                                  +
                               "Rows Removed by Index Recheck": 0,                                                                                                                  +
                               "Filter": "(production_year > 2000)",                                                                                                                +
                               "Rows Removed by Filter": 1,                                                                                                                         +
                               "Shared Hit Blocks": 19124,                                                                                                                          +
                               "Shared Read Blocks": 6480,                                                                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                                               +
                               "Temp Written Blocks": 0                                                                                                                             +
                             }                                                                                                                                                      +
                           ]                                                                                                                                                        +
                         },                                                                                                                                                         +
                         {                                                                                                                                                          +
                           "Node Type": "Index Scan",                                                                                                                               +
                           "Parent Relationship": "Inner",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Scan Direction": "Forward",                                                                                                                             +
                           "Index Name": "movie_id_cast_info",                                                                                                                      +
                           "Relation Name": "cast_info",                                                                                                                            +
                           "Alias": "ci",                                                                                                                                           +
                           "Startup Cost": 0.02,                                                                                                                                    +
                           "Total Cost": 0.26,                                                                                                                                      +
                           "Plan Rows": 23,                                                                                                                                         +
                           "Plan Width": 12,                                                                                                                                        +
                           "Actual Startup Time": 15.800,                                                                                                                           +
                           "Actual Total Time": 265.836,                                                                                                                            +
                           "Actual Rows": 130,                                                                                                                                      +
                           "Actual Loops": 1595,                                                                                                                                    +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                +
                           "Rows Removed by Index Recheck": 0,                                                                                                                      +
                           "Shared Hit Blocks": 136592,                                                                                                                             +
                           "Shared Read Blocks": 71310,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                                                 +
                         }                                                                                                                                                          +
                       ]                                                                                                                                                            +
                     },                                                                                                                                                             +
                     {                                                                                                                                                              +
                       "Node Type": "Materialize",                                                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                                                              +
                       "Parallel Aware": false,                                                                                                                                     +
                       "Startup Cost": 0.00,                                                                                                                                        +
                       "Total Cost": 0.03,                                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                             +
                       "Actual Startup Time": 0.000,                                                                                                                                +
                       "Actual Total Time": 0.000,                                                                                                                                  +
                       "Actual Rows": 1,                                                                                                                                            +
                       "Actual Loops": 207277,                                                                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                                                                      +
                       "Shared Read Blocks": 0,                                                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                                    +
                       "Plans": [                                                                                                                                                   +
                         {                                                                                                                                                          +
                           "Node Type": "Seq Scan",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Relation Name": "kind_type",                                                                                                                            +
                           "Alias": "kt",                                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                                    +
                           "Total Cost": 0.03,                                                                                                                                      +
                           "Plan Rows": 1,                                                                                                                                          +
                           "Plan Width": 4,                                                                                                                                         +
                           "Actual Startup Time": 0.019,                                                                                                                            +
                           "Actual Total Time": 0.025,                                                                                                                              +
                           "Actual Rows": 1,                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Filter": "((kind)::text = 'movie'::text)",                                                                                                              +
                           "Rows Removed by Filter": 6,                                                                                                                             +
                           "Shared Hit Blocks": 1,                                                                                                                                  +
                           "Shared Read Blocks": 0,                                                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                                                 +
                         }                                                                                                                                                          +
                       ]                                                                                                                                                            +
                     }                                                                                                                                                              +
                   ]                                                                                                                                                                +
                 },                                                                                                                                                                 +
                 {                                                                                                                                                                  +
                   "Node Type": "Index Scan",                                                                                                                                       +
                   "Parent Relationship": "Inner",                                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                                         +
                   "Scan Direction": "Forward",                                                                                                                                     +
                   "Index Name": "char_name_pkey",                                                                                                                                  +
                   "Relation Name": "char_name",                                                                                                                                    +
                   "Alias": "chn",                                                                                                                                                  +
                   "Startup Cost": 0.01,                                                                                                                                            +
                   "Total Cost": 0.02,                                                                                                                                              +
                   "Plan Rows": 1,                                                                                                                                                  +
                   "Plan Width": 4,                                                                                                                                                 +
                   "Actual Startup Time": 0.864,                                                                                                                                    +
                   "Actual Total Time": 0.864,                                                                                                                                      +
                   "Actual Rows": 0,                                                                                                                                                +
                   "Actual Loops": 189844,                                                                                                                                          +
                   "Index Cond": "(id = ci.person_role_id)",                                                                                                                        +
                   "Rows Removed by Index Recheck": 0,                                                                                                                              +
                   "Filter": "((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))",                                                                       +
                   "Rows Removed by Filter": 0,                                                                                                                                     +
                   "Shared Hit Blocks": 268617,                                                                                                                                     +
                   "Shared Read Blocks": 28535,                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                                                           +
                   "Temp Written Blocks": 0                                                                                                                                         +
                 }                                                                                                                                                                  +
               ]                                                                                                                                                                    +
             },                                                                                                                                                                     +
             {                                                                                                                                                                      +
               "Node Type": "Index Scan",                                                                                                                                           +
               "Parent Relationship": "Inner",                                                                                                                                      +
               "Parallel Aware": false,                                                                                                                                             +
               "Scan Direction": "Forward",                                                                                                                                         +
               "Index Name": "name_pkey",                                                                                                                                           +
               "Relation Name": "name",                                                                                                                                             +
               "Alias": "n",                                                                                                                                                        +
               "Startup Cost": 0.01,                                                                                                                                                +
               "Total Cost": 0.02,                                                                                                                                                  +
               "Plan Rows": 1,                                                                                                                                                      +
               "Plan Width": 19,                                                                                                                                                    +
               "Actual Startup Time": 7.782,                                                                                                                                        +
               "Actual Total Time": 7.782,                                                                                                                                          +
               "Actual Rows": 1,                                                                                                                                                    +
               "Actual Loops": 5406,                                                                                                                                                +
               "Index Cond": "(id = ci.person_id)",                                                                                                                                 +
               "Rows Removed by Index Recheck": 0,                                                                                                                                  +
               "Shared Hit Blocks": 15498,                                                                                                                                          +
               "Shared Read Blocks": 6150,                                                                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                                                               +
               "Local Read Blocks": 0,                                                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                                                           +
               "Local Written Blocks": 0,                                                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                                                               +
               "Temp Written Blocks": 0                                                                                                                                             +
             }                                                                                                                                                                      +
           ]                                                                                                                                                                        +
         }                                                                                                                                                                          +
       ]                                                                                                                                                                            +
     },                                                                                                                                                                             +
     "Planning Time": 6310.376,                                                                                                                                                     +
     "Triggers": [                                                                                                                                                                  +
     ],                                                                                                                                                                             +
     "Execution Time": 693698.568                                                                                                                                                   +
   }                                                                                                                                                                                +
 ]
(1 row)

