                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                    +
   {                                                                                                                                                                  +
     "Plan": {                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                       +
       "Startup Cost": 7025.63,                                                                                                                                       +
       "Total Cost": 7025.63,                                                                                                                                         +
       "Plan Rows": 1,                                                                                                                                                +
       "Plan Width": 96,                                                                                                                                              +
       "Actual Startup Time": 25548.409,                                                                                                                              +
       "Actual Total Time": 25548.409,                                                                                                                                +
       "Actual Rows": 1,                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                             +
       "Shared Hit Blocks": 11588,                                                                                                                                    +
       "Shared Read Blocks": 69783,                                                                                                                                   +
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
           "Node Type": "Nested Loop",                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                            +
           "Parallel Aware": false,                                                                                                                                   +
           "Join Type": "Inner",                                                                                                                                      +
           "Startup Cost": 5875.14,                                                                                                                                   +
           "Total Cost": 7025.63,                                                                                                                                     +
           "Plan Rows": 1,                                                                                                                                            +
           "Plan Width": 49,                                                                                                                                          +
           "Actual Startup Time": 5142.195,                                                                                                                           +
           "Actual Total Time": 25547.920,                                                                                                                            +
           "Actual Rows": 121,                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                         +
           "Inner Unique": true,                                                                                                                                      +
           "Shared Hit Blocks": 11588,                                                                                                                                +
           "Shared Read Blocks": 69783,                                                                                                                               +
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
               "Node Type": "Nested Loop",                                                                                                                            +
               "Parent Relationship": "Outer",                                                                                                                        +
               "Parallel Aware": false,                                                                                                                               +
               "Join Type": "Inner",                                                                                                                                  +
               "Startup Cost": 5875.13,                                                                                                                               +
               "Total Cost": 7025.26,                                                                                                                                 +
               "Plan Rows": 2,                                                                                                                                        +
               "Plan Width": 37,                                                                                                                                      +
               "Actual Startup Time": 5116.672,                                                                                                                       +
               "Actual Total Time": 25193.991,                                                                                                                        +
               "Actual Rows": 127,                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                     +
               "Inner Unique": true,                                                                                                                                  +
               "Shared Hit Blocks": 11162,                                                                                                                            +
               "Shared Read Blocks": 69725,                                                                                                                           +
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
                   "Node Type": "Nested Loop",                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                           +
                   "Join Type": "Inner",                                                                                                                              +
                   "Startup Cost": 5875.12,                                                                                                                           +
                   "Total Cost": 7024.60,                                                                                                                             +
                   "Plan Rows": 4,                                                                                                                                    +
                   "Plan Width": 28,                                                                                                                                  +
                   "Actual Startup Time": 3902.698,                                                                                                                   +
                   "Actual Total Time": 21665.033,                                                                                                                    +
                   "Actual Rows": 359,                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                 +
                   "Inner Unique": true,                                                                                                                              +
                   "Shared Hit Blocks": 9917,                                                                                                                         +
                   "Shared Read Blocks": 69530,                                                                                                                       +
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
                       "Node Type": "Nested Loop",                                                                                                                    +
                       "Parent Relationship": "Outer",                                                                                                                +
                       "Parallel Aware": false,                                                                                                                       +
                       "Join Type": "Inner",                                                                                                                          +
                       "Startup Cost": 5875.10,                                                                                                                       +
                       "Total Cost": 7023.96,                                                                                                                         +
                       "Plan Rows": 12,                                                                                                                               +
                       "Plan Width": 32,                                                                                                                              +
                       "Actual Startup Time": 3897.896,                                                                                                               +
                       "Actual Total Time": 20201.227,                                                                                                                +
                       "Actual Rows": 373,                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                             +
                       "Inner Unique": false,                                                                                                                         +
                       "Shared Hit Blocks": 8565,                                                                                                                     +
                       "Shared Read Blocks": 69390,                                                                                                                   +
                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                                      +
                       "Plans": [                                                                                                                                     +
                         {                                                                                                                                            +
                           "Node Type": "Nested Loop",                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                            +
                           "Parallel Aware": false,                                                                                                                   +
                           "Join Type": "Inner",                                                                                                                      +
                           "Startup Cost": 5875.09,                                                                                                                   +
                           "Total Cost": 7017.93,                                                                                                                     +
                           "Plan Rows": 57,                                                                                                                           +
                           "Plan Width": 24,                                                                                                                          +
                           "Actual Startup Time": 3851.815,                                                                                                           +
                           "Actual Total Time": 15686.081,                                                                                                            +
                           "Actual Rows": 425,                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                         +
                           "Inner Unique": true,                                                                                                                      +
                           "Join Filter": "(ci.role_id = rt.id)",                                                                                                     +
                           "Rows Removed by Join Filter": 0,                                                                                                          +
                           "Shared Hit Blocks": 7096,                                                                                                                 +
                           "Shared Read Blocks": 68979,                                                                                                               +
                           "Shared Dirtied Blocks": 0,                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                     +
                           "Temp Written Blocks": 0,                                                                                                                  +
                           "Plans": [                                                                                                                                 +
                             {                                                                                                                                        +
                               "Node Type": "Nested Loop",                                                                                                            +
                               "Parent Relationship": "Outer",                                                                                                        +
                               "Parallel Aware": false,                                                                                                               +
                               "Join Type": "Inner",                                                                                                                  +
                               "Startup Cost": 5875.09,                                                                                                               +
                               "Total Cost": 7017.74,                                                                                                                 +
                               "Plan Rows": 684,                                                                                                                      +
                               "Plan Width": 28,                                                                                                                      +
                               "Actual Startup Time": 3851.793,                                                                                                       +
                               "Actual Total Time": 15684.865,                                                                                                        +
                               "Actual Rows": 425,                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                     +
                               "Inner Unique": false,                                                                                                                 +
                               "Join Filter": "(n.id = ci.person_id)",                                                                                                +
                               "Rows Removed by Join Filter": 0,                                                                                                      +
                               "Shared Hit Blocks": 7095,                                                                                                             +
                               "Shared Read Blocks": 68979,                                                                                                           +
                               "Shared Dirtied Blocks": 0,                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                              +
                               "Plans": [                                                                                                                             +
                                 {                                                                                                                                    +
                                   "Node Type": "Merge Join",                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                    +
                                   "Parallel Aware": false,                                                                                                           +
                                   "Join Type": "Inner",                                                                                                              +
                                   "Startup Cost": 5875.07,                                                                                                           +
                                   "Total Cost": 6015.68,                                                                                                             +
                                   "Plan Rows": 819,                                                                                                                  +
                                   "Plan Width": 24,                                                                                                                  +
                                   "Actual Startup Time": 3442.105,                                                                                                   +
                                   "Actual Total Time": 3569.564,                                                                                                     +
                                   "Actual Rows": 1558,                                                                                                               +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Inner Unique": true,                                                                                                              +
                                   "Merge Cond": "(an.person_id = n.id)",                                                                                             +
                                   "Shared Hit Blocks": 8,                                                                                                            +
                                   "Shared Read Blocks": 67004,                                                                                                       +
                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                             +
                                   "Temp Written Blocks": 0,                                                                                                          +
                                   "Plans": [                                                                                                                         +
                                     {                                                                                                                                +
                                       "Node Type": "Sort",                                                                                                           +
                                       "Parent Relationship": "Outer",                                                                                                +
                                       "Parallel Aware": false,                                                                                                       +
                                       "Startup Cost": 3188.40,                                                                                                       +
                                       "Total Cost": 3258.38,                                                                                                         +
                                       "Plan Rows": 901343,                                                                                                           +
                                       "Plan Width": 20,                                                                                                              +
                                       "Actual Startup Time": 776.303,                                                                                                +
                                       "Actual Total Time": 841.976,                                                                                                  +
                                       "Actual Rows": 578585,                                                                                                         +
                                       "Actual Loops": 1,                                                                                                             +
                                       "Sort Key": ["an.person_id"],                                                                                                  +
                                       "Sort Method": "quicksort",                                                                                                    +
                                       "Sort Space Used": 89763,                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                   +
                                       "Shared Hit Blocks": 6,                                                                                                        +
                                       "Shared Read Blocks": 11393,                                                                                                   +
                                       "Shared Dirtied Blocks": 0,                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                                      +
                                       "Plans": [                                                                                                                     +
                                         {                                                                                                                            +
                                           "Node Type": "Seq Scan",                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Relation Name": "aka_name",                                                                                               +
                                           "Alias": "an",                                                                                                             +
                                           "Startup Cost": 0.00,                                                                                                      +
                                           "Total Cost": 419.75,                                                                                                      +
                                           "Plan Rows": 901343,                                                                                                       +
                                           "Plan Width": 20,                                                                                                          +
                                           "Actual Startup Time": 0.016,                                                                                              +
                                           "Actual Total Time": 330.162,                                                                                              +
                                           "Actual Rows": 901343,                                                                                                     +
                                           "Actual Loops": 1,                                                                                                         +
                                           "Shared Hit Blocks": 2,                                                                                                    +
                                           "Shared Read Blocks": 11393,                                                                                               +
                                           "Shared Dirtied Blocks": 0,                                                                                                +
                                           "Shared Written Blocks": 0,                                                                                                +
                                           "Local Hit Blocks": 0,                                                                                                     +
                                           "Local Read Blocks": 0,                                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                                 +
                                           "Local Written Blocks": 0,                                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                                     +
                                           "Temp Written Blocks": 0                                                                                                   +
                                         }                                                                                                                            +
                                       ]                                                                                                                              +
                                     },                                                                                                                               +
                                     {                                                                                                                                +
                                       "Node Type": "Sort",                                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                                +
                                       "Parallel Aware": false,                                                                                                       +
                                       "Startup Cost": 2686.68,                                                                                                       +
                                       "Total Cost": 2686.97,                                                                                                         +
                                       "Plan Rows": 3787,                                                                                                             +
                                       "Plan Width": 4,                                                                                                               +
                                       "Actual Startup Time": 2603.167,                                                                                               +
                                       "Actual Total Time": 2605.007,                                                                                                 +
                                       "Actual Rows": 6768,                                                                                                           +
                                       "Actual Loops": 1,                                                                                                             +
                                       "Sort Key": ["n.id"],                                                                                                          +
                                       "Sort Method": "quicksort",                                                                                                    +
                                       "Sort Space Used": 510,                                                                                                        +
                                       "Sort Space Type": "Memory",                                                                                                   +
                                       "Shared Hit Blocks": 2,                                                                                                        +
                                       "Shared Read Blocks": 55611,                                                                                                   +
                                       "Shared Dirtied Blocks": 0,                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                                      +
                                       "Plans": [                                                                                                                     +
                                         {                                                                                                                            +
                                           "Node Type": "Seq Scan",                                                                                                   +
                                           "Parent Relationship": "Outer",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Relation Name": "name",                                                                                                   +
                                           "Alias": "n",                                                                                                              +
                                           "Startup Cost": 0.00,                                                                                                      +
                                           "Total Cost": 2679.69,                                                                                                     +
                                           "Plan Rows": 3787,                                                                                                         +
                                           "Plan Width": 4,                                                                                                           +
                                           "Actual Startup Time": 1094.173,                                                                                           +
                                           "Actual Total Time": 2599.436,                                                                                             +
                                           "Actual Rows": 6768,                                                                                                       +
                                           "Actual Loops": 1,                                                                                                         +
                                           "Filter": "((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))",                                                    +
                                           "Rows Removed by Filter": 4160723,                                                                                         +
                                           "Shared Hit Blocks": 2,                                                                                                    +
                                           "Shared Read Blocks": 55611,                                                                                               +
                                           "Shared Dirtied Blocks": 0,                                                                                                +
                                           "Shared Written Blocks": 0,                                                                                                +
                                           "Local Hit Blocks": 0,                                                                                                     +
                                           "Local Read Blocks": 0,                                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                                 +
                                           "Local Written Blocks": 0,                                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                                     +
                                           "Temp Written Blocks": 0                                                                                                   +
                                         }                                                                                                                            +
                                       ]                                                                                                                              +
                                     }                                                                                                                                +
                                   ]                                                                                                                                  +
                                 },                                                                                                                                   +
                                 {                                                                                                                                    +
                                   "Node Type": "Index Scan",                                                                                                         +
                                   "Parent Relationship": "Inner",                                                                                                    +
                                   "Parallel Aware": false,                                                                                                           +
                                   "Scan Direction": "Forward",                                                                                                       +
                                   "Index Name": "person_id_cast_info",                                                                                               +
                                   "Relation Name": "cast_info",                                                                                                      +
                                   "Alias": "ci",                                                                                                                     +
                                   "Startup Cost": 0.02,                                                                                                              +
                                   "Total Cost": 1.22,                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                    +
                                   "Plan Width": 16,                                                                                                                  +
                                   "Actual Startup Time": 7.597,                                                                                                      +
                                   "Actual Total Time": 7.773,                                                                                                        +
                                   "Actual Rows": 0,                                                                                                                  +
                                   "Actual Loops": 1558,                                                                                                              +
                                   "Index Cond": "(person_id = an.person_id)",                                                                                        +
                                   "Rows Removed by Index Recheck": 0,                                                                                                +
                                   "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                   "Rows Removed by Filter": 44,                                                                                                      +
                                   "Shared Hit Blocks": 7087,                                                                                                         +
                                   "Shared Read Blocks": 1975,                                                                                                        +
                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                             +
                                   "Temp Written Blocks": 0                                                                                                           +
                                 }                                                                                                                                    +
                               ]                                                                                                                                      +
                             },                                                                                                                                       +
                             {                                                                                                                                        +
                               "Node Type": "Materialize",                                                                                                            +
                               "Parent Relationship": "Inner",                                                                                                        +
                               "Parallel Aware": false,                                                                                                               +
                               "Startup Cost": 0.00,                                                                                                                  +
                               "Total Cost": 0.03,                                                                                                                    +
                               "Plan Rows": 1,                                                                                                                        +
                               "Plan Width": 4,                                                                                                                       +
                               "Actual Startup Time": 0.001,                                                                                                          +
                               "Actual Total Time": 0.001,                                                                                                            +
                               "Actual Rows": 1,                                                                                                                      +
                               "Actual Loops": 425,                                                                                                                   +
                               "Shared Hit Blocks": 1,                                                                                                                +
                               "Shared Read Blocks": 0,                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                              +
                               "Plans": [                                                                                                                             +
                                 {                                                                                                                                    +
                                   "Node Type": "Seq Scan",                                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                                    +
                                   "Parallel Aware": false,                                                                                                           +
                                   "Relation Name": "role_type",                                                                                                      +
                                   "Alias": "rt",                                                                                                                     +
                                   "Startup Cost": 0.00,                                                                                                              +
                                   "Total Cost": 0.03,                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                    +
                                   "Plan Width": 4,                                                                                                                   +
                                   "Actual Startup Time": 0.012,                                                                                                      +
                                   "Actual Total Time": 0.013,                                                                                                        +
                                   "Actual Rows": 1,                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Filter": "((role)::text = 'actress'::text)",                                                                                      +
                                   "Rows Removed by Filter": 1,                                                                                                       +
                                   "Shared Hit Blocks": 1,                                                                                                            +
                                   "Shared Read Blocks": 0,                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                             +
                                   "Temp Written Blocks": 0                                                                                                           +
                                 }                                                                                                                                    +
                               ]                                                                                                                                      +
                             }                                                                                                                                        +
                           ]                                                                                                                                          +
                         },                                                                                                                                           +
                         {                                                                                                                                            +
                           "Node Type": "Index Scan",                                                                                                                 +
                           "Parent Relationship": "Inner",                                                                                                            +
                           "Parallel Aware": false,                                                                                                                   +
                           "Scan Direction": "Forward",                                                                                                               +
                           "Index Name": "movie_id_movie_companies",                                                                                                  +
                           "Relation Name": "movie_companies",                                                                                                        +
                           "Alias": "mc",                                                                                                                             +
                           "Startup Cost": 0.01,                                                                                                                      +
                           "Total Cost": 0.11,                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                            +
                           "Plan Width": 8,                                                                                                                           +
                           "Actual Startup Time": 9.304,                                                                                                              +
                           "Actual Total Time": 10.620,                                                                                                               +
                           "Actual Rows": 1,                                                                                                                          +
                           "Actual Loops": 425,                                                                                                                       +
                           "Index Cond": "(movie_id = ci.movie_id)",                                                                                                  +
                           "Rows Removed by Index Recheck": 0,                                                                                                        +
                           "Filter": "((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))",                                       +
                           "Rows Removed by Filter": 4,                                                                                                               +
                           "Shared Hit Blocks": 1469,                                                                                                                 +
                           "Shared Read Blocks": 411,                                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                     +
                           "Temp Written Blocks": 0                                                                                                                   +
                         }                                                                                                                                            +
                       ]                                                                                                                                              +
                     },                                                                                                                                               +
                     {                                                                                                                                                +
                       "Node Type": "Index Scan",                                                                                                                     +
                       "Parent Relationship": "Inner",                                                                                                                +
                       "Parallel Aware": false,                                                                                                                       +
                       "Scan Direction": "Forward",                                                                                                                   +
                       "Index Name": "company_name_pkey",                                                                                                             +
                       "Relation Name": "company_name",                                                                                                               +
                       "Alias": "cn",                                                                                                                                 +
                       "Startup Cost": 0.01,                                                                                                                          +
                       "Total Cost": 0.05,                                                                                                                            +
                       "Plan Rows": 1,                                                                                                                                +
                       "Plan Width": 4,                                                                                                                               +
                       "Actual Startup Time": 3.920,                                                                                                                  +
                       "Actual Total Time": 3.920,                                                                                                                    +
                       "Actual Rows": 1,                                                                                                                              +
                       "Actual Loops": 373,                                                                                                                           +
                       "Index Cond": "(id = mc.company_id)",                                                                                                          +
                       "Rows Removed by Index Recheck": 0,                                                                                                            +
                       "Filter": "((country_code)::text = '[us]'::text)",                                                                                             +
                       "Rows Removed by Filter": 0,                                                                                                                   +
                       "Shared Hit Blocks": 1352,                                                                                                                     +
                       "Shared Read Blocks": 140,                                                                                                                     +
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
                   "Node Type": "Index Scan",                                                                                                                         +
                   "Parent Relationship": "Inner",                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                           +
                   "Scan Direction": "Forward",                                                                                                                       +
                   "Index Name": "title_idx_id",                                                                                                                      +
                   "Relation Name": "title",                                                                                                                          +
                   "Alias": "t",                                                                                                                                      +
                   "Startup Cost": 0.01,                                                                                                                              +
                   "Total Cost": 0.17,                                                                                                                                +
                   "Plan Rows": 1,                                                                                                                                    +
                   "Plan Width": 21,                                                                                                                                  +
                   "Actual Startup Time": 9.827,                                                                                                                      +
                   "Actual Total Time": 9.827,                                                                                                                        +
                   "Actual Rows": 0,                                                                                                                                  +
                   "Actual Loops": 359,                                                                                                                               +
                   "Index Cond": "(id = ci.movie_id)",                                                                                                                +
                   "Rows Removed by Index Recheck": 0,                                                                                                                +
                   "Filter": "((production_year >= 2005) AND (production_year <= 2015))",                                                                             +
                   "Rows Removed by Filter": 1,                                                                                                                       +
                   "Shared Hit Blocks": 1245,                                                                                                                         +
                   "Shared Read Blocks": 195,                                                                                                                         +
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
             },                                                                                                                                                       +
             {                                                                                                                                                        +
               "Node Type": "Index Scan",                                                                                                                             +
               "Parent Relationship": "Inner",                                                                                                                        +
               "Parallel Aware": false,                                                                                                                               +
               "Scan Direction": "Forward",                                                                                                                           +
               "Index Name": "char_name_pkey",                                                                                                                        +
               "Relation Name": "char_name",                                                                                                                          +
               "Alias": "chn",                                                                                                                                        +
               "Startup Cost": 0.01,                                                                                                                                  +
               "Total Cost": 0.18,                                                                                                                                    +
               "Plan Rows": 1,                                                                                                                                        +
               "Plan Width": 20,                                                                                                                                      +
               "Actual Startup Time": 2.783,                                                                                                                          +
               "Actual Total Time": 2.783,                                                                                                                            +
               "Actual Rows": 1,                                                                                                                                      +
               "Actual Loops": 127,                                                                                                                                   +
               "Index Cond": "(id = ci.person_role_id)",                                                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                                                                    +
               "Shared Hit Blocks": 426,                                                                                                                              +
               "Shared Read Blocks": 58,                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                 +
               "Temp Written Blocks": 0                                                                                                                               +
             }                                                                                                                                                        +
           ]                                                                                                                                                          +
         }                                                                                                                                                            +
       ]                                                                                                                                                              +
     },                                                                                                                                                               +
     "Planning Time": 4851.231,                                                                                                                                       +
     "Triggers": [                                                                                                                                                    +
     ],                                                                                                                                                               +
     "Execution Time": 25582.375                                                                                                                                      +
   }                                                                                                                                                                  +
 ]
(1 row)

