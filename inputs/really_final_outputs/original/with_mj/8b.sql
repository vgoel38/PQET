                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                +
   {                                                                                                                                                                                              +
     "Plan": {                                                                                                                                                                                    +
       "Node Type": "Aggregate",                                                                                                                                                                  +
       "Strategy": "Plain",                                                                                                                                                                       +
       "Partial Mode": "Simple",                                                                                                                                                                  +
       "Parallel Aware": false,                                                                                                                                                                   +
       "Startup Cost": 23351.72,                                                                                                                                                                  +
       "Total Cost": 23351.72,                                                                                                                                                                    +
       "Plan Rows": 1,                                                                                                                                                                            +
       "Plan Width": 64,                                                                                                                                                                          +
       "Actual Startup Time": 18314.823,                                                                                                                                                          +
       "Actual Total Time": 18314.823,                                                                                                                                                            +
       "Actual Rows": 1,                                                                                                                                                                          +
       "Actual Loops": 1,                                                                                                                                                                         +
       "Shared Hit Blocks": 19,                                                                                                                                                                   +
       "Shared Read Blocks": 377429,                                                                                                                                                              +
       "Shared Dirtied Blocks": 0,                                                                                                                                                                +
       "Shared Written Blocks": 0,                                                                                                                                                                +
       "Local Hit Blocks": 0,                                                                                                                                                                     +
       "Local Read Blocks": 0,                                                                                                                                                                    +
       "Local Dirtied Blocks": 0,                                                                                                                                                                 +
       "Local Written Blocks": 0,                                                                                                                                                                 +
       "Temp Read Blocks": 0,                                                                                                                                                                     +
       "Temp Written Blocks": 0,                                                                                                                                                                  +
       "Plans": [                                                                                                                                                                                 +
         {                                                                                                                                                                                        +
           "Node Type": "Merge Join",                                                                                                                                                             +
           "Parent Relationship": "Outer",                                                                                                                                                        +
           "Parallel Aware": false,                                                                                                                                                               +
           "Join Type": "Inner",                                                                                                                                                                  +
           "Startup Cost": 23228.38,                                                                                                                                                              +
           "Total Cost": 23351.72,                                                                                                                                                                +
           "Plan Rows": 1,                                                                                                                                                                        +
           "Plan Width": 33,                                                                                                                                                                      +
           "Actual Startup Time": 18314.730,                                                                                                                                                      +
           "Actual Total Time": 18314.798,                                                                                                                                                        +
           "Actual Rows": 6,                                                                                                                                                                      +
           "Actual Loops": 1,                                                                                                                                                                     +
           "Inner Unique": true,                                                                                                                                                                  +
           "Merge Cond": "(an.person_id = n.id)",                                                                                                                                                 +
           "Shared Hit Blocks": 19,                                                                                                                                                               +
           "Shared Read Blocks": 377429,                                                                                                                                                          +
           "Shared Dirtied Blocks": 0,                                                                                                                                                            +
           "Shared Written Blocks": 0,                                                                                                                                                            +
           "Local Hit Blocks": 0,                                                                                                                                                                 +
           "Local Read Blocks": 0,                                                                                                                                                                +
           "Local Dirtied Blocks": 0,                                                                                                                                                             +
           "Local Written Blocks": 0,                                                                                                                                                             +
           "Temp Read Blocks": 0,                                                                                                                                                                 +
           "Temp Written Blocks": 0,                                                                                                                                                              +
           "Plans": [                                                                                                                                                                             +
             {                                                                                                                                                                                    +
               "Node Type": "Merge Join",                                                                                                                                                         +
               "Parent Relationship": "Outer",                                                                                                                                                    +
               "Parallel Aware": false,                                                                                                                                                           +
               "Join Type": "Inner",                                                                                                                                                              +
               "Startup Cost": 20500.20,                                                                                                                                                          +
               "Total Cost": 20620.17,                                                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                                                    +
               "Plan Width": 41,                                                                                                                                                                  +
               "Actual Startup Time": 15647.427,                                                                                                                                                  +
               "Actual Total Time": 15688.444,                                                                                                                                                    +
               "Actual Rows": 24,                                                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                                                 +
               "Inner Unique": false,                                                                                                                                                             +
               "Merge Cond": "(ci.person_id = an.person_id)",                                                                                                                                     +
               "Shared Hit Blocks": 17,                                                                                                                                                           +
               "Shared Read Blocks": 321818,                                                                                                                                                      +
               "Shared Dirtied Blocks": 0,                                                                                                                                                        +
               "Shared Written Blocks": 0,                                                                                                                                                        +
               "Local Hit Blocks": 0,                                                                                                                                                             +
               "Local Read Blocks": 0,                                                                                                                                                            +
               "Local Dirtied Blocks": 0,                                                                                                                                                         +
               "Local Written Blocks": 0,                                                                                                                                                         +
               "Temp Read Blocks": 0,                                                                                                                                                             +
               "Temp Written Blocks": 0,                                                                                                                                                          +
               "Plans": [                                                                                                                                                                         +
                 {                                                                                                                                                                                +
                   "Node Type": "Sort",                                                                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                                                                +
                   "Parallel Aware": false,                                                                                                                                                       +
                   "Startup Cost": 17311.81,                                                                                                                                                      +
                   "Total Cost": 17311.81,                                                                                                                                                        +
                   "Plan Rows": 1,                                                                                                                                                                +
                   "Plan Width": 21,                                                                                                                                                              +
                   "Actual Startup Time": 14819.439,                                                                                                                                              +
                   "Actual Total Time": 14819.446,                                                                                                                                                +
                   "Actual Rows": 25,                                                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                                                             +
                   "Sort Key": ["ci.person_id"],                                                                                                                                                  +
                   "Sort Method": "quicksort",                                                                                                                                                    +
                   "Sort Space Used": 27,                                                                                                                                                         +
                   "Sort Space Type": "Memory",                                                                                                                                                   +
                   "Shared Hit Blocks": 15,                                                                                                                                                       +
                   "Shared Read Blocks": 310425,                                                                                                                                                  +
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
                       "Startup Cost": 17310.76,                                                                                                                                                  +
                       "Total Cost": 17311.81,                                                                                                                                                    +
                       "Plan Rows": 1,                                                                                                                                                            +
                       "Plan Width": 21,                                                                                                                                                          +
                       "Actual Startup Time": 14819.217,                                                                                                                                          +
                       "Actual Total Time": 14819.409,                                                                                                                                            +
                       "Actual Rows": 25,                                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                                         +
                       "Inner Unique": true,                                                                                                                                                      +
                       "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                                   +
                       "Shared Hit Blocks": 11,                                                                                                                                                   +
                       "Shared Read Blocks": 310425,                                                                                                                                              +
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
                           "Startup Cost": 17169.01,                                                                                                                                              +
                           "Total Cost": 17169.01,                                                                                                                                                +
                           "Plan Rows": 1,                                                                                                                                                        +
                           "Plan Width": 25,                                                                                                                                                      +
                           "Actual Startup Time": 14674.999,                                                                                                                                      +
                           "Actual Total Time": 14675.004,                                                                                                                                        +
                           "Actual Rows": 25,                                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                                     +
                           "Sort Key": ["mc.company_id"],                                                                                                                                         +
                           "Sort Method": "quicksort",                                                                                                                                            +
                           "Sort Space Used": 28,                                                                                                                                                 +
                           "Sort Space Type": "Memory",                                                                                                                                           +
                           "Shared Hit Blocks": 9,                                                                                                                                                +
                           "Shared Read Blocks": 307433,                                                                                                                                          +
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
                               "Startup Cost": 17169.01,                                                                                                                                          +
                               "Total Cost": 17169.01,                                                                                                                                            +
                               "Plan Rows": 1,                                                                                                                                                    +
                               "Plan Width": 25,                                                                                                                                                  +
                               "Actual Startup Time": 14674.969,                                                                                                                                  +
                               "Actual Total Time": 14674.983,                                                                                                                                    +
                               "Actual Rows": 25,                                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                                 +
                               "Inner Unique": true,                                                                                                                                              +
                               "Merge Cond": "(ci.role_id = rt.id)",                                                                                                                              +
                               "Shared Hit Blocks": 9,                                                                                                                                            +
                               "Shared Read Blocks": 307433,                                                                                                                                      +
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
                                   "Startup Cost": 17168.98,                                                                                                                                      +
                                   "Total Cost": 17168.98,                                                                                                                                        +
                                   "Plan Rows": 1,                                                                                                                                                +
                                   "Plan Width": 29,                                                                                                                                              +
                                   "Actual Startup Time": 14674.915,                                                                                                                              +
                                   "Actual Total Time": 14674.925,                                                                                                                                +
                                   "Actual Rows": 104,                                                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                                             +
                                   "Sort Key": ["ci.role_id"],                                                                                                                                    +
                                   "Sort Method": "quicksort",                                                                                                                                    +
                                   "Sort Space Used": 38,                                                                                                                                         +
                                   "Sort Space Type": "Memory",                                                                                                                                   +
                                   "Shared Hit Blocks": 8,                                                                                                                                        +
                                   "Shared Read Blocks": 307433,                                                                                                                                  +
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
                                       "Startup Cost": 17154.38,                                                                                                                                  +
                                       "Total Cost": 17168.98,                                                                                                                                    +
                                       "Plan Rows": 1,                                                                                                                                            +
                                       "Plan Width": 29,                                                                                                                                          +
                                       "Actual Startup Time": 14669.670,                                                                                                                          +
                                       "Actual Total Time": 14674.837,                                                                                                                            +
                                       "Actual Rows": 104,                                                                                                                                        +
                                       "Actual Loops": 1,                                                                                                                                         +
                                       "Inner Unique": false,                                                                                                                                     +
                                       "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                                                                               +
                                       "Shared Hit Blocks": 8,                                                                                                                                    +
                                       "Shared Read Blocks": 307433,                                                                                                                              +
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
                                           "Node Type": "Merge Join",                                                                                                                             +
                                           "Parent Relationship": "Outer",                                                                                                                        +
                                           "Parallel Aware": false,                                                                                                                               +
                                           "Join Type": "Inner",                                                                                                                                  +
                                           "Startup Cost": 15573.28,                                                                                                                              +
                                           "Total Cost": 15587.76,                                                                                                                                +
                                           "Plan Rows": 1,                                                                                                                                        +
                                           "Plan Width": 33,                                                                                                                                      +
                                           "Actual Startup Time": 13771.187,                                                                                                                      +
                                           "Actual Total Time": 13775.651,                                                                                                                        +
                                           "Actual Rows": 226,                                                                                                                                    +
                                           "Actual Loops": 1,                                                                                                                                     +
                                           "Inner Unique": true,                                                                                                                                  +
                                           "Merge Cond": "(ci.movie_id = t.id)",                                                                                                                  +
                                           "Shared Hit Blocks": 5,                                                                                                                                +
                                           "Shared Read Blocks": 288647,                                                                                                                          +
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
                                               "Node Type": "Sort",                                                                                                                               +
                                               "Parent Relationship": "Outer",                                                                                                                    +
                                               "Parallel Aware": false,                                                                                                                           +
                                               "Startup Cost": 13484.10,                                                                                                                          +
                                               "Total Cost": 13491.34,                                                                                                                            +
                                               "Plan Rows": 93269,                                                                                                                                +
                                               "Plan Width": 12,                                                                                                                                  +
                                               "Actual Startup Time": 12042.795,                                                                                                                  +
                                               "Actual Total Time": 12050.694,                                                                                                                    +
                                               "Actual Rows": 86807,                                                                                                                              +
                                               "Actual Loops": 1,                                                                                                                                 +
                                               "Sort Key": ["ci.movie_id"],                                                                                                                       +
                                               "Sort Method": "quicksort",                                                                                                                        +
                                               "Sort Space Used": 7436,                                                                                                                           +
                                               "Sort Space Type": "Memory",                                                                                                                       +
                                               "Shared Hit Blocks": 4,                                                                                                                            +
                                               "Shared Read Blocks": 252650,                                                                                                                      +
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
                                                   "Node Type": "Seq Scan",                                                                                                                       +
                                                   "Parent Relationship": "Outer",                                                                                                                +
                                                   "Parallel Aware": false,                                                                                                                       +
                                                   "Relation Name": "cast_info",                                                                                                                  +
                                                   "Alias": "ci",                                                                                                                                 +
                                                   "Startup Cost": 0.00,                                                                                                                          +
                                                   "Total Cost": 13245.00,                                                                                                                        +
                                                   "Plan Rows": 93269,                                                                                                                            +
                                                   "Plan Width": 12,                                                                                                                              +
                                                   "Actual Startup Time": 31.615,                                                                                                                 +
                                                   "Actual Total Time": 11996.379,                                                                                                                +
                                                   "Actual Rows": 93095,                                                                                                                          +
                                                   "Actual Loops": 1,                                                                                                                             +
                                                   "Filter": "(note = '(voice: English version)'::text)",                                                                                         +
                                                   "Rows Removed by Filter": 36151249,                                                                                                            +
                                                   "Shared Hit Blocks": 4,                                                                                                                        +
                                                   "Shared Read Blocks": 252650,                                                                                                                  +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                    +
                                                   "Shared Written Blocks": 0,                                                                                                                    +
                                                   "Local Hit Blocks": 0,                                                                                                                         +
                                                   "Local Read Blocks": 0,                                                                                                                        +
                                                   "Local Dirtied Blocks": 0,                                                                                                                     +
                                                   "Local Written Blocks": 0,                                                                                                                     +
                                                   "Temp Read Blocks": 0,                                                                                                                         +
                                                   "Temp Written Blocks": 0                                                                                                                       +
                                                 }                                                                                                                                                +
                                               ]                                                                                                                                                  +
                                             },                                                                                                                                                   +
                                             {                                                                                                                                                    +
                                               "Node Type": "Sort",                                                                                                                               +
                                               "Parent Relationship": "Inner",                                                                                                                    +
                                               "Parallel Aware": false,                                                                                                                           +
                                               "Startup Cost": 2089.18,                                                                                                                           +
                                               "Total Cost": 2089.18,                                                                                                                             +
                                               "Plan Rows": 34,                                                                                                                                   +
                                               "Plan Width": 21,                                                                                                                                  +
                                               "Actual Startup Time": 1712.670,                                                                                                                   +
                                               "Actual Total Time": 1712.672,                                                                                                                     +
                                               "Actual Rows": 7,                                                                                                                                  +
                                               "Actual Loops": 1,                                                                                                                                 +
                                               "Sort Key": ["t.id"],                                                                                                                              +
                                               "Sort Method": "quicksort",                                                                                                                        +
                                               "Sort Space Used": 25,                                                                                                                             +
                                               "Sort Space Type": "Memory",                                                                                                                       +
                                               "Shared Hit Blocks": 1,                                                                                                                            +
                                               "Shared Read Blocks": 35997,                                                                                                                       +
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
                                                   "Node Type": "Seq Scan",                                                                                                                       +
                                                   "Parent Relationship": "Outer",                                                                                                                +
                                                   "Parallel Aware": false,                                                                                                                       +
                                                   "Relation Name": "title",                                                                                                                      +
                                                   "Alias": "t",                                                                                                                                  +
                                                   "Startup Cost": 0.00,                                                                                                                          +
                                                   "Total Cost": 2089.15,                                                                                                                         +
                                                   "Plan Rows": 34,                                                                                                                               +
                                                   "Plan Width": 21,                                                                                                                              +
                                                   "Actual Startup Time": 1257.781,                                                                                                               +
                                                   "Actual Total Time": 1712.624,                                                                                                                 +
                                                   "Actual Rows": 7,                                                                                                                              +
                                                   "Actual Loops": 1,                                                                                                                             +
                                                   "Filter": "((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))",+
                                                   "Rows Removed by Filter": 2528305,                                                                                                             +
                                                   "Shared Hit Blocks": 1,                                                                                                                        +
                                                   "Shared Read Blocks": 35997,                                                                                                                   +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                    +
                                                   "Shared Written Blocks": 0,                                                                                                                    +
                                                   "Local Hit Blocks": 0,                                                                                                                         +
                                                   "Local Read Blocks": 0,                                                                                                                        +
                                                   "Local Dirtied Blocks": 0,                                                                                                                     +
                                                   "Local Written Blocks": 0,                                                                                                                     +
                                                   "Temp Read Blocks": 0,                                                                                                                         +
                                                   "Temp Written Blocks": 0                                                                                                                       +
                                                 }                                                                                                                                                +
                                               ]                                                                                                                                                  +
                                             }                                                                                                                                                    +
                                           ]                                                                                                                                                      +
                                         },                                                                                                                                                       +
                                         {                                                                                                                                                        +
                                           "Node Type": "Sort",                                                                                                                                   +
                                           "Parent Relationship": "Inner",                                                                                                                        +
                                           "Parallel Aware": false,                                                                                                                               +
                                           "Startup Cost": 1581.10,                                                                                                                               +
                                           "Total Cost": 1581.16,                                                                                                                                 +
                                           "Plan Rows": 720,                                                                                                                                      +
                                           "Plan Width": 8,                                                                                                                                       +
                                           "Actual Startup Time": 896.749,                                                                                                                        +
                                           "Actual Total Time": 897.512,                                                                                                                          +
                                           "Actual Rows": 7426,                                                                                                                                   +
                                           "Actual Loops": 1,                                                                                                                                     +
                                           "Sort Key": ["mc.movie_id"],                                                                                                                           +
                                           "Sort Method": "quicksort",                                                                                                                            +
                                           "Sort Space Used": 786,                                                                                                                                +
                                           "Sort Space Type": "Memory",                                                                                                                           +
                                           "Shared Hit Blocks": 3,                                                                                                                                +
                                           "Shared Read Blocks": 18786,                                                                                                                           +
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
                                               "Relation Name": "movie_companies",                                                                                                                +
                                               "Alias": "mc",                                                                                                                                     +
                                               "Startup Cost": 0.00,                                                                                                                              +
                                               "Total Cost": 1580.04,                                                                                                                             +
                                               "Plan Rows": 720,                                                                                                                                  +
                                               "Plan Width": 8,                                                                                                                                   +
                                               "Actual Startup Time": 6.454,                                                                                                                      +
                                               "Actual Total Time": 892.294,                                                                                                                      +
                                               "Actual Rows": 8569,                                                                                                                               +
                                               "Actual Loops": 1,                                                                                                                                 +
                                               "Filter": "((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))",           +
                                               "Rows Removed by Filter": 2600560,                                                                                                                 +
                                               "Shared Hit Blocks": 3,                                                                                                                            +
                                               "Shared Read Blocks": 18786,                                                                                                                       +
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
                                         }                                                                                                                                                        +
                                       ]                                                                                                                                                          +
                                     }                                                                                                                                                            +
                                   ]                                                                                                                                                              +
                                 },                                                                                                                                                               +
                                 {                                                                                                                                                                +
                                   "Node Type": "Sort",                                                                                                                                           +
                                   "Parent Relationship": "Inner",                                                                                                                                +
                                   "Parallel Aware": false,                                                                                                                                       +
                                   "Startup Cost": 0.03,                                                                                                                                          +
                                   "Total Cost": 0.03,                                                                                                                                            +
                                   "Plan Rows": 1,                                                                                                                                                +
                                   "Plan Width": 4,                                                                                                                                               +
                                   "Actual Startup Time": 0.023,                                                                                                                                  +
                                   "Actual Total Time": 0.023,                                                                                                                                    +
                                   "Actual Rows": 1,                                                                                                                                              +
                                   "Actual Loops": 1,                                                                                                                                             +
                                   "Sort Key": ["rt.id"],                                                                                                                                         +
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
                                       "Relation Name": "role_type",                                                                                                                              +
                                       "Alias": "rt",                                                                                                                                             +
                                       "Startup Cost": 0.00,                                                                                                                                      +
                                       "Total Cost": 0.03,                                                                                                                                        +
                                       "Plan Rows": 1,                                                                                                                                            +
                                       "Plan Width": 4,                                                                                                                                           +
                                       "Actual Startup Time": 0.011,                                                                                                                              +
                                       "Actual Total Time": 0.015,                                                                                                                                +
                                       "Actual Rows": 1,                                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                                         +
                                       "Filter": "((role)::text = 'actress'::text)",                                                                                                              +
                                       "Rows Removed by Filter": 11,                                                                                                                              +
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
                                 }                                                                                                                                                                +
                               ]                                                                                                                                                                  +
                             }                                                                                                                                                                    +
                           ]                                                                                                                                                                      +
                         },                                                                                                                                                                       +
                         {                                                                                                                                                                        +
                           "Node Type": "Sort",                                                                                                                                                   +
                           "Parent Relationship": "Inner",                                                                                                                                        +
                           "Parallel Aware": false,                                                                                                                                               +
                           "Startup Cost": 141.74,                                                                                                                                                +
                           "Total Cost": 142.27,                                                                                                                                                  +
                           "Plan Rows": 6752,                                                                                                                                                     +
                           "Plan Width": 4,                                                                                                                                                       +
                           "Actual Startup Time": 144.201,                                                                                                                                        +
                           "Actual Total Time": 144.283,                                                                                                                                          +
                           "Actual Rows": 493,                                                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                                                     +
                           "Sort Key": ["cn.id"],                                                                                                                                                 +
                           "Sort Method": "quicksort",                                                                                                                                            +
                           "Sort Space Used": 509,                                                                                                                                                +
                           "Sort Space Type": "Memory",                                                                                                                                           +
                           "Shared Hit Blocks": 2,                                                                                                                                                +
                           "Shared Read Blocks": 2992,                                                                                                                                            +
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
                               "Relation Name": "company_name",                                                                                                                                   +
                               "Alias": "cn",                                                                                                                                                     +
                               "Startup Cost": 0.00,                                                                                                                                              +
                               "Total Cost": 128.41,                                                                                                                                              +
                               "Plan Rows": 6752,                                                                                                                                                 +
                               "Plan Width": 4,                                                                                                                                                   +
                               "Actual Startup Time": 5.517,                                                                                                                                      +
                               "Actual Total Time": 138.888,                                                                                                                                      +
                               "Actual Rows": 6752,                                                                                                                                               +
                               "Actual Loops": 1,                                                                                                                                                 +
                               "Filter": "((country_code)::text = '[jp]'::text)",                                                                                                                 +
                               "Rows Removed by Filter": 228245,                                                                                                                                  +
                               "Shared Hit Blocks": 2,                                                                                                                                            +
                               "Shared Read Blocks": 2992,                                                                                                                                        +
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
                 {                                                                                                                                                                                +
                   "Node Type": "Sort",                                                                                                                                                           +
                   "Parent Relationship": "Inner",                                                                                                                                                +
                   "Parallel Aware": false,                                                                                                                                                       +
                   "Startup Cost": 3188.40,                                                                                                                                                       +
                   "Total Cost": 3258.38,                                                                                                                                                         +
                   "Plan Rows": 901343,                                                                                                                                                           +
                   "Plan Width": 20,                                                                                                                                                              +
                   "Actual Startup Time": 764.952,                                                                                                                                                +
                   "Actual Total Time": 803.875,                                                                                                                                                  +
                   "Actual Rows": 576738,                                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                                             +
                   "Sort Key": ["an.person_id"],                                                                                                                                                  +
                   "Sort Method": "quicksort",                                                                                                                                                    +
                   "Sort Space Used": 89763,                                                                                                                                                      +
                   "Sort Space Type": "Memory",                                                                                                                                                   +
                   "Shared Hit Blocks": 2,                                                                                                                                                        +
                   "Shared Read Blocks": 11393,                                                                                                                                                   +
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
                       "Node Type": "Seq Scan",                                                                                                                                                   +
                       "Parent Relationship": "Outer",                                                                                                                                            +
                       "Parallel Aware": false,                                                                                                                                                   +
                       "Relation Name": "aka_name",                                                                                                                                               +
                       "Alias": "an",                                                                                                                                                             +
                       "Startup Cost": 0.00,                                                                                                                                                      +
                       "Total Cost": 419.75,                                                                                                                                                      +
                       "Plan Rows": 901343,                                                                                                                                                       +
                       "Plan Width": 20,                                                                                                                                                          +
                       "Actual Startup Time": 0.009,                                                                                                                                              +
                       "Actual Total Time": 329.663,                                                                                                                                              +
                       "Actual Rows": 901343,                                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                                         +
                       "Shared Hit Blocks": 2,                                                                                                                                                    +
                       "Shared Read Blocks": 11393,                                                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                +
                       "Shared Written Blocks": 0,                                                                                                                                                +
                       "Local Hit Blocks": 0,                                                                                                                                                     +
                       "Local Read Blocks": 0,                                                                                                                                                    +
                       "Local Dirtied Blocks": 0,                                                                                                                                                 +
                       "Local Written Blocks": 0,                                                                                                                                                 +
                       "Temp Read Blocks": 0,                                                                                                                                                     +
                       "Temp Written Blocks": 0                                                                                                                                                   +
                     }                                                                                                                                                                            +
                   ]                                                                                                                                                                              +
                 }                                                                                                                                                                                +
               ]                                                                                                                                                                                  +
             },                                                                                                                                                                                   +
             {                                                                                                                                                                                    +
               "Node Type": "Sort",                                                                                                                                                               +
               "Parent Relationship": "Inner",                                                                                                                                                    +
               "Parallel Aware": false,                                                                                                                                                           +
               "Startup Cost": 2728.18,                                                                                                                                                           +
               "Total Cost": 2729.86,                                                                                                                                                             +
               "Plan Rows": 21680,                                                                                                                                                                +
               "Plan Width": 4,                                                                                                                                                                   +
               "Actual Startup Time": 2622.497,                                                                                                                                                   +
               "Actual Total Time": 2623.877,                                                                                                                                                     +
               "Actual Rows": 11650,                                                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                                                 +
               "Sort Key": ["n.id"],                                                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                                                        +
               "Sort Space Used": 1749,                                                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                                                       +
               "Shared Hit Blocks": 2,                                                                                                                                                            +
               "Shared Read Blocks": 55611,                                                                                                                                                       +
               "Shared Dirtied Blocks": 0,                                                                                                                                                        +
               "Shared Written Blocks": 0,                                                                                                                                                        +
               "Local Hit Blocks": 0,                                                                                                                                                             +
               "Local Read Blocks": 0,                                                                                                                                                            +
               "Local Dirtied Blocks": 0,                                                                                                                                                         +
               "Local Written Blocks": 0,                                                                                                                                                         +
               "Temp Read Blocks": 0,                                                                                                                                                             +
               "Temp Written Blocks": 0,                                                                                                                                                          +
               "Plans": [                                                                                                                                                                         +
                 {                                                                                                                                                                                +
                   "Node Type": "Seq Scan",                                                                                                                                                       +
                   "Parent Relationship": "Outer",                                                                                                                                                +
                   "Parallel Aware": false,                                                                                                                                                       +
                   "Relation Name": "name",                                                                                                                                                       +
                   "Alias": "n",                                                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                                                          +
                   "Total Cost": 2679.69,                                                                                                                                                         +
                   "Plan Rows": 21680,                                                                                                                                                            +
                   "Plan Width": 4,                                                                                                                                                               +
                   "Actual Startup Time": 18.678,                                                                                                                                                 +
                   "Actual Total Time": 2607.581,                                                                                                                                                 +
                   "Actual Rows": 20911,                                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                                             +
                   "Filter": "((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))",                                                                                                              +
                   "Rows Removed by Filter": 4146580,                                                                                                                                             +
                   "Shared Hit Blocks": 2,                                                                                                                                                        +
                   "Shared Read Blocks": 55611,                                                                                                                                                   +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                    +
                   "Shared Written Blocks": 0,                                                                                                                                                    +
                   "Local Hit Blocks": 0,                                                                                                                                                         +
                   "Local Read Blocks": 0,                                                                                                                                                        +
                   "Local Dirtied Blocks": 0,                                                                                                                                                     +
                   "Local Written Blocks": 0,                                                                                                                                                     +
                   "Temp Read Blocks": 0,                                                                                                                                                         +
                   "Temp Written Blocks": 0                                                                                                                                                       +
                 }                                                                                                                                                                                +
               ]                                                                                                                                                                                  +
             }                                                                                                                                                                                    +
           ]                                                                                                                                                                                      +
         }                                                                                                                                                                                        +
       ]                                                                                                                                                                                          +
     },                                                                                                                                                                                           +
     "Planning Time": 4584.499,                                                                                                                                                                   +
     "Triggers": [                                                                                                                                                                                +
     ],                                                                                                                                                                                           +
     "Execution Time": 18322.785                                                                                                                                                                  +
   }                                                                                                                                                                                              +
 ]
(1 row)

