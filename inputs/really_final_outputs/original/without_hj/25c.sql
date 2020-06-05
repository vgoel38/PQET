                                                                    QUERY PLAN                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                               +
   {                                                                                                                                             +
     "Plan": {                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                 +
       "Strategy": "Plain",                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                 +
       "Parallel Aware": false,                                                                                                                  +
       "Startup Cost": 905.14,                                                                                                                   +
       "Total Cost": 905.14,                                                                                                                     +
       "Plan Rows": 1,                                                                                                                           +
       "Plan Width": 128,                                                                                                                        +
       "Actual Startup Time": 1658884.993,                                                                                                       +
       "Actual Total Time": 1658884.994,                                                                                                         +
       "Actual Rows": 1,                                                                                                                         +
       "Actual Loops": 1,                                                                                                                        +
       "Shared Hit Blocks": 4325807,                                                                                                             +
       "Shared Read Blocks": 369552,                                                                                                             +
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
           "Total Cost": 905.14,                                                                                                                 +
           "Plan Rows": 1,                                                                                                                       +
           "Plan Width": 80,                                                                                                                     +
           "Actual Startup Time": 858.560,                                                                                                       +
           "Actual Total Time": 1658774.632,                                                                                                     +
           "Actual Rows": 26153,                                                                                                                 +
           "Actual Loops": 1,                                                                                                                    +
           "Inner Unique": true,                                                                                                                 +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                          +
           "Rows Removed by Join Filter": 2862,                                                                                                  +
           "Shared Hit Blocks": 4325807,                                                                                                         +
           "Shared Read Blocks": 369552,                                                                                                         +
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
               "Total Cost": 905.09,                                                                                                             +
               "Plan Rows": 1,                                                                                                                   +
               "Plan Width": 84,                                                                                                                 +
               "Actual Startup Time": 858.511,                                                                                                   +
               "Actual Total Time": 1658715.298,                                                                                                 +
               "Actual Rows": 29015,                                                                                                             +
               "Actual Loops": 1,                                                                                                                +
               "Inner Unique": false,                                                                                                            +
               "Join Filter": "(t.id = mi.movie_id)",                                                                                            +
               "Rows Removed by Join Filter": 0,                                                                                                 +
               "Shared Hit Blocks": 4325806,                                                                                                     +
               "Shared Read Blocks": 369552,                                                                                                     +
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
                   "Total Cost": 904.78,                                                                                                         +
                   "Plan Rows": 2,                                                                                                               +
                   "Plan Width": 54,                                                                                                             +
                   "Actual Startup Time": 778.323,                                                                                               +
                   "Actual Total Time": 1389951.120,                                                                                             +
                   "Actual Rows": 22670,                                                                                                         +
                   "Actual Loops": 1,                                                                                                            +
                   "Inner Unique": true,                                                                                                         +
                   "Join Filter": "(mi_idx.movie_id = t.id)",                                                                                    +
                   "Rows Removed by Join Filter": 0,                                                                                             +
                   "Shared Hit Blocks": 3969155,                                                                                                 +
                   "Shared Read Blocks": 289665,                                                                                                 +
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
                       "Startup Cost": 0.07,                                                                                                     +
                       "Total Cost": 904.69,                                                                                                     +
                       "Plan Rows": 2,                                                                                                           +
                       "Plan Width": 33,                                                                                                         +
                       "Actual Startup Time": 732.304,                                                                                           +
                       "Actual Total Time": 1324008.508,                                                                                         +
                       "Actual Rows": 22670,                                                                                                     +
                       "Actual Loops": 1,                                                                                                        +
                       "Inner Unique": true,                                                                                                     +
                       "Shared Hit Blocks": 3888557,                                                                                             +
                       "Shared Read Blocks": 279548,                                                                                             +
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
                           "Startup Cost": 0.06,                                                                                                 +
                           "Total Cost": 903.75,                                                                                                 +
                           "Plan Rows": 5,                                                                                                       +
                           "Plan Width": 22,                                                                                                     +
                           "Actual Startup Time": 716.592,                                                                                       +
                           "Actual Total Time": 1185192.132,                                                                                     +
                           "Actual Rows": 38991,                                                                                                 +
                           "Actual Loops": 1,                                                                                                    +
                           "Inner Unique": false,                                                                                                +
                           "Join Filter": "(mi_idx.movie_id = ci.movie_id)",                                                                     +
                           "Rows Removed by Join Filter": 0,                                                                                     +
                           "Shared Hit Blocks": 3750430,                                                                                         +
                           "Shared Read Blocks": 261473,                                                                                         +
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
                               "Startup Cost": 0.04,                                                                                             +
                               "Total Cost": 902.17,                                                                                             +
                               "Plan Rows": 6,                                                                                                   +
                               "Plan Width": 14,                                                                                                 +
                               "Actual Startup Time": 55.357,                                                                                    +
                               "Actual Total Time": 37187.802,                                                                                   +
                               "Actual Rows": 63701,                                                                                             +
                               "Actual Loops": 1,                                                                                                +
                               "Inner Unique": true,                                                                                             +
                               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                  +
                               "Rows Removed by Join Filter": 127988,                                                                            +
                               "Shared Hit Blocks": 318300,                                                                                      +
                               "Shared Read Blocks": 31124,                                                                                      +
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
                                   "Total Cost": 901.96,                                                                                         +
                                   "Plan Rows": 710,                                                                                             +
                                   "Plan Width": 18,                                                                                             +
                                   "Actual Startup Time": 55.281,                                                                                +
                                   "Actual Total Time": 36836.598,                                                                               +
                                   "Actual Rows": 191689,                                                                                        +
                                   "Actual Loops": 1,                                                                                            +
                                   "Inner Unique": false,                                                                                        +
                                   "Shared Hit Blocks": 318299,                                                                                  +
                                   "Shared Read Blocks": 31124,                                                                                  +
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
                                       "Actual Startup Time": 54.783,                                                                            +
                                       "Actual Total Time": 17338.178,                                                                           +
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
                                           "Actual Startup Time": 31.525,                                                                        +
                                           "Actual Total Time": 234.554,                                                                         +
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
                                           "Actual Startup Time": 15.658,                                                                        +
                                           "Actual Total Time": 2433.716,                                                                        +
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
                                       "Index Name": "movie_id_movie_info_idx",                                                                  +
                                       "Relation Name": "movie_info_idx",                                                                        +
                                       "Alias": "mi_idx",                                                                                        +
                                       "Startup Cost": 0.01,                                                                                     +
                                       "Total Cost": 0.02,                                                                                       +
                                       "Plan Rows": 3,                                                                                           +
                                       "Plan Width": 14,                                                                                         +
                                       "Actual Startup Time": 0.244,                                                                             +
                                       "Actual Total Time": 0.250,                                                                               +
                                       "Actual Rows": 2,                                                                                         +
                                       "Actual Loops": 76714,                                                                                    +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                       "Rows Removed by Index Recheck": 0,                                                                       +
                                       "Shared Hit Blocks": 285899,                                                                              +
                                       "Shared Read Blocks": 10026,                                                                              +
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
                                   "Node Type": "Materialize",                                                                                   +
                                   "Parent Relationship": "Inner",                                                                               +
                                   "Parallel Aware": false,                                                                                      +
                                   "Startup Cost": 0.00,                                                                                         +
                                   "Total Cost": 0.05,                                                                                           +
                                   "Plan Rows": 1,                                                                                               +
                                   "Plan Width": 4,                                                                                              +
                                   "Actual Startup Time": 0.000,                                                                                 +
                                   "Actual Total Time": 0.000,                                                                                   +
                                   "Actual Rows": 1,                                                                                             +
                                   "Actual Loops": 191689,                                                                                       +
                                   "Shared Hit Blocks": 1,                                                                                       +
                                   "Shared Read Blocks": 0,                                                                                      +
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
                                       "Node Type": "Seq Scan",                                                                                  +
                                       "Parent Relationship": "Outer",                                                                           +
                                       "Parallel Aware": false,                                                                                  +
                                       "Relation Name": "info_type",                                                                             +
                                       "Alias": "it2",                                                                                           +
                                       "Startup Cost": 0.00,                                                                                     +
                                       "Total Cost": 0.05,                                                                                       +
                                       "Plan Rows": 1,                                                                                           +
                                       "Plan Width": 4,                                                                                          +
                                       "Actual Startup Time": 0.050,                                                                             +
                                       "Actual Total Time": 0.056,                                                                               +
                                       "Actual Rows": 1,                                                                                         +
                                       "Actual Loops": 1,                                                                                        +
                                       "Filter": "((info)::text = 'votes'::text)",                                                               +
                                       "Rows Removed by Filter": 112,                                                                            +
                                       "Shared Hit Blocks": 1,                                                                                   +
                                       "Shared Read Blocks": 0,                                                                                  +
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
                                 }                                                                                                               +
                               ]                                                                                                                 +
                             },                                                                                                                  +
                             {                                                                                                                   +
                               "Node Type": "Index Scan",                                                                                        +
                               "Parent Relationship": "Inner",                                                                                   +
                               "Parallel Aware": false,                                                                                          +
                               "Scan Direction": "Forward",                                                                                      +
                               "Index Name": "movie_id_cast_info",                                                                               +
                               "Relation Name": "cast_info",                                                                                     +
                               "Alias": "ci",                                                                                                    +
                               "Startup Cost": 0.02,                                                                                             +
                               "Total Cost": 0.26,                                                                                               +
                               "Plan Rows": 1,                                                                                                   +
                               "Plan Width": 8,                                                                                                  +
                               "Actual Startup Time": 15.325,                                                                                    +
                               "Actual Total Time": 18.019,                                                                                      +
                               "Actual Rows": 1,                                                                                                 +
                               "Actual Loops": 63701,                                                                                            +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                               "Rows Removed by Index Recheck": 0,                                                                               +
                               "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",    +
                               "Rows Removed by Filter": 54,                                                                                     +
                               "Shared Hit Blocks": 3432130,                                                                                     +
                               "Shared Read Blocks": 230349,                                                                                     +
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
                           "Index Name": "name_pkey",                                                                                            +
                           "Relation Name": "name",                                                                                              +
                           "Alias": "n",                                                                                                         +
                           "Startup Cost": 0.01,                                                                                                 +
                           "Total Cost": 0.19,                                                                                                   +
                           "Plan Rows": 1,                                                                                                       +
                           "Plan Width": 19,                                                                                                     +
                           "Actual Startup Time": 3.556,                                                                                         +
                           "Actual Total Time": 3.556,                                                                                           +
                           "Actual Rows": 1,                                                                                                     +
                           "Actual Loops": 38991,                                                                                                +
                           "Index Cond": "(id = ci.person_id)",                                                                                  +
                           "Rows Removed by Index Recheck": 0,                                                                                   +
                           "Filter": "((gender)::text = 'm'::text)",                                                                             +
                           "Rows Removed by Filter": 0,                                                                                          +
                           "Shared Hit Blocks": 138127,                                                                                          +
                           "Shared Read Blocks": 18075,                                                                                          +
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
                       "Node Type": "Index Scan",                                                                                                +
                       "Parent Relationship": "Inner",                                                                                           +
                       "Parallel Aware": false,                                                                                                  +
                       "Scan Direction": "Forward",                                                                                              +
                       "Index Name": "title_idx_id",                                                                                             +
                       "Relation Name": "title",                                                                                                 +
                       "Alias": "t",                                                                                                             +
                       "Startup Cost": 0.01,                                                                                                     +
                       "Total Cost": 0.04,                                                                                                       +
                       "Plan Rows": 1,                                                                                                           +
                       "Plan Width": 21,                                                                                                         +
                       "Actual Startup Time": 2.903,                                                                                             +
                       "Actual Total Time": 2.903,                                                                                               +
                       "Actual Rows": 1,                                                                                                         +
                       "Actual Loops": 22670,                                                                                                    +
                       "Index Cond": "(id = mk.movie_id)",                                                                                       +
                       "Rows Removed by Index Recheck": 0,                                                                                       +
                       "Shared Hit Blocks": 80598,                                                                                               +
                       "Shared Read Blocks": 10117,                                                                                              +
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
                   "Node Type": "Index Scan",                                                                                                    +
                   "Parent Relationship": "Inner",                                                                                               +
                   "Parallel Aware": false,                                                                                                      +
                   "Scan Direction": "Forward",                                                                                                  +
                   "Index Name": "movie_id_movie_info",                                                                                          +
                   "Relation Name": "movie_info",                                                                                                +
                   "Alias": "mi",                                                                                                                +
                   "Startup Cost": 0.01,                                                                                                         +
                   "Total Cost": 0.15,                                                                                                           +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 50,                                                                                                             +
                   "Actual Startup Time": 11.587,                                                                                                +
                   "Actual Total Time": 11.851,                                                                                                  +
                   "Actual Rows": 1,                                                                                                             +
                   "Actual Loops": 22670,                                                                                                        +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                     +
                   "Rows Removed by Index Recheck": 0,                                                                                           +
                   "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                               +
                   "Rows Removed by Filter": 88,                                                                                                 +
                   "Shared Hit Blocks": 356651,                                                                                                  +
                   "Shared Read Blocks": 79887,                                                                                                  +
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
               "Actual Loops": 29015,                                                                                                            +
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
                   "Alias": "it1",                                                                                                               +
                   "Startup Cost": 0.00,                                                                                                         +
                   "Total Cost": 0.05,                                                                                                           +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 4,                                                                                                              +
                   "Actual Startup Time": 0.021,                                                                                                 +
                   "Actual Total Time": 0.067,                                                                                                   +
                   "Actual Rows": 1,                                                                                                             +
                   "Actual Loops": 1,                                                                                                            +
                   "Filter": "((info)::text = 'genres'::text)",                                                                                  +
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
         }                                                                                                                                       +
       ]                                                                                                                                         +
     },                                                                                                                                          +
     "Planning Time": 10078.208,                                                                                                                 +
     "Triggers": [                                                                                                                               +
     ],                                                                                                                                          +
     "Execution Time": 1658909.996                                                                                                               +
   }                                                                                                                                             +
 ]
(1 row)
