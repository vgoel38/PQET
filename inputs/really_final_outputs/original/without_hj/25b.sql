                                                                  QUERY PLAN                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                           +
   {                                                                                                                                         +
     "Plan": {                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                             +
       "Strategy": "Plain",                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                             +
       "Parallel Aware": false,                                                                                                              +
       "Startup Cost": 648.99,                                                                                                               +
       "Total Cost": 648.99,                                                                                                                 +
       "Plan Rows": 1,                                                                                                                       +
       "Plan Width": 128,                                                                                                                    +
       "Actual Startup Time": 1547404.292,                                                                                                   +
       "Actual Total Time": 1547404.292,                                                                                                     +
       "Actual Rows": 1,                                                                                                                     +
       "Actual Loops": 1,                                                                                                                    +
       "Shared Hit Blocks": 3230697,                                                                                                         +
       "Shared Read Blocks": 347129,                                                                                                         +
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
           "Total Cost": 648.99,                                                                                                             +
           "Plan Rows": 1,                                                                                                                   +
           "Plan Width": 80,                                                                                                                 +
           "Actual Startup Time": 1036111.097,                                                                                               +
           "Actual Total Time": 1547404.184,                                                                                                 +
           "Actual Rows": 6,                                                                                                                 +
           "Actual Loops": 1,                                                                                                                +
           "Inner Unique": true,                                                                                                             +
           "Join Filter": "(mi.movie_id = t.id)",                                                                                            +
           "Rows Removed by Join Filter": 0,                                                                                                 +
           "Shared Hit Blocks": 3230697,                                                                                                     +
           "Shared Read Blocks": 347129,                                                                                                     +
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
               "Total Cost": 648.78,                                                                                                         +
               "Plan Rows": 1,                                                                                                               +
               "Plan Width": 79,                                                                                                             +
               "Actual Startup Time": 81090.464,                                                                                             +
               "Actual Total Time": 1516178.591,                                                                                             +
               "Actual Rows": 4407,                                                                                                          +
               "Actual Loops": 1,                                                                                                            +
               "Inner Unique": true,                                                                                                         +
               "Join Filter": "(mi.info_type_id = it1.id)",                                                                                  +
               "Rows Removed by Join Filter": 506,                                                                                           +
               "Shared Hit Blocks": 3215603,                                                                                                 +
               "Shared Read Blocks": 344589,                                                                                                 +
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
                   "Total Cost": 648.73,                                                                                                     +
                   "Plan Rows": 1,                                                                                                           +
                   "Plan Width": 83,                                                                                                         +
                   "Actual Startup Time": 81090.418,                                                                                         +
                   "Actual Total Time": 1516163.649,                                                                                         +
                   "Actual Rows": 4913,                                                                                                      +
                   "Actual Loops": 1,                                                                                                        +
                   "Inner Unique": false,                                                                                                    +
                   "Join Filter": "(mi_idx.movie_id = mi.movie_id)",                                                                         +
                   "Rows Removed by Join Filter": 0,                                                                                         +
                   "Shared Hit Blocks": 3215602,                                                                                             +
                   "Shared Read Blocks": 344589,                                                                                             +
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
                       "Actual Startup Time": 732.257,                                                                                       +
                       "Actual Total Time": 1276276.190,                                                                                     +
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
                           "Actual Startup Time": 716.530,                                                                                   +
                           "Actual Total Time": 1150876.262,                                                                                 +
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
                               "Actual Startup Time": 55.507,                                                                                +
                               "Actual Total Time": 32275.093,                                                                               +
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
                                   "Actual Startup Time": 55.425,                                                                            +
                                   "Actual Total Time": 31970.531,                                                                           +
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
                                       "Actual Startup Time": 54.780,                                                                        +
                                       "Actual Total Time": 15567.321,                                                                       +
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
                                           "Actual Startup Time": 31.500,                                                                    +
                                           "Actual Total Time": 168.911,                                                                     +
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
                                           "Actual Startup Time": 17.467,                                                                    +
                                           "Actual Total Time": 3067.893,                                                                    +
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
                                       "Actual Startup Time": 0.253,                                                                         +
                                       "Actual Total Time": 0.259,                                                                           +
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
                                   "Actual Total Time": 0.001,                                                                               +
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
                                       "Actual Startup Time": 0.053,                                                                         +
                                       "Actual Total Time": 0.059,                                                                           +
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
                               "Actual Startup Time": 18.774,                                                                                +
                               "Actual Total Time": 22.034,                                                                                  +
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
                           "Actual Startup Time": 4.137,                                                                                     +
                           "Actual Total Time": 4.137,                                                                                       +
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
                       "Index Name": "movie_id_movie_info",                                                                                  +
                       "Relation Name": "movie_info",                                                                                        +
                       "Alias": "mi",                                                                                                        +
                       "Startup Cost": 0.01,                                                                                                 +
                       "Total Cost": 0.15,                                                                                                   +
                       "Plan Rows": 1,                                                                                                       +
                       "Plan Width": 50,                                                                                                     +
                       "Actual Startup Time": 13.600,                                                                                        +
                       "Actual Total Time": 13.675,                                                                                          +
                       "Actual Rows": 0,                                                                                                     +
                       "Actual Loops": 17537,                                                                                                +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
                       "Rows Removed by Index Recheck": 0,                                                                                   +
                       "Filter": "(info = 'Horror'::text)",                                                                                  +
                       "Rows Removed by Filter": 86,                                                                                         +
                       "Shared Hit Blocks": 259555,                                                                                          +
                       "Shared Read Blocks": 73700,                                                                                          +
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
                   "Actual Startup Time": 0.000,                                                                                             +
                   "Actual Total Time": 0.000,                                                                                               +
                   "Actual Rows": 1,                                                                                                         +
                   "Actual Loops": 4913,                                                                                                     +
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
                       "Actual Startup Time": 0.024,                                                                                         +
                       "Actual Total Time": 0.070,                                                                                           +
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
               "Index Name": "title_idx_id",                                                                                                 +
               "Relation Name": "title",                                                                                                     +
               "Alias": "t",                                                                                                                 +
               "Startup Cost": 0.01,                                                                                                         +
               "Total Cost": 0.04,                                                                                                           +
               "Plan Rows": 1,                                                                                                               +
               "Plan Width": 21,                                                                                                             +
               "Actual Startup Time": 7.082,                                                                                                 +
               "Actual Total Time": 7.082,                                                                                                   +
               "Actual Rows": 0,                                                                                                             +
               "Actual Loops": 4407,                                                                                                         +
               "Index Cond": "(id = mk.movie_id)",                                                                                           +
               "Rows Removed by Index Recheck": 0,                                                                                           +
               "Filter": "((production_year > 2010) AND (title ~~ 'Vampire%'::text))",                                                       +
               "Rows Removed by Filter": 1,                                                                                                  +
               "Shared Hit Blocks": 15094,                                                                                                   +
               "Shared Read Blocks": 2540,                                                                                                   +
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
     "Planning Time": 9876.626,                                                                                                              +
     "Triggers": [                                                                                                                           +
     ],                                                                                                                                      +
     "Execution Time": 1547439.238                                                                                                           +
   }                                                                                                                                         +
 ]
(1 row)

