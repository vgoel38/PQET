                                                                  QUERY PLAN                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                           +
   {                                                                                                                                         +
     "Plan": {                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                             +
       "Strategy": "Plain",                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                             +
       "Parallel Aware": false,                                                                                                              +
       "Startup Cost": 648.86,                                                                                                               +
       "Total Cost": 648.86,                                                                                                                 +
       "Plan Rows": 1,                                                                                                                       +
       "Plan Width": 128,                                                                                                                    +
       "Actual Startup Time": 1583685.221,                                                                                                   +
       "Actual Total Time": 1583685.221,                                                                                                     +
       "Actual Rows": 1,                                                                                                                     +
       "Actual Loops": 1,                                                                                                                    +
       "Shared Hit Blocks": 3276532,                                                                                                         +
       "Shared Read Blocks": 353832,                                                                                                         +
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
           "Total Cost": 648.86,                                                                                                             +
           "Plan Rows": 1,                                                                                                                   +
           "Plan Width": 80,                                                                                                                 +
           "Actual Startup Time": 84939.927,                                                                                                 +
           "Actual Total Time": 1583635.477,                                                                                                 +
           "Actual Rows": 4407,                                                                                                              +
           "Actual Loops": 1,                                                                                                                +
           "Inner Unique": true,                                                                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                      +
           "Rows Removed by Join Filter": 506,                                                                                               +
           "Shared Hit Blocks": 3276532,                                                                                                     +
           "Shared Read Blocks": 353832,                                                                                                     +
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
               "Startup Cost": 0.10,                                                                                                         +
               "Total Cost": 648.81,                                                                                                         +
               "Plan Rows": 1,                                                                                                               +
               "Plan Width": 84,                                                                                                             +
               "Actual Startup Time": 84939.883,                                                                                             +
               "Actual Total Time": 1583621.538,                                                                                             +
               "Actual Rows": 4913,                                                                                                          +
               "Actual Loops": 1,                                                                                                            +
               "Inner Unique": false,                                                                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                             +
               "Shared Hit Blocks": 3276531,                                                                                                 +
               "Shared Read Blocks": 353832,                                                                                                 +
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
                   "Total Cost": 648.51,                                                                                                     +
                   "Plan Rows": 2,                                                                                                           +
                   "Plan Width": 54,                                                                                                         +
                   "Actual Startup Time": 786.309,                                                                                           +
                   "Actual Total Time": 1342815.352,                                                                                         +
                   "Actual Rows": 17537,                                                                                                     +
                   "Actual Loops": 1,                                                                                                        +
                   "Inner Unique": true,                                                                                                     +
                   "Join Filter": "(mi_idx.movie_id = t.id)",                                                                                +
                   "Rows Removed by Join Filter": 0,                                                                                         +
                   "Shared Hit Blocks": 3016976,                                                                                             +
                   "Shared Read Blocks": 280132,                                                                                             +
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
                       "Total Cost": 648.42,                                                                                                 +
                       "Plan Rows": 2,                                                                                                       +
                       "Plan Width": 33,                                                                                                     +
                       "Actual Startup Time": 740.286,                                                                                       +
                       "Actual Total Time": 1284097.619,                                                                                     +
                       "Actual Rows": 17537,                                                                                                 +
                       "Actual Loops": 1,                                                                                                    +
                       "Inner Unique": true,                                                                                                 +
                       "Shared Hit Blocks": 2956047,                                                                                         +
                       "Shared Read Blocks": 270889,                                                                                         +
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
                           "Total Cost": 647.67,                                                                                             +
                           "Plan Rows": 4,                                                                                                   +
                           "Plan Width": 22,                                                                                                 +
                           "Actual Startup Time": 724.559,                                                                                   +
                           "Actual Total Time": 1158517.809,                                                                                 +
                           "Actual Rows": 30276,                                                                                             +
                           "Actual Loops": 1,                                                                                                +
                           "Inner Unique": false,                                                                                            +
                           "Join Filter": "(mi_idx.movie_id = ci.movie_id)",                                                                 +
                           "Rows Removed by Join Filter": 0,                                                                                 +
                           "Shared Hit Blocks": 2851486,                                                                                     +
                           "Shared Read Blocks": 254138,                                                                                     +
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
                               "Total Cost": 646.61,                                                                                         +
                               "Plan Rows": 4,                                                                                               +
                               "Plan Width": 14,                                                                                             +
                               "Actual Startup Time": 46.678,                                                                                +
                               "Actual Total Time": 32973.645,                                                                               +
                               "Actual Rows": 50760,                                                                                         +
                               "Actual Loops": 1,                                                                                            +
                               "Inner Unique": true,                                                                                         +
                               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                              +
                               "Rows Removed by Join Filter": 101960,                                                                        +
                               "Shared Hit Blocks": 250681,                                                                                  +
                               "Shared Read Blocks": 29539,                                                                                  +
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
                                   "Startup Cost": 0.04,                                                                                     +
                                   "Total Cost": 646.45,                                                                                     +
                                   "Plan Rows": 508,                                                                                         +
                                   "Plan Width": 18,                                                                                         +
                                   "Actual Startup Time": 46.600,                                                                            +
                                   "Actual Total Time": 32678.620,                                                                           +
                                   "Actual Rows": 152720,                                                                                    +
                                   "Actual Loops": 1,                                                                                        +
                                   "Inner Unique": false,                                                                                    +
                                   "Shared Hit Blocks": 250680,                                                                              +
                                   "Shared Read Blocks": 29539,                                                                              +
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
                                       "Node Type": "Nested Loop",                                                                           +
                                       "Parent Relationship": "Outer",                                                                       +
                                       "Parallel Aware": false,                                                                              +
                                       "Join Type": "Inner",                                                                                 +
                                       "Startup Cost": 0.03,                                                                                 +
                                       "Total Cost": 642.68,                                                                                 +
                                       "Plan Rows": 169,                                                                                     +
                                       "Plan Width": 4,                                                                                      +
                                       "Actual Startup Time": 46.105,                                                                        +
                                       "Actual Total Time": 15963.811,                                                                       +
                                       "Actual Rows": 62096,                                                                                 +
                                       "Actual Loops": 1,                                                                                    +
                                       "Inner Unique": false,                                                                                +
                                       "Shared Hit Blocks": 21673,                                                                           +
                                       "Shared Read Blocks": 19867,                                                                          +
                                       "Shared Dirtied Blocks": 0,                                                                           +
                                       "Shared Written Blocks": 0,                                                                           +
                                       "Local Hit Blocks": 0,                                                                                +
                                       "Local Read Blocks": 0,                                                                               +
                                       "Local Dirtied Blocks": 0,                                                                            +
                                       "Local Written Blocks": 0,                                                                            +
                                       "Temp Read Blocks": 0,                                                                                +
                                       "Temp Written Blocks": 0,                                                                             +
                                       "Plans": [                                                                                            +
                                         {                                                                                                   +
                                           "Node Type": "Index Scan",                                                                        +
                                           "Parent Relationship": "Outer",                                                                   +
                                           "Parallel Aware": false,                                                                          +
                                           "Scan Direction": "Forward",                                                                      +
                                           "Index Name": "keyword_idx_keyword",                                                              +
                                           "Relation Name": "keyword",                                                                       +
                                           "Alias": "k",                                                                                     +
                                           "Startup Cost": 0.01,                                                                             +
                                           "Total Cost": 30.66,                                                                              +
                                           "Plan Rows": 5,                                                                                   +
                                           "Plan Width": 4,                                                                                  +
                                           "Actual Startup Time": 22.843,                                                                    +
                                           "Actual Total Time": 169.204,                                                                     +
                                           "Actual Rows": 5,                                                                                 +
                                           "Actual Loops": 1,                                                                                +
                                           "Index Cond": "(keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))",              +
                                           "Rows Removed by Index Recheck": 0,                                                               +
                                           "Shared Hit Blocks": 10,                                                                          +
                                           "Shared Read Blocks": 13,                                                                         +
                                           "Shared Dirtied Blocks": 0,                                                                       +
                                           "Shared Written Blocks": 0,                                                                       +
                                           "Local Hit Blocks": 0,                                                                            +
                                           "Local Read Blocks": 0,                                                                           +
                                           "Local Dirtied Blocks": 0,                                                                        +
                                           "Local Written Blocks": 0,                                                                        +
                                           "Temp Read Blocks": 0,                                                                            +
                                           "Temp Written Blocks": 0                                                                          +
                                         },                                                                                                  +
                                         {                                                                                                   +
                                           "Node Type": "Index Scan",                                                                        +
                                           "Parent Relationship": "Inner",                                                                   +
                                           "Parallel Aware": false,                                                                          +
                                           "Scan Direction": "Forward",                                                                      +
                                           "Index Name": "keyword_id_movie_keyword",                                                         +
                                           "Relation Name": "movie_keyword",                                                                 +
                                           "Alias": "mk",                                                                                    +
                                           "Startup Cost": 0.01,                                                                             +
                                           "Total Cost": 122.40,                                                                             +
                                           "Plan Rows": 39,                                                                                  +
                                           "Plan Width": 8,                                                                                  +
                                           "Actual Startup Time": 17.482,                                                                    +
                                           "Actual Total Time": 3147.299,                                                                    +
                                           "Actual Rows": 12419,                                                                             +
                                           "Actual Loops": 5,                                                                                +
                                           "Index Cond": "(keyword_id = k.id)",                                                              +
                                           "Rows Removed by Index Recheck": 0,                                                               +
                                           "Shared Hit Blocks": 21663,                                                                       +
                                           "Shared Read Blocks": 19854,                                                                      +
                                           "Shared Dirtied Blocks": 0,                                                                       +
                                           "Shared Written Blocks": 0,                                                                       +
                                           "Local Hit Blocks": 0,                                                                            +
                                           "Local Read Blocks": 0,                                                                           +
                                           "Local Dirtied Blocks": 0,                                                                        +
                                           "Local Written Blocks": 0,                                                                        +
                                           "Temp Read Blocks": 0,                                                                            +
                                           "Temp Written Blocks": 0                                                                          +
                                         }                                                                                                   +
                                       ]                                                                                                     +
                                     },                                                                                                      +
                                     {                                                                                                       +
                                       "Node Type": "Index Scan",                                                                            +
                                       "Parent Relationship": "Inner",                                                                       +
                                       "Parallel Aware": false,                                                                              +
                                       "Scan Direction": "Forward",                                                                          +
                                       "Index Name": "movie_id_movie_info_idx",                                                              +
                                       "Relation Name": "movie_info_idx",                                                                    +
                                       "Alias": "mi_idx",                                                                                    +
                                       "Startup Cost": 0.01,                                                                                 +
                                       "Total Cost": 0.02,                                                                                   +
                                       "Plan Rows": 3,                                                                                       +
                                       "Plan Width": 14,                                                                                     +
                                       "Actual Startup Time": 0.258,                                                                         +
                                       "Actual Total Time": 0.264,                                                                           +
                                       "Actual Rows": 2,                                                                                     +
                                       "Actual Loops": 62096,                                                                                +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                             +
                                       "Rows Removed by Index Recheck": 0,                                                                   +
                                       "Shared Hit Blocks": 229007,                                                                          +
                                       "Shared Read Blocks": 9672,                                                                           +
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
                                   "Node Type": "Materialize",                                                                               +
                                   "Parent Relationship": "Inner",                                                                           +
                                   "Parallel Aware": false,                                                                                  +
                                   "Startup Cost": 0.00,                                                                                     +
                                   "Total Cost": 0.05,                                                                                       +
                                   "Plan Rows": 1,                                                                                           +
                                   "Plan Width": 4,                                                                                          +
                                   "Actual Startup Time": 0.000,                                                                             +
                                   "Actual Total Time": 0.000,                                                                               +
                                   "Actual Rows": 1,                                                                                         +
                                   "Actual Loops": 152720,                                                                                   +
                                   "Shared Hit Blocks": 1,                                                                                   +
                                   "Shared Read Blocks": 0,                                                                                  +
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
                                       "Relation Name": "info_type",                                                                         +
                                       "Alias": "it2",                                                                                       +
                                       "Startup Cost": 0.00,                                                                                 +
                                       "Total Cost": 0.05,                                                                                   +
                                       "Plan Rows": 1,                                                                                       +
                                       "Plan Width": 4,                                                                                      +
                                       "Actual Startup Time": 0.051,                                                                         +
                                       "Actual Total Time": 0.058,                                                                           +
                                       "Actual Rows": 1,                                                                                     +
                                       "Actual Loops": 1,                                                                                    +
                                       "Filter": "((info)::text = 'votes'::text)",                                                           +
                                       "Rows Removed by Filter": 112,                                                                        +
                                       "Shared Hit Blocks": 1,                                                                               +
                                       "Shared Read Blocks": 0,                                                                              +
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
                               "Actual Startup Time": 18.836,                                                                                +
                               "Actual Total Time": 22.171,                                                                                  +
                               "Actual Rows": 1,                                                                                             +
                               "Actual Loops": 50760,                                                                                        +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                     +
                               "Rows Removed by Index Recheck": 0,                                                                           +
                               "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                               "Rows Removed by Filter": 52,                                                                                 +
                               "Shared Hit Blocks": 2600805,                                                                                 +
                               "Shared Read Blocks": 224599,                                                                                 +
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
                           "Index Name": "name_pkey",                                                                                        +
                           "Relation Name": "name",                                                                                          +
                           "Alias": "n",                                                                                                     +
                           "Startup Cost": 0.01,                                                                                             +
                           "Total Cost": 0.19,                                                                                               +
                           "Plan Rows": 1,                                                                                                   +
                           "Plan Width": 19,                                                                                                 +
                           "Actual Startup Time": 4.144,                                                                                     +
                           "Actual Total Time": 4.144,                                                                                       +
                           "Actual Rows": 1,                                                                                                 +
                           "Actual Loops": 30276,                                                                                            +
                           "Index Cond": "(id = ci.person_id)",                                                                              +
                           "Rows Removed by Index Recheck": 0,                                                                               +
                           "Filter": "((gender)::text = 'm'::text)",                                                                         +
                           "Rows Removed by Filter": 0,                                                                                      +
                           "Shared Hit Blocks": 104561,                                                                                      +
                           "Shared Read Blocks": 16751,                                                                                      +
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
                       "Index Name": "title_idx_id",                                                                                         +
                       "Relation Name": "title",                                                                                             +
                       "Alias": "t",                                                                                                         +
                       "Startup Cost": 0.01,                                                                                                 +
                       "Total Cost": 0.04,                                                                                                   +
                       "Plan Rows": 1,                                                                                                       +
                       "Plan Width": 21,                                                                                                     +
                       "Actual Startup Time": 3.342,                                                                                         +
                       "Actual Total Time": 3.342,                                                                                           +
                       "Actual Rows": 1,                                                                                                     +
                       "Actual Loops": 17537,                                                                                                +
                       "Index Cond": "(id = mk.movie_id)",                                                                                   +
                       "Rows Removed by Index Recheck": 0,                                                                                   +
                       "Shared Hit Blocks": 60929,                                                                                           +
                       "Shared Read Blocks": 9243,                                                                                           +
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
                   "Index Name": "movie_id_movie_info",                                                                                      +
                   "Relation Name": "movie_info",                                                                                            +
                   "Alias": "mi",                                                                                                            +
                   "Startup Cost": 0.01,                                                                                                     +
                   "Total Cost": 0.15,                                                                                                       +
                   "Plan Rows": 1,                                                                                                           +
                   "Plan Width": 50,                                                                                                         +
                   "Actual Startup Time": 13.652,                                                                                            +
                   "Actual Total Time": 13.727,                                                                                              +
                   "Actual Rows": 0,                                                                                                         +
                   "Actual Loops": 17537,                                                                                                    +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                       +
                   "Filter": "(info = 'Horror'::text)",                                                                                      +
                   "Rows Removed by Filter": 86,                                                                                             +
                   "Shared Hit Blocks": 259555,                                                                                              +
                   "Shared Read Blocks": 73700,                                                                                              +
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
               "Node Type": "Materialize",                                                                                                   +
               "Parent Relationship": "Inner",                                                                                               +
               "Parallel Aware": false,                                                                                                      +
               "Startup Cost": 0.00,                                                                                                         +
               "Total Cost": 0.05,                                                                                                           +
               "Plan Rows": 1,                                                                                                               +
               "Plan Width": 4,                                                                                                              +
               "Actual Startup Time": 0.001,                                                                                                 +
               "Actual Total Time": 0.001,                                                                                                   +
               "Actual Rows": 1,                                                                                                             +
               "Actual Loops": 4913,                                                                                                         +
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
                   "Relation Name": "info_type",                                                                                             +
                   "Alias": "it1",                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                     +
                   "Total Cost": 0.05,                                                                                                       +
                   "Plan Rows": 1,                                                                                                           +
                   "Plan Width": 4,                                                                                                          +
                   "Actual Startup Time": 0.023,                                                                                             +
                   "Actual Total Time": 0.068,                                                                                               +
                   "Actual Rows": 1,                                                                                                         +
                   "Actual Loops": 1,                                                                                                        +
                   "Filter": "((info)::text = 'genres'::text)",                                                                              +
                   "Rows Removed by Filter": 112,                                                                                            +
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
             }                                                                                                                               +
           ]                                                                                                                                 +
         }                                                                                                                                   +
       ]                                                                                                                                     +
     },                                                                                                                                      +
     "Planning Time": 9934.742,                                                                                                              +
     "Triggers": [                                                                                                                           +
     ],                                                                                                                                      +
     "Execution Time": 1583729.033                                                                                                           +
   }                                                                                                                                         +
 ]
(1 row)
