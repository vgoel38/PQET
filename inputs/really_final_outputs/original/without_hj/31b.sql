                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                       +
   {                                                                                                                                                     +
     "Plan": {                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                         +
       "Strategy": "Plain",                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                         +
       "Parallel Aware": false,                                                                                                                          +
       "Startup Cost": 910.38,                                                                                                                           +
       "Total Cost": 910.38,                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                   +
       "Plan Width": 128,                                                                                                                                +
       "Actual Startup Time": 611003.412,                                                                                                                +
       "Actual Total Time": 611003.413,                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                +
       "Shared Hit Blocks": 2108408,                                                                                                                     +
       "Shared Read Blocks": 144723,                                                                                                                     +
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
           "Node Type": "Nested Loop",                                                                                                                   +
           "Parent Relationship": "Outer",                                                                                                               +
           "Parallel Aware": false,                                                                                                                      +
           "Join Type": "Inner",                                                                                                                         +
           "Startup Cost": 0.12,                                                                                                                         +
           "Total Cost": 910.38,                                                                                                                         +
           "Plan Rows": 1,                                                                                                                               +
           "Plan Width": 80,                                                                                                                             +
           "Actual Startup Time": 302482.912,                                                                                                            +
           "Actual Total Time": 611003.133,                                                                                                              +
           "Actual Rows": 84,                                                                                                                            +
           "Actual Loops": 1,                                                                                                                            +
           "Inner Unique": true,                                                                                                                         +
           "Join Filter": "(mi.movie_id = t.id)",                                                                                                        +
           "Rows Removed by Join Filter": 0,                                                                                                             +
           "Shared Hit Blocks": 2108408,                                                                                                                 +
           "Shared Read Blocks": 144723,                                                                                                                 +
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
               "Node Type": "Nested Loop",                                                                                                               +
               "Parent Relationship": "Outer",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Join Type": "Inner",                                                                                                                     +
               "Startup Cost": 0.11,                                                                                                                     +
               "Total Cost": 910.17,                                                                                                                     +
               "Plan Rows": 1,                                                                                                                           +
               "Plan Width": 83,                                                                                                                         +
               "Actual Startup Time": 90212.974,                                                                                                         +
               "Actual Total Time": 609876.880,                                                                                                          +
               "Actual Rows": 227,                                                                                                                       +
               "Actual Loops": 1,                                                                                                                        +
               "Inner Unique": true,                                                                                                                     +
               "Shared Hit Blocks": 2107562,                                                                                                             +
               "Shared Read Blocks": 144661,                                                                                                             +
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
                   "Node Type": "Nested Loop",                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Join Type": "Inner",                                                                                                                 +
                   "Startup Cost": 0.10,                                                                                                                 +
                   "Total Cost": 909.23,                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                       +
                   "Plan Width": 72,                                                                                                                     +
                   "Actual Startup Time": 90183.770,                                                                                                     +
                   "Actual Total Time": 608762.165,                                                                                                      +
                   "Actual Rows": 254,                                                                                                                   +
                   "Actual Loops": 1,                                                                                                                    +
                   "Inner Unique": true,                                                                                                                 +
                   "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                                      +
                   "Rows Removed by Join Filter": 541,                                                                                                   +
                   "Shared Hit Blocks": 2106663,                                                                                                         +
                   "Shared Read Blocks": 144544,                                                                                                         +
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
                       "Node Type": "Nested Loop",                                                                                                       +
                       "Parent Relationship": "Outer",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Join Type": "Inner",                                                                                                             +
                       "Startup Cost": 0.10,                                                                                                             +
                       "Total Cost": 909.18,                                                                                                             +
                       "Plan Rows": 1,                                                                                                                   +
                       "Plan Width": 76,                                                                                                                 +
                       "Actual Startup Time": 90183.672,                                                                                                 +
                       "Actual Total Time": 608760.733,                                                                                                  +
                       "Actual Rows": 795,                                                                                                               +
                       "Actual Loops": 1,                                                                                                                +
                       "Inner Unique": false,                                                                                                            +
                       "Join Filter": "(mi.movie_id = mi_idx.movie_id)",                                                                                 +
                       "Rows Removed by Join Filter": 0,                                                                                                 +
                       "Shared Hit Blocks": 2106662,                                                                                                     +
                       "Shared Read Blocks": 144544,                                                                                                     +
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
                           "Node Type": "Nested Loop",                                                                                                   +
                           "Parent Relationship": "Outer",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Join Type": "Inner",                                                                                                         +
                           "Startup Cost": 0.08,                                                                                                         +
                           "Total Cost": 909.07,                                                                                                         +
                           "Plan Rows": 1,                                                                                                               +
                           "Plan Width": 62,                                                                                                             +
                           "Actual Startup Time": 90138.450,                                                                                             +
                           "Actual Total Time": 607642.305,                                                                                              +
                           "Actual Rows": 254,                                                                                                           +
                           "Actual Loops": 1,                                                                                                            +
                           "Inner Unique": true,                                                                                                         +
                           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                  +
                           "Rows Removed by Join Filter": 27,                                                                                            +
                           "Shared Hit Blocks": 2105675,                                                                                                 +
                           "Shared Read Blocks": 144482,                                                                                                 +
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
                               "Node Type": "Nested Loop",                                                                                               +
                               "Parent Relationship": "Outer",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Join Type": "Inner",                                                                                                     +
                               "Startup Cost": 0.08,                                                                                                     +
                               "Total Cost": 909.02,                                                                                                     +
                               "Plan Rows": 1,                                                                                                           +
                               "Plan Width": 66,                                                                                                         +
                               "Actual Startup Time": 90138.403,                                                                                         +
                               "Actual Total Time": 607641.453,                                                                                          +
                               "Actual Rows": 281,                                                                                                       +
                               "Actual Loops": 1,                                                                                                        +
                               "Inner Unique": false,                                                                                                    +
                               "Join Filter": "(ci.movie_id = mi.movie_id)",                                                                             +
                               "Rows Removed by Join Filter": 0,                                                                                         +
                               "Shared Hit Blocks": 2105674,                                                                                             +
                               "Shared Read Blocks": 144482,                                                                                             +
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
                                   "Node Type": "Nested Loop",                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Join Type": "Inner",                                                                                                 +
                                   "Startup Cost": 0.07,                                                                                                 +
                                   "Total Cost": 908.25,                                                                                                 +
                                   "Plan Rows": 1,                                                                                                       +
                                   "Plan Width": 16,                                                                                                     +
                                   "Actual Startup Time": 40460.122,                                                                                     +
                                   "Actual Total Time": 601225.359,                                                                                      +
                                   "Actual Rows": 276,                                                                                                   +
                                   "Actual Loops": 1,                                                                                                    +
                                   "Inner Unique": true,                                                                                                 +
                                   "Shared Hit Blocks": 2098496,                                                                                         +
                                   "Shared Read Blocks": 143354,                                                                                         +
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
                                       "Node Type": "Nested Loop",                                                                                       +
                                       "Parent Relationship": "Outer",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Join Type": "Inner",                                                                                             +
                                       "Startup Cost": 0.06,                                                                                             +
                                       "Total Cost": 905.18,                                                                                             +
                                       "Plan Rows": 2,                                                                                                   +
                                       "Plan Width": 20,                                                                                                 +
                                       "Actual Startup Time": 606.419,                                                                                   +
                                       "Actual Total Time": 596357.433,                                                                                  +
                                       "Actual Rows": 11043,                                                                                             +
                                       "Actual Loops": 1,                                                                                                +
                                       "Inner Unique": false,                                                                                            +
                                       "Shared Hit Blocks": 2054682,                                                                                     +
                                       "Shared Read Blocks": 142996,                                                                                     +
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
                                           "Node Type": "Nested Loop",                                                                                   +
                                           "Parent Relationship": "Outer",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Join Type": "Inner",                                                                                         +
                                           "Startup Cost": 0.04,                                                                                         +
                                           "Total Cost": 904.13,                                                                                         +
                                           "Plan Rows": 4,                                                                                               +
                                           "Plan Width": 12,                                                                                             +
                                           "Actual Startup Time": 66.252,                                                                                +
                                           "Actual Total Time": 33204.355,                                                                               +
                                           "Actual Rows": 12705,                                                                                         +
                                           "Actual Loops": 1,                                                                                            +
                                           "Inner Unique": false,                                                                                        +
                                           "Shared Hit Blocks": 377995,                                                                                  +
                                           "Shared Read Blocks": 42262,                                                                                  +
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
                                               "Node Type": "Nested Loop",                                                                               +
                                               "Parent Relationship": "Outer",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Join Type": "Inner",                                                                                     +
                                               "Startup Cost": 0.03,                                                                                     +
                                               "Total Cost": 896.69,                                                                                     +
                                               "Plan Rows": 236,                                                                                         +
                                               "Plan Width": 4,                                                                                          +
                                               "Actual Startup Time": 54.613,                                                                            +
                                               "Actual Total Time": 15010.617,                                                                           +
                                               "Actual Rows": 76714,                                                                                     +
                                               "Actual Loops": 1,                                                                                        +
                                               "Inner Unique": false,                                                                                    +
                                               "Shared Hit Blocks": 32400,                                                                               +
                                               "Shared Read Blocks": 21098,                                                                              +
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
                                                   "Actual Startup Time": 31.357,                                                                        +
                                                   "Actual Total Time": 212.592,                                                                         +
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
                                                 },                                                                                                      +
                                                 {                                                                                                       +
                                                   "Node Type": "Index Scan",                                                                            +
                                                   "Parent Relationship": "Inner",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Scan Direction": "Forward",                                                                          +
                                                   "Index Name": "keyword_id_movie_keyword",                                                             +
                                                   "Relation Name": "movie_keyword",                                                                     +
                                                   "Alias": "mk",                                                                                        +
                                                   "Startup Cost": 0.01,                                                                                 +
                                                   "Total Cost": 121.96,                                                                                 +
                                                   "Plan Rows": 39,                                                                                      +
                                                   "Plan Width": 8,                                                                                      +
                                                   "Actual Startup Time": 15.667,                                                                        +
                                                   "Actual Total Time": 2107.551,                                                                        +
                                                   "Actual Rows": 10959,                                                                                 +
                                                   "Actual Loops": 7,                                                                                    +
                                                   "Index Cond": "(keyword_id = k.id)",                                                                  +
                                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                                   "Shared Hit Blocks": 32386,                                                                           +
                                                   "Shared Read Blocks": 21081,                                                                          +
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
                                               "Node Type": "Index Scan",                                                                                +
                                               "Parent Relationship": "Inner",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Scan Direction": "Forward",                                                                              +
                                               "Index Name": "movie_id_movie_companies",                                                                 +
                                               "Relation Name": "movie_companies",                                                                       +
                                               "Alias": "mc",                                                                                            +
                                               "Startup Cost": 0.01,                                                                                     +
                                               "Total Cost": 0.03,                                                                                       +
                                               "Plan Rows": 1,                                                                                           +
                                               "Plan Width": 8,                                                                                          +
                                               "Actual Startup Time": 0.227,                                                                             +
                                               "Actual Total Time": 0.236,                                                                               +
                                               "Actual Rows": 0,                                                                                         +
                                               "Actual Loops": 76714,                                                                                    +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                               "Rows Removed by Index Recheck": 0,                                                                       +
                                               "Filter": "(note ~~ '%(Blu-ray)%'::text)",                                                                +
                                               "Rows Removed by Filter": 8,                                                                              +
                                               "Shared Hit Blocks": 345595,                                                                              +
                                               "Shared Read Blocks": 21164,                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0                                                                                  +
                                             }                                                                                                           +
                                           ]                                                                                                             +
                                         },                                                                                                              +
                                         {                                                                                                               +
                                           "Node Type": "Index Scan",                                                                                    +
                                           "Parent Relationship": "Inner",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Scan Direction": "Forward",                                                                                  +
                                           "Index Name": "movie_id_cast_info",                                                                           +
                                           "Relation Name": "cast_info",                                                                                 +
                                           "Alias": "ci",                                                                                                +
                                           "Startup Cost": 0.02,                                                                                         +
                                           "Total Cost": 0.26,                                                                                           +
                                           "Plan Rows": 1,                                                                                               +
                                           "Plan Width": 8,                                                                                              +
                                           "Actual Startup Time": 36.850,                                                                                +
                                           "Actual Total Time": 44.323,                                                                                  +
                                           "Actual Rows": 1,                                                                                             +
                                           "Actual Loops": 12705,                                                                                        +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                     +
                                           "Rows Removed by Index Recheck": 0,                                                                           +
                                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                                           "Rows Removed by Filter": 139,                                                                                +
                                           "Shared Hit Blocks": 1676687,                                                                                 +
                                           "Shared Read Blocks": 100734,                                                                                 +
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
                                     },                                                                                                                  +
                                     {                                                                                                                   +
                                       "Node Type": "Index Scan",                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Scan Direction": "Forward",                                                                                      +
                                       "Index Name": "company_name_pkey",                                                                                +
                                       "Relation Name": "company_name",                                                                                  +
                                       "Alias": "cn",                                                                                                    +
                                       "Startup Cost": 0.01,                                                                                             +
                                       "Total Cost": 1.49,                                                                                               +
                                       "Plan Rows": 1,                                                                                                   +
                                       "Plan Width": 4,                                                                                                  +
                                       "Actual Startup Time": 0.439,                                                                                     +
                                       "Actual Total Time": 0.439,                                                                                       +
                                       "Actual Rows": 0,                                                                                                 +
                                       "Actual Loops": 11043,                                                                                            +
                                       "Index Cond": "(id = mc.company_id)",                                                                             +
                                       "Rows Removed by Index Recheck": 0,                                                                               +
                                       "Filter": "(name ~~ 'Lionsgate%'::text)",                                                                         +
                                       "Rows Removed by Filter": 1,                                                                                      +
                                       "Shared Hit Blocks": 43814,                                                                                       +
                                       "Shared Read Blocks": 358,                                                                                        +
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
                                 },                                                                                                                      +
                                 {                                                                                                                       +
                                   "Node Type": "Index Scan",                                                                                            +
                                   "Parent Relationship": "Inner",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Scan Direction": "Forward",                                                                                          +
                                   "Index Name": "movie_id_movie_info",                                                                                  +
                                   "Relation Name": "movie_info",                                                                                        +
                                   "Alias": "mi",                                                                                                        +
                                   "Startup Cost": 0.01,                                                                                                 +
                                   "Total Cost": 0.15,                                                                                                   +
                                   "Plan Rows": 1,                                                                                                       +
                                   "Plan Width": 50,                                                                                                     +
                                   "Actual Startup Time": 23.012,                                                                                        +
                                   "Actual Total Time": 23.243,                                                                                          +
                                   "Actual Rows": 1,                                                                                                     +
                                   "Actual Loops": 276,                                                                                                  +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                                   +
                                   "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                               +
                                   "Rows Removed by Filter": 284,                                                                                        +
                                   "Shared Hit Blocks": 7178,                                                                                            +
                                   "Shared Read Blocks": 1128,                                                                                           +
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
                             },                                                                                                                          +
                             {                                                                                                                           +
                               "Node Type": "Materialize",                                                                                               +
                               "Parent Relationship": "Inner",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Startup Cost": 0.00,                                                                                                     +
                               "Total Cost": 0.05,                                                                                                       +
                               "Plan Rows": 1,                                                                                                           +
                               "Plan Width": 4,                                                                                                          +
                               "Actual Startup Time": 0.001,                                                                                             +
                               "Actual Total Time": 0.001,                                                                                               +
                               "Actual Rows": 1,                                                                                                         +
                               "Actual Loops": 281,                                                                                                      +
                               "Shared Hit Blocks": 1,                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                  +
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
                                   "Relation Name": "info_type",                                                                                         +
                                   "Alias": "it1",                                                                                                       +
                                   "Startup Cost": 0.00,                                                                                                 +
                                   "Total Cost": 0.05,                                                                                                   +
                                   "Plan Rows": 1,                                                                                                       +
                                   "Plan Width": 4,                                                                                                      +
                                   "Actual Startup Time": 0.025,                                                                                         +
                                   "Actual Total Time": 0.072,                                                                                           +
                                   "Actual Rows": 1,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                    +
                                   "Filter": "((info)::text = 'genres'::text)",                                                                          +
                                   "Rows Removed by Filter": 112,                                                                                        +
                                   "Shared Hit Blocks": 1,                                                                                               +
                                   "Shared Read Blocks": 0,                                                                                              +
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
                           "Node Type": "Index Scan",                                                                                                    +
                           "Parent Relationship": "Inner",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Scan Direction": "Forward",                                                                                                  +
                           "Index Name": "movie_id_movie_info_idx",                                                                                      +
                           "Relation Name": "movie_info_idx",                                                                                            +
                           "Alias": "mi_idx",                                                                                                            +
                           "Startup Cost": 0.01,                                                                                                         +
                           "Total Cost": 0.02,                                                                                                           +
                           "Plan Rows": 3,                                                                                                               +
                           "Plan Width": 14,                                                                                                             +
                           "Actual Startup Time": 4.313,                                                                                                 +
                           "Actual Total Time": 4.397,                                                                                                   +
                           "Actual Rows": 3,                                                                                                             +
                           "Actual Loops": 254,                                                                                                          +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                     +
                           "Rows Removed by Index Recheck": 0,                                                                                           +
                           "Shared Hit Blocks": 987,                                                                                                     +
                           "Shared Read Blocks": 62,                                                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                      +
                         }                                                                                                                               +
                       ]                                                                                                                                 +
                     },                                                                                                                                  +
                     {                                                                                                                                   +
                       "Node Type": "Materialize",                                                                                                       +
                       "Parent Relationship": "Inner",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Startup Cost": 0.00,                                                                                                             +
                       "Total Cost": 0.05,                                                                                                               +
                       "Plan Rows": 1,                                                                                                                   +
                       "Plan Width": 4,                                                                                                                  +
                       "Actual Startup Time": 0.000,                                                                                                     +
                       "Actual Total Time": 0.000,                                                                                                       +
                       "Actual Rows": 1,                                                                                                                 +
                       "Actual Loops": 795,                                                                                                              +
                       "Shared Hit Blocks": 1,                                                                                                           +
                       "Shared Read Blocks": 0,                                                                                                          +
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
                           "Node Type": "Seq Scan",                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Relation Name": "info_type",                                                                                                 +
                           "Alias": "it2",                                                                                                               +
                           "Startup Cost": 0.00,                                                                                                         +
                           "Total Cost": 0.05,                                                                                                           +
                           "Plan Rows": 1,                                                                                                               +
                           "Plan Width": 4,                                                                                                              +
                           "Actual Startup Time": 0.063,                                                                                                 +
                           "Actual Total Time": 0.070,                                                                                                   +
                           "Actual Rows": 1,                                                                                                             +
                           "Actual Loops": 1,                                                                                                            +
                           "Filter": "((info)::text = 'votes'::text)",                                                                                   +
                           "Rows Removed by Filter": 112,                                                                                                +
                           "Shared Hit Blocks": 1,                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                      +
                         }                                                                                                                               +
                       ]                                                                                                                                 +
                     }                                                                                                                                   +
                   ]                                                                                                                                     +
                 },                                                                                                                                      +
                 {                                                                                                                                       +
                   "Node Type": "Index Scan",                                                                                                            +
                   "Parent Relationship": "Inner",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Scan Direction": "Forward",                                                                                                          +
                   "Index Name": "name_pkey",                                                                                                            +
                   "Relation Name": "name",                                                                                                              +
                   "Alias": "n",                                                                                                                         +
                   "Startup Cost": 0.01,                                                                                                                 +
                   "Total Cost": 0.19,                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                       +
                   "Plan Width": 19,                                                                                                                     +
                   "Actual Startup Time": 4.385,                                                                                                         +
                   "Actual Total Time": 4.385,                                                                                                           +
                   "Actual Rows": 1,                                                                                                                     +
                   "Actual Loops": 254,                                                                                                                  +
                   "Index Cond": "(id = ci.person_id)",                                                                                                  +
                   "Rows Removed by Index Recheck": 0,                                                                                                   +
                   "Filter": "((gender)::text = 'm'::text)",                                                                                             +
                   "Rows Removed by Filter": 0,                                                                                                          +
                   "Shared Hit Blocks": 899,                                                                                                             +
                   "Shared Read Blocks": 117,                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                              +
                 }                                                                                                                                       +
               ]                                                                                                                                         +
             },                                                                                                                                          +
             {                                                                                                                                           +
               "Node Type": "Index Scan",                                                                                                                +
               "Parent Relationship": "Inner",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Scan Direction": "Forward",                                                                                                              +
               "Index Name": "title_idx_id",                                                                                                             +
               "Relation Name": "title",                                                                                                                 +
               "Alias": "t",                                                                                                                             +
               "Startup Cost": 0.01,                                                                                                                     +
               "Total Cost": 0.04,                                                                                                                       +
               "Plan Rows": 1,                                                                                                                           +
               "Plan Width": 21,                                                                                                                         +
               "Actual Startup Time": 4.959,                                                                                                             +
               "Actual Total Time": 4.959,                                                                                                               +
               "Actual Rows": 0,                                                                                                                         +
               "Actual Loops": 227,                                                                                                                      +
               "Index Cond": "(id = mk.movie_id)",                                                                                                       +
               "Rows Removed by Index Recheck": 0,                                                                                                       +
               "Filter": "((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))",        +
               "Rows Removed by Filter": 1,                                                                                                              +
               "Shared Hit Blocks": 846,                                                                                                                 +
               "Shared Read Blocks": 62,                                                                                                                 +
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
     },                                                                                                                                                  +
     "Planning Time": 15234.152,                                                                                                                         +
     "Triggers": [                                                                                                                                       +
     ],                                                                                                                                                  +
     "Execution Time": 611025.539                                                                                                                        +
   }                                                                                                                                                     +
 ]
(1 row)
