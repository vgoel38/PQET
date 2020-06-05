                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                 +
   {                                                                                                                                                                                               +
     "Plan": {                                                                                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                                                                                   +
       "Strategy": "Plain",                                                                                                                                                                        +
       "Partial Mode": "Simple",                                                                                                                                                                   +
       "Parallel Aware": false,                                                                                                                                                                    +
       "Startup Cost": 43659.45,                                                                                                                                                                   +
       "Total Cost": 43659.45,                                                                                                                                                                     +
       "Plan Rows": 1,                                                                                                                                                                             +
       "Plan Width": 96,                                                                                                                                                                           +
       "Actual Startup Time": 15962.566,                                                                                                                                                           +
       "Actual Total Time": 15962.566,                                                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                                                           +
       "Actual Loops": 1,                                                                                                                                                                          +
       "Shared Hit Blocks": 34,                                                                                                                                                                    +
       "Shared Read Blocks": 253305,                                                                                                                                                               +
       "Shared Dirtied Blocks": 0,                                                                                                                                                                 +
       "Shared Written Blocks": 0,                                                                                                                                                                 +
       "Local Hit Blocks": 0,                                                                                                                                                                      +
       "Local Read Blocks": 0,                                                                                                                                                                     +
       "Local Dirtied Blocks": 0,                                                                                                                                                                  +
       "Local Written Blocks": 0,                                                                                                                                                                  +
       "Temp Read Blocks": 0,                                                                                                                                                                      +
       "Temp Written Blocks": 0,                                                                                                                                                                   +
       "Plans": [                                                                                                                                                                                  +
         {                                                                                                                                                                                         +
           "Node Type": "Merge Join",                                                                                                                                                              +
           "Parent Relationship": "Outer",                                                                                                                                                         +
           "Parallel Aware": false,                                                                                                                                                                +
           "Join Type": "Inner",                                                                                                                                                                   +
           "Startup Cost": 43659.45,                                                                                                                                                               +
           "Total Cost": 43659.45,                                                                                                                                                                 +
           "Plan Rows": 1,                                                                                                                                                                         +
           "Plan Width": 42,                                                                                                                                                                       +
           "Actual Startup Time": 15943.119,                                                                                                                                                       +
           "Actual Total Time": 15949.346,                                                                                                                                                         +
           "Actual Rows": 8373,                                                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                                                      +
           "Inner Unique": true,                                                                                                                                                                   +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                                                           +
           "Shared Hit Blocks": 34,                                                                                                                                                                +
           "Shared Read Blocks": 253305,                                                                                                                                                           +
           "Shared Dirtied Blocks": 0,                                                                                                                                                             +
           "Shared Written Blocks": 0,                                                                                                                                                             +
           "Local Hit Blocks": 0,                                                                                                                                                                  +
           "Local Read Blocks": 0,                                                                                                                                                                 +
           "Local Dirtied Blocks": 0,                                                                                                                                                              +
           "Local Written Blocks": 0,                                                                                                                                                              +
           "Temp Read Blocks": 0,                                                                                                                                                                  +
           "Temp Written Blocks": 0,                                                                                                                                                               +
           "Plans": [                                                                                                                                                                              +
             {                                                                                                                                                                                     +
               "Node Type": "Sort",                                                                                                                                                                +
               "Parent Relationship": "Outer",                                                                                                                                                     +
               "Parallel Aware": false,                                                                                                                                                            +
               "Startup Cost": 43659.42,                                                                                                                                                           +
               "Total Cost": 43659.42,                                                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                                                     +
               "Plan Width": 46,                                                                                                                                                                   +
               "Actual Startup Time": 15943.092,                                                                                                                                                   +
               "Actual Total Time": 15944.199,                                                                                                                                                     +
               "Actual Rows": 8373,                                                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                                                  +
               "Sort Key": ["mc.company_type_id"],                                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                                                         +
               "Sort Space Used": 1231,                                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                                        +
               "Shared Hit Blocks": 33,                                                                                                                                                            +
               "Shared Read Blocks": 253305,                                                                                                                                                       +
               "Shared Dirtied Blocks": 0,                                                                                                                                                         +
               "Shared Written Blocks": 0,                                                                                                                                                         +
               "Local Hit Blocks": 0,                                                                                                                                                              +
               "Local Read Blocks": 0,                                                                                                                                                             +
               "Local Dirtied Blocks": 0,                                                                                                                                                          +
               "Local Written Blocks": 0,                                                                                                                                                          +
               "Temp Read Blocks": 0,                                                                                                                                                              +
               "Temp Written Blocks": 0,                                                                                                                                                           +
               "Plans": [                                                                                                                                                                          +
                 {                                                                                                                                                                                 +
                   "Node Type": "Merge Join",                                                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                                                        +
                   "Join Type": "Inner",                                                                                                                                                           +
                   "Startup Cost": 43659.42,                                                                                                                                                       +
                   "Total Cost": 43659.42,                                                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                                                                 +
                   "Plan Width": 46,                                                                                                                                                               +
                   "Actual Startup Time": 15929.997,                                                                                                                                               +
                   "Actual Total Time": 15932.059,                                                                                                                                                 +
                   "Actual Rows": 8373,                                                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                                                              +
                   "Inner Unique": false,                                                                                                                                                          +
                   "Merge Cond": "(it1.id = mi.info_type_id)",                                                                                                                                     +
                   "Shared Hit Blocks": 29,                                                                                                                                                        +
                   "Shared Read Blocks": 253305,                                                                                                                                                   +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                     +
                   "Shared Written Blocks": 0,                                                                                                                                                     +
                   "Local Hit Blocks": 0,                                                                                                                                                          +
                   "Local Read Blocks": 0,                                                                                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                                                                                      +
                   "Local Written Blocks": 0,                                                                                                                                                      +
                   "Temp Read Blocks": 0,                                                                                                                                                          +
                   "Temp Written Blocks": 0,                                                                                                                                                       +
                   "Plans": [                                                                                                                                                                      +
                     {                                                                                                                                                                             +
                       "Node Type": "Sort",                                                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                                                             +
                       "Parallel Aware": false,                                                                                                                                                    +
                       "Startup Cost": 0.05,                                                                                                                                                       +
                       "Total Cost": 0.05,                                                                                                                                                         +
                       "Plan Rows": 1,                                                                                                                                                             +
                       "Plan Width": 4,                                                                                                                                                            +
                       "Actual Startup Time": 0.079,                                                                                                                                               +
                       "Actual Total Time": 0.079,                                                                                                                                                 +
                       "Actual Rows": 1,                                                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                                                          +
                       "Sort Key": ["it1.id"],                                                                                                                                                     +
                       "Sort Method": "quicksort",                                                                                                                                                 +
                       "Sort Space Used": 25,                                                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                                                +
                       "Shared Hit Blocks": 1,                                                                                                                                                     +
                       "Shared Read Blocks": 0,                                                                                                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                 +
                       "Shared Written Blocks": 0,                                                                                                                                                 +
                       "Local Hit Blocks": 0,                                                                                                                                                      +
                       "Local Read Blocks": 0,                                                                                                                                                     +
                       "Local Dirtied Blocks": 0,                                                                                                                                                  +
                       "Local Written Blocks": 0,                                                                                                                                                  +
                       "Temp Read Blocks": 0,                                                                                                                                                      +
                       "Temp Written Blocks": 0,                                                                                                                                                   +
                       "Plans": [                                                                                                                                                                  +
                         {                                                                                                                                                                         +
                           "Node Type": "Seq Scan",                                                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                                                         +
                           "Parallel Aware": false,                                                                                                                                                +
                           "Relation Name": "info_type",                                                                                                                                           +
                           "Alias": "it1",                                                                                                                                                         +
                           "Startup Cost": 0.00,                                                                                                                                                   +
                           "Total Cost": 0.05,                                                                                                                                                     +
                           "Plan Rows": 1,                                                                                                                                                         +
                           "Plan Width": 4,                                                                                                                                                        +
                           "Actual Startup Time": 0.026,                                                                                                                                           +
                           "Actual Total Time": 0.063,                                                                                                                                             +
                           "Actual Rows": 1,                                                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                                                      +
                           "Filter": "((info)::text = 'countries'::text)",                                                                                                                         +
                           "Rows Removed by Filter": 112,                                                                                                                                          +
                           "Shared Hit Blocks": 1,                                                                                                                                                 +
                           "Shared Read Blocks": 0,                                                                                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                                                  +
                           "Temp Written Blocks": 0                                                                                                                                                +
                         }                                                                                                                                                                         +
                       ]                                                                                                                                                                           +
                     },                                                                                                                                                                            +
                     {                                                                                                                                                                             +
                       "Node Type": "Sort",                                                                                                                                                        +
                       "Parent Relationship": "Inner",                                                                                                                                             +
                       "Parallel Aware": false,                                                                                                                                                    +
                       "Startup Cost": 43659.37,                                                                                                                                                   +
                       "Total Cost": 43659.37,                                                                                                                                                     +
                       "Plan Rows": 1,                                                                                                                                                             +
                       "Plan Width": 50,                                                                                                                                                           +
                       "Actual Startup Time": 15929.742,                                                                                                                                           +
                       "Actual Total Time": 15930.187,                                                                                                                                             +
                       "Actual Rows": 9223,                                                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                                                          +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                                            +
                       "Sort Method": "quicksort",                                                                                                                                                 +
                       "Sort Space Used": 1409,                                                                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                                                                                +
                       "Shared Hit Blocks": 28,                                                                                                                                                    +
                       "Shared Read Blocks": 253305,                                                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                 +
                       "Shared Written Blocks": 0,                                                                                                                                                 +
                       "Local Hit Blocks": 0,                                                                                                                                                      +
                       "Local Read Blocks": 0,                                                                                                                                                     +
                       "Local Dirtied Blocks": 0,                                                                                                                                                  +
                       "Local Written Blocks": 0,                                                                                                                                                  +
                       "Temp Read Blocks": 0,                                                                                                                                                      +
                       "Temp Written Blocks": 0,                                                                                                                                                   +
                       "Plans": [                                                                                                                                                                  +
                         {                                                                                                                                                                         +
                           "Node Type": "Merge Join",                                                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                                                         +
                           "Parallel Aware": false,                                                                                                                                                +
                           "Join Type": "Inner",                                                                                                                                                   +
                           "Startup Cost": 43548.32,                                                                                                                                               +
                           "Total Cost": 43659.37,                                                                                                                                                 +
                           "Plan Rows": 1,                                                                                                                                                         +
                           "Plan Width": 50,                                                                                                                                                       +
                           "Actual Startup Time": 15825.430,                                                                                                                                       +
                           "Actual Total Time": 15926.880,                                                                                                                                         +
                           "Actual Rows": 9489,                                                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                                                      +
                           "Inner Unique": false,                                                                                                                                                  +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                                                   +
                           "Shared Hit Blocks": 28,                                                                                                                                                +
                           "Shared Read Blocks": 253305,                                                                                                                                           +
                           "Shared Dirtied Blocks": 0,                                                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                                                  +
                           "Temp Written Blocks": 0,                                                                                                                                               +
                           "Plans": [                                                                                                                                                              +
                             {                                                                                                                                                                     +
                               "Node Type": "Sort",                                                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                                                     +
                               "Parallel Aware": false,                                                                                                                                            +
                               "Startup Cost": 29525.69,                                                                                                                                           +
                               "Total Cost": 29525.69,                                                                                                                                             +
                               "Plan Rows": 1,                                                                                                                                                     +
                               "Plan Width": 66,                                                                                                                                                   +
                               "Actual Startup Time": 7393.831,                                                                                                                                    +
                               "Actual Total Time": 7394.695,                                                                                                                                      +
                               "Actual Rows": 8156,                                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                                                  +
                               "Sort Key": ["mk.movie_id"],                                                                                                                                        +
                               "Sort Method": "quicksort",                                                                                                                                         +
                               "Sort Space Used": 1307,                                                                                                                                            +
                               "Sort Space Type": "Memory",                                                                                                                                        +
                               "Shared Hit Blocks": 26,                                                                                                                                            +
                               "Shared Read Blocks": 91415,                                                                                                                                        +
                               "Shared Dirtied Blocks": 0,                                                                                                                                         +
                               "Shared Written Blocks": 0,                                                                                                                                         +
                               "Local Hit Blocks": 0,                                                                                                                                              +
                               "Local Read Blocks": 0,                                                                                                                                             +
                               "Local Dirtied Blocks": 0,                                                                                                                                          +
                               "Local Written Blocks": 0,                                                                                                                                          +
                               "Temp Read Blocks": 0,                                                                                                                                              +
                               "Temp Written Blocks": 0,                                                                                                                                           +
                               "Plans": [                                                                                                                                                          +
                                 {                                                                                                                                                                 +
                                   "Node Type": "Merge Join",                                                                                                                                      +
                                   "Parent Relationship": "Outer",                                                                                                                                 +
                                   "Parallel Aware": false,                                                                                                                                        +
                                   "Join Type": "Inner",                                                                                                                                           +
                                   "Startup Cost": 29525.69,                                                                                                                                       +
                                   "Total Cost": 29525.69,                                                                                                                                         +
                                   "Plan Rows": 1,                                                                                                                                                 +
                                   "Plan Width": 66,                                                                                                                                               +
                                   "Actual Startup Time": 7388.198,                                                                                                                                +
                                   "Actual Total Time": 7390.662,                                                                                                                                  +
                                   "Actual Rows": 8156,                                                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                                              +
                                   "Inner Unique": false,                                                                                                                                          +
                                   "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                                                                                                 +
                                   "Shared Hit Blocks": 26,                                                                                                                                        +
                                   "Shared Read Blocks": 91415,                                                                                                                                    +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                     +
                                   "Shared Written Blocks": 0,                                                                                                                                     +
                                   "Local Hit Blocks": 0,                                                                                                                                          +
                                   "Local Read Blocks": 0,                                                                                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                                                                                      +
                                   "Local Written Blocks": 0,                                                                                                                                      +
                                   "Temp Read Blocks": 0,                                                                                                                                          +
                                   "Temp Written Blocks": 0,                                                                                                                                       +
                                   "Plans": [                                                                                                                                                      +
                                     {                                                                                                                                                             +
                                       "Node Type": "Sort",                                                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                                                             +
                                       "Parallel Aware": false,                                                                                                                                    +
                                       "Startup Cost": 0.05,                                                                                                                                       +
                                       "Total Cost": 0.05,                                                                                                                                         +
                                       "Plan Rows": 1,                                                                                                                                             +
                                       "Plan Width": 4,                                                                                                                                            +
                                       "Actual Startup Time": 0.061,                                                                                                                               +
                                       "Actual Total Time": 0.061,                                                                                                                                 +
                                       "Actual Rows": 1,                                                                                                                                           +
                                       "Actual Loops": 1,                                                                                                                                          +
                                       "Sort Key": ["it2.id"],                                                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                                                 +
                                       "Sort Space Used": 25,                                                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                                                +
                                       "Shared Hit Blocks": 1,                                                                                                                                     +
                                       "Shared Read Blocks": 0,                                                                                                                                    +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                 +
                                       "Shared Written Blocks": 0,                                                                                                                                 +
                                       "Local Hit Blocks": 0,                                                                                                                                      +
                                       "Local Read Blocks": 0,                                                                                                                                     +
                                       "Local Dirtied Blocks": 0,                                                                                                                                  +
                                       "Local Written Blocks": 0,                                                                                                                                  +
                                       "Temp Read Blocks": 0,                                                                                                                                      +
                                       "Temp Written Blocks": 0,                                                                                                                                   +
                                       "Plans": [                                                                                                                                                  +
                                         {                                                                                                                                                         +
                                           "Node Type": "Seq Scan",                                                                                                                                +
                                           "Parent Relationship": "Outer",                                                                                                                         +
                                           "Parallel Aware": false,                                                                                                                                +
                                           "Relation Name": "info_type",                                                                                                                           +
                                           "Alias": "it2",                                                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                                                   +
                                           "Total Cost": 0.05,                                                                                                                                     +
                                           "Plan Rows": 1,                                                                                                                                         +
                                           "Plan Width": 4,                                                                                                                                        +
                                           "Actual Startup Time": 0.043,                                                                                                                           +
                                           "Actual Total Time": 0.048,                                                                                                                             +
                                           "Actual Rows": 1,                                                                                                                                       +
                                           "Actual Loops": 1,                                                                                                                                      +
                                           "Filter": "((info)::text = 'rating'::text)",                                                                                                            +
                                           "Rows Removed by Filter": 112,                                                                                                                          +
                                           "Shared Hit Blocks": 1,                                                                                                                                 +
                                           "Shared Read Blocks": 0,                                                                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                                                              +
                                           "Local Written Blocks": 0,                                                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                                                  +
                                           "Temp Written Blocks": 0                                                                                                                                +
                                         }                                                                                                                                                         +
                                       ]                                                                                                                                                           +
                                     },                                                                                                                                                            +
                                     {                                                                                                                                                             +
                                       "Node Type": "Sort",                                                                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                                                             +
                                       "Parallel Aware": false,                                                                                                                                    +
                                       "Startup Cost": 29525.64,                                                                                                                                   +
                                       "Total Cost": 29525.64,                                                                                                                                     +
                                       "Plan Rows": 1,                                                                                                                                             +
                                       "Plan Width": 70,                                                                                                                                           +
                                       "Actual Startup Time": 7384.572,                                                                                                                            +
                                       "Actual Total Time": 7385.950,                                                                                                                              +
                                       "Actual Rows": 24015,                                                                                                                                       +
                                       "Actual Loops": 1,                                                                                                                                          +
                                       "Sort Key": ["mi_idx.info_type_id"],                                                                                                                        +
                                       "Sort Method": "quicksort",                                                                                                                                 +
                                       "Sort Space Used": 4185,                                                                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                                                                +
                                       "Shared Hit Blocks": 25,                                                                                                                                    +
                                       "Shared Read Blocks": 91415,                                                                                                                                +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                 +
                                       "Shared Written Blocks": 0,                                                                                                                                 +
                                       "Local Hit Blocks": 0,                                                                                                                                      +
                                       "Local Read Blocks": 0,                                                                                                                                     +
                                       "Local Dirtied Blocks": 0,                                                                                                                                  +
                                       "Local Written Blocks": 0,                                                                                                                                  +
                                       "Temp Read Blocks": 0,                                                                                                                                      +
                                       "Temp Written Blocks": 0,                                                                                                                                   +
                                       "Plans": [                                                                                                                                                  +
                                         {                                                                                                                                                         +
                                           "Node Type": "Merge Join",                                                                                                                              +
                                           "Parent Relationship": "Outer",                                                                                                                         +
                                           "Parallel Aware": false,                                                                                                                                +
                                           "Join Type": "Inner",                                                                                                                                   +
                                           "Startup Cost": 29317.02,                                                                                                                               +
                                           "Total Cost": 29525.64,                                                                                                                                 +
                                           "Plan Rows": 1,                                                                                                                                         +
                                           "Plan Width": 70,                                                                                                                                       +
                                           "Actual Startup Time": 7171.947,                                                                                                                        +
                                           "Actual Total Time": 7374.516,                                                                                                                          +
                                           "Actual Rows": 24274,                                                                                                                                   +
                                           "Actual Loops": 1,                                                                                                                                      +
                                           "Inner Unique": false,                                                                                                                                  +
                                           "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                                               +
                                           "Shared Hit Blocks": 25,                                                                                                                                +
                                           "Shared Read Blocks": 91415,                                                                                                                            +
                                           "Shared Dirtied Blocks": 0,                                                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                                                              +
                                           "Local Written Blocks": 0,                                                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                                                  +
                                           "Temp Written Blocks": 0,                                                                                                                               +
                                           "Plans": [                                                                                                                                              +
                                             {                                                                                                                                                     +
                                               "Node Type": "Sort",                                                                                                                                +
                                               "Parent Relationship": "Outer",                                                                                                                     +
                                               "Parallel Aware": false,                                                                                                                            +
                                               "Startup Cost": 24602.18,                                                                                                                           +
                                               "Total Cost": 24602.18,                                                                                                                             +
                                               "Plan Rows": 1,                                                                                                                                     +
                                               "Plan Width": 56,                                                                                                                                   +
                                               "Actual Startup Time": 6261.014,                                                                                                                    +
                                               "Actual Total Time": 6262.004,                                                                                                                      +
                                               "Actual Rows": 8286,                                                                                                                                +
                                               "Actual Loops": 1,                                                                                                                                  +
                                               "Sort Key": ["mk.movie_id"],                                                                                                                        +
                                               "Sort Method": "quicksort",                                                                                                                         +
                                               "Sort Space Used": 1421,                                                                                                                            +
                                               "Sort Space Type": "Memory",                                                                                                                        +
                                               "Shared Hit Blocks": 23,                                                                                                                            +
                                               "Shared Read Blocks": 82964,                                                                                                                        +
                                               "Shared Dirtied Blocks": 0,                                                                                                                         +
                                               "Shared Written Blocks": 0,                                                                                                                         +
                                               "Local Hit Blocks": 0,                                                                                                                              +
                                               "Local Read Blocks": 0,                                                                                                                             +
                                               "Local Dirtied Blocks": 0,                                                                                                                          +
                                               "Local Written Blocks": 0,                                                                                                                          +
                                               "Temp Read Blocks": 0,                                                                                                                              +
                                               "Temp Written Blocks": 0,                                                                                                                           +
                                               "Plans": [                                                                                                                                          +
                                                 {                                                                                                                                                 +
                                                   "Node Type": "Merge Join",                                                                                                                      +
                                                   "Parent Relationship": "Outer",                                                                                                                 +
                                                   "Parallel Aware": false,                                                                                                                        +
                                                   "Join Type": "Inner",                                                                                                                           +
                                                   "Startup Cost": 24602.18,                                                                                                                       +
                                                   "Total Cost": 24602.18,                                                                                                                         +
                                                   "Plan Rows": 1,                                                                                                                                 +
                                                   "Plan Width": 56,                                                                                                                               +
                                                   "Actual Startup Time": 6255.088,                                                                                                                +
                                                   "Actual Total Time": 6257.880,                                                                                                                  +
                                                   "Actual Rows": 8286,                                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                              +
                                                   "Inner Unique": true,                                                                                                                           +
                                                   "Merge Cond": "(cc.subject_id = cct1.id)",                                                                                                      +
                                                   "Shared Hit Blocks": 23,                                                                                                                        +
                                                   "Shared Read Blocks": 82964,                                                                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                     +
                                                   "Shared Written Blocks": 0,                                                                                                                     +
                                                   "Local Hit Blocks": 0,                                                                                                                          +
                                                   "Local Read Blocks": 0,                                                                                                                         +
                                                   "Local Dirtied Blocks": 0,                                                                                                                      +
                                                   "Local Written Blocks": 0,                                                                                                                      +
                                                   "Temp Read Blocks": 0,                                                                                                                          +
                                                   "Temp Written Blocks": 0,                                                                                                                       +
                                                   "Plans": [                                                                                                                                      +
                                                     {                                                                                                                                             +
                                                       "Node Type": "Sort",                                                                                                                        +
                                                       "Parent Relationship": "Outer",                                                                                                             +
                                                       "Parallel Aware": false,                                                                                                                    +
                                                       "Startup Cost": 24602.15,                                                                                                                   +
                                                       "Total Cost": 24602.15,                                                                                                                     +
                                                       "Plan Rows": 1,                                                                                                                             +
                                                       "Plan Width": 60,                                                                                                                           +
                                                       "Actual Startup Time": 6255.066,                                                                                                            +
                                                       "Actual Total Time": 6255.485,                                                                                                              +
                                                       "Actual Rows": 8287,                                                                                                                        +
                                                       "Actual Loops": 1,                                                                                                                          +
                                                       "Sort Key": ["cc.subject_id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                                 +
                                                       "Sort Space Used": 1700,                                                                                                                    +
                                                       "Sort Space Type": "Memory",                                                                                                                +
                                                       "Shared Hit Blocks": 22,                                                                                                                    +
                                                       "Shared Read Blocks": 82964,                                                                                                                +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                 +
                                                       "Shared Written Blocks": 0,                                                                                                                 +
                                                       "Local Hit Blocks": 0,                                                                                                                      +
                                                       "Local Read Blocks": 0,                                                                                                                     +
                                                       "Local Dirtied Blocks": 0,                                                                                                                  +
                                                       "Local Written Blocks": 0,                                                                                                                  +
                                                       "Temp Read Blocks": 0,                                                                                                                      +
                                                       "Temp Written Blocks": 0,                                                                                                                   +
                                                       "Plans": [                                                                                                                                  +
                                                         {                                                                                                                                         +
                                                           "Node Type": "Merge Join",                                                                                                              +
                                                           "Parent Relationship": "Outer",                                                                                                         +
                                                           "Parallel Aware": false,                                                                                                                +
                                                           "Join Type": "Inner",                                                                                                                   +
                                                           "Startup Cost": 24582.55,                                                                                                               +
                                                           "Total Cost": 24602.15,                                                                                                                 +
                                                           "Plan Rows": 1,                                                                                                                         +
                                                           "Plan Width": 60,                                                                                                                       +
                                                           "Actual Startup Time": 6238.225,                                                                                                        +
                                                           "Actual Total Time": 6252.099,                                                                                                          +
                                                           "Actual Rows": 9971,                                                                                                                    +
                                                           "Actual Loops": 1,                                                                                                                      +
                                                           "Inner Unique": true,                                                                                                                   +
                                                           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                +
                                                           "Shared Hit Blocks": 22,                                                                                                                +
                                                           "Shared Read Blocks": 82964,                                                                                                            +
                                                           "Shared Dirtied Blocks": 0,                                                                                                             +
                                                           "Shared Written Blocks": 0,                                                                                                             +
                                                           "Local Hit Blocks": 0,                                                                                                                  +
                                                           "Local Read Blocks": 0,                                                                                                                 +
                                                           "Local Dirtied Blocks": 0,                                                                                                              +
                                                           "Local Written Blocks": 0,                                                                                                              +
                                                           "Temp Read Blocks": 0,                                                                                                                  +
                                                           "Temp Written Blocks": 0,                                                                                                               +
                                                           "Plans": [                                                                                                                              +
                                                             {                                                                                                                                     +
                                                               "Node Type": "Sort",                                                                                                                +
                                                               "Parent Relationship": "Outer",                                                                                                     +
                                                               "Parallel Aware": false,                                                                                                            +
                                                               "Startup Cost": 24121.99,                                                                                                           +
                                                               "Total Cost": 24121.99,                                                                                                             +
                                                               "Plan Rows": 1,                                                                                                                     +
                                                               "Plan Width": 45,                                                                                                                   +
                                                               "Actual Startup Time": 6070.912,                                                                                                    +
                                                               "Actual Total Time": 6072.007,                                                                                                      +
                                                               "Actual Rows": 10440,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                                  +
                                                               "Sort Key": ["mc.company_id"],                                                                                                      +
                                                               "Sort Method": "quicksort",                                                                                                         +
                                                               "Sort Space Used": 1315,                                                                                                            +
                                                               "Sort Space Type": "Memory",                                                                                                        +
                                                               "Shared Hit Blocks": 20,                                                                                                            +
                                                               "Shared Read Blocks": 79972,                                                                                                        +
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
                                                                   "Startup Cost": 24121.99,                                                                                                       +
                                                                   "Total Cost": 24121.99,                                                                                                         +
                                                                   "Plan Rows": 1,                                                                                                                 +
                                                                   "Plan Width": 45,                                                                                                               +
                                                                   "Actual Startup Time": 6063.652,                                                                                                +
                                                                   "Actual Total Time": 6066.958,                                                                                                  +
                                                                   "Actual Rows": 10440,                                                                                                           +
                                                                   "Actual Loops": 1,                                                                                                              +
                                                                   "Inner Unique": false,                                                                                                          +
                                                                   "Merge Cond": "(kt.id = t.kind_id)",                                                                                            +
                                                                   "Shared Hit Blocks": 20,                                                                                                        +
                                                                   "Shared Read Blocks": 79972,                                                                                                    +
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
                                                                       "Startup Cost": 0.03,                                                                                                       +
                                                                       "Total Cost": 0.03,                                                                                                         +
                                                                       "Plan Rows": 2,                                                                                                             +
                                                                       "Plan Width": 4,                                                                                                            +
                                                                       "Actual Startup Time": 0.034,                                                                                               +
                                                                       "Actual Total Time": 0.035,                                                                                                 +
                                                                       "Actual Rows": 2,                                                                                                           +
                                                                       "Actual Loops": 1,                                                                                                          +
                                                                       "Sort Key": ["kt.id"],                                                                                                      +
                                                                       "Sort Method": "quicksort",                                                                                                 +
                                                                       "Sort Space Used": 25,                                                                                                      +
                                                                       "Sort Space Type": "Memory",                                                                                                +
                                                                       "Shared Hit Blocks": 1,                                                                                                     +
                                                                       "Shared Read Blocks": 0,                                                                                                    +
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
                                                                           "Relation Name": "kind_type",                                                                                           +
                                                                           "Alias": "kt",                                                                                                          +
                                                                           "Startup Cost": 0.00,                                                                                                   +
                                                                           "Total Cost": 0.03,                                                                                                     +
                                                                           "Plan Rows": 2,                                                                                                         +
                                                                           "Plan Width": 4,                                                                                                        +
                                                                           "Actual Startup Time": 0.013,                                                                                           +
                                                                           "Actual Total Time": 0.019,                                                                                             +
                                                                           "Actual Rows": 2,                                                                                                       +
                                                                           "Actual Loops": 1,                                                                                                      +
                                                                           "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                           +
                                                                           "Rows Removed by Filter": 5,                                                                                            +
                                                                           "Shared Hit Blocks": 1,                                                                                                 +
                                                                           "Shared Read Blocks": 0,                                                                                                +
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
                                                                     },                                                                                                                            +
                                                                     {                                                                                                                             +
                                                                       "Node Type": "Sort",                                                                                                        +
                                                                       "Parent Relationship": "Inner",                                                                                             +
                                                                       "Parallel Aware": false,                                                                                                    +
                                                                       "Startup Cost": 24121.96,                                                                                                   +
                                                                       "Total Cost": 24121.96,                                                                                                     +
                                                                       "Plan Rows": 1,                                                                                                             +
                                                                       "Plan Width": 49,                                                                                                           +
                                                                       "Actual Startup Time": 6063.613,                                                                                            +
                                                                       "Actual Total Time": 6064.158,                                                                                              +
                                                                       "Actual Rows": 10963,                                                                                                       +
                                                                       "Actual Loops": 1,                                                                                                          +
                                                                       "Sort Key": ["t.kind_id"],                                                                                                  +
                                                                       "Sort Method": "quicksort",                                                                                                 +
                                                                       "Sort Space Used": 1457,                                                                                                    +
                                                                       "Sort Space Type": "Memory",                                                                                                +
                                                                       "Shared Hit Blocks": 19,                                                                                                    +
                                                                       "Shared Read Blocks": 79972,                                                                                                +
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
                                                                           "Startup Cost": 23942.57,                                                                                               +
                                                                           "Total Cost": 24121.96,                                                                                                 +
                                                                           "Plan Rows": 1,                                                                                                         +
                                                                           "Plan Width": 49,                                                                                                       +
                                                                           "Actual Startup Time": 5742.493,                                                                                        +
                                                                           "Actual Total Time": 6059.810,                                                                                          +
                                                                           "Actual Rows": 10963,                                                                                                   +
                                                                           "Actual Loops": 1,                                                                                                      +
                                                                           "Inner Unique": true,                                                                                                   +
                                                                           "Merge Cond": "(mk.movie_id = t.id)",                                                                                   +
                                                                           "Shared Hit Blocks": 19,                                                                                                +
                                                                           "Shared Read Blocks": 79972,                                                                                            +
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
                                                                               "Node Type": "Merge Join",                                                                                          +
                                                                               "Parent Relationship": "Outer",                                                                                     +
                                                                               "Parallel Aware": false,                                                                                            +
                                                                               "Join Type": "Inner",                                                                                               +
                                                                               "Startup Cost": 19304.45,                                                                                           +
                                                                               "Total Cost": 19326.70,                                                                                             +
                                                                               "Plan Rows": 3,                                                                                                     +
                                                                               "Plan Width": 24,                                                                                                   +
                                                                               "Actual Startup Time": 3674.091,                                                                                    +
                                                                               "Actual Total Time": 3729.610,                                                                                      +
                                                                               "Actual Rows": 33990,                                                                                               +
                                                                               "Actual Loops": 1,                                                                                                  +
                                                                               "Inner Unique": false,                                                                                              +
                                                                               "Merge Cond": "(mk.movie_id = mc.movie_id)",                                                                        +
                                                                               "Shared Hit Blocks": 17,                                                                                            +
                                                                               "Shared Read Blocks": 43976,                                                                                        +
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
                                                                                   "Node Type": "Sort",                                                                                            +
                                                                                   "Parent Relationship": "Outer",                                                                                 +
                                                                                   "Parallel Aware": false,                                                                                        +
                                                                                   "Startup Cost": 17748.53,                                                                                       +
                                                                                   "Total Cost": 17748.53,                                                                                         +
                                                                                   "Plan Rows": 10,                                                                                                +
                                                                                   "Plan Width": 12,                                                                                               +
                                                                                   "Actual Startup Time": 2718.248,                                                                                +
                                                                                   "Actual Total Time": 2719.231,                                                                                  +
                                                                                   "Actual Rows": 10536,                                                                                           +
                                                                                   "Actual Loops": 1,                                                                                              +
                                                                                   "Sort Key": ["mk.movie_id"],                                                                                    +
                                                                                   "Sort Method": "quicksort",                                                                                     +
                                                                                   "Sort Space Used": 878,                                                                                         +
                                                                                   "Sort Space Type": "Memory",                                                                                    +
                                                                                   "Shared Hit Blocks": 14,                                                                                        +
                                                                                   "Shared Read Blocks": 25190,                                                                                    +
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
                                                                                       "Node Type": "Merge Join",                                                                                  +
                                                                                       "Parent Relationship": "Outer",                                                                             +
                                                                                       "Parallel Aware": false,                                                                                    +
                                                                                       "Join Type": "Inner",                                                                                       +
                                                                                       "Startup Cost": 17748.52,                                                                                   +
                                                                                       "Total Cost": 17748.52,                                                                                     +
                                                                                       "Plan Rows": 10,                                                                                            +
                                                                                       "Plan Width": 12,                                                                                           +
                                                                                       "Actual Startup Time": 2712.946,                                                                            +
                                                                                       "Actual Total Time": 2715.430,                                                                              +
                                                                                       "Actual Rows": 10536,                                                                                       +
                                                                                       "Actual Loops": 1,                                                                                          +
                                                                                       "Inner Unique": false,                                                                                      +
                                                                                       "Merge Cond": "(cct2.id = cc.status_id)",                                                                   +
                                                                                       "Shared Hit Blocks": 14,                                                                                    +
                                                                                       "Shared Read Blocks": 25190,                                                                                +
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
                                                                                           "Node Type": "Sort",                                                                                    +
                                                                                           "Parent Relationship": "Outer",                                                                         +
                                                                                           "Parallel Aware": false,                                                                                +
                                                                                           "Startup Cost": 0.03,                                                                                   +
                                                                                           "Total Cost": 0.03,                                                                                     +
                                                                                           "Plan Rows": 1,                                                                                         +
                                                                                           "Plan Width": 4,                                                                                        +
                                                                                           "Actual Startup Time": 0.026,                                                                           +
                                                                                           "Actual Total Time": 0.027,                                                                             +
                                                                                           "Actual Rows": 1,                                                                                       +
                                                                                           "Actual Loops": 1,                                                                                      +
                                                                                           "Sort Key": ["cct2.id"],                                                                                +
                                                                                           "Sort Method": "quicksort",                                                                             +
                                                                                           "Sort Space Used": 25,                                                                                  +
                                                                                           "Sort Space Type": "Memory",                                                                            +
                                                                                           "Shared Hit Blocks": 1,                                                                                 +
                                                                                           "Shared Read Blocks": 0,                                                                                +
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
                                                                                               "Node Type": "Seq Scan",                                                                            +
                                                                                               "Parent Relationship": "Outer",                                                                     +
                                                                                               "Parallel Aware": false,                                                                            +
                                                                                               "Relation Name": "comp_cast_type",                                                                  +
                                                                                               "Alias": "cct2",                                                                                    +
                                                                                               "Startup Cost": 0.00,                                                                               +
                                                                                               "Total Cost": 0.03,                                                                                 +
                                                                                               "Plan Rows": 1,                                                                                     +
                                                                                               "Plan Width": 4,                                                                                    +
                                                                                               "Actual Startup Time": 0.008,                                                                       +
                                                                                               "Actual Total Time": 0.009,                                                                         +
                                                                                               "Actual Rows": 1,                                                                                   +
                                                                                               "Actual Loops": 1,                                                                                  +
                                                                                               "Filter": "((kind)::text = 'complete'::text)",                                                      +
                                                                                               "Rows Removed by Filter": 3,                                                                        +
                                                                                               "Shared Hit Blocks": 1,                                                                             +
                                                                                               "Shared Read Blocks": 0,                                                                            +
                                                                                               "Shared Dirtied Blocks": 0,                                                                         +
                                                                                               "Shared Written Blocks": 0,                                                                         +
                                                                                               "Local Hit Blocks": 0,                                                                              +
                                                                                               "Local Read Blocks": 0,                                                                             +
                                                                                               "Local Dirtied Blocks": 0,                                                                          +
                                                                                               "Local Written Blocks": 0,                                                                          +
                                                                                               "Temp Read Blocks": 0,                                                                              +
                                                                                               "Temp Written Blocks": 0                                                                            +
                                                                                             }                                                                                                     +
                                                                                           ]                                                                                                       +
                                                                                         },                                                                                                        +
                                                                                         {                                                                                                         +
                                                                                           "Node Type": "Sort",                                                                                    +
                                                                                           "Parent Relationship": "Inner",                                                                         +
                                                                                           "Parallel Aware": false,                                                                                +
                                                                                           "Startup Cost": 17748.48,                                                                               +
                                                                                           "Total Cost": 17748.49,                                                                                 +
                                                                                           "Plan Rows": 41,                                                                                        +
                                                                                           "Plan Width": 16,                                                                                       +
                                                                                           "Actual Startup Time": 2712.915,                                                                        +
                                                                                           "Actual Total Time": 2713.426,                                                                          +
                                                                                           "Actual Rows": 10537,                                                                                   +
                                                                                           "Actual Loops": 1,                                                                                      +
                                                                                           "Sort Key": ["cc.status_id"],                                                                           +
                                                                                           "Sort Method": "quicksort",                                                                             +
                                                                                           "Sort Space Used": 1707,                                                                                +
                                                                                           "Sort Space Type": "Memory",                                                                            +
                                                                                           "Shared Hit Blocks": 13,                                                                                +
                                                                                           "Shared Read Blocks": 25190,                                                                            +
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
                                                                                               "Node Type": "Merge Join",                                                                          +
                                                                                               "Parent Relationship": "Outer",                                                                     +
                                                                                               "Parallel Aware": false,                                                                            +
                                                                                               "Join Type": "Inner",                                                                               +
                                                                                               "Startup Cost": 17727.86,                                                                           +
                                                                                               "Total Cost": 17748.45,                                                                             +
                                                                                               "Plan Rows": 41,                                                                                    +
                                                                                               "Plan Width": 16,                                                                                   +
                                                                                               "Actual Startup Time": 2676.186,                                                                    +
                                                                                               "Actual Total Time": 2708.408,                                                                      +
                                                                                               "Actual Rows": 20024,                                                                               +
                                                                                               "Actual Loops": 1,                                                                                  +
                                                                                               "Inner Unique": false,                                                                              +
                                                                                               "Merge Cond": "(mk.movie_id = cc.movie_id)",                                                        +
                                                                                               "Shared Hit Blocks": 13,                                                                            +
                                                                                               "Shared Read Blocks": 25190,                                                                        +
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
                                                                                                   "Node Type": "Sort",                                                                            +
                                                                                                   "Parent Relationship": "Outer",                                                                 +
                                                                                                   "Parallel Aware": false,                                                                        +
                                                                                                   "Startup Cost": 17338.09,                                                                       +
                                                                                                   "Total Cost": 17338.10,                                                                         +
                                                                                                   "Plan Rows": 135,                                                                               +
                                                                                                   "Plan Width": 4,                                                                                +
                                                                                                   "Actual Startup Time": 2577.447,                                                                +
                                                                                                   "Actual Total Time": 2580.934,                                                                  +
                                                                                                   "Actual Rows": 37091,                                                                           +
                                                                                                   "Actual Loops": 1,                                                                              +
                                                                                                   "Sort Key": ["mk.movie_id"],                                                                    +
                                                                                                   "Sort Method": "quicksort",                                                                     +
                                                                                                   "Sort Space Used": 3275,                                                                        +
                                                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                                                   "Shared Hit Blocks": 11,                                                                        +
                                                                                                   "Shared Read Blocks": 24461,                                                                    +
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
                                                                                                       "Startup Cost": 16635.45,                                                                   +
                                                                                                       "Total Cost": 17337.94,                                                                     +
                                                                                                       "Plan Rows": 135,                                                                           +
                                                                                                       "Plan Width": 4,                                                                            +
                                                                                                       "Actual Startup Time": 2355.742,                                                            +
                                                                                                       "Actual Total Time": 2565.028,                                                              +
                                                                                                       "Actual Rows": 37091,                                                                       +
                                                                                                       "Actual Loops": 1,                                                                          +
                                                                                                       "Inner Unique": true,                                                                       +
                                                                                                       "Merge Cond": "(mk.keyword_id = k.id)",                                                     +
                                                                                                       "Shared Hit Blocks": 11,                                                                    +
                                                                                                       "Shared Read Blocks": 24461,                                                                +
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
                                                                                                           "Node Type": "Sort",                                                                    +
                                                                                                           "Parent Relationship": "Outer",                                                         +
                                                                                                           "Parallel Aware": false,                                                                +
                                                                                                           "Startup Cost": 16610.92,                                                               +
                                                                                                           "Total Cost": 16962.16,                                                                 +
                                                                                                           "Plan Rows": 4523930,                                                                   +
                                                                                                           "Plan Width": 8,                                                                        +
                                                                                                           "Actual Startup Time": 2219.729,                                                        +
                                                                                                           "Actual Total Time": 2368.424,                                                          +
                                                                                                           "Actual Rows": 943582,                                                                  +
                                                                                                           "Actual Loops": 1,                                                                      +
                                                                                                           "Sort Key": ["mk.keyword_id"],                                                          +
                                                                                                           "Sort Method": "quicksort",                                                             +
                                                                                                           "Sort Space Used": 408668,                                                              +
                                                                                                           "Sort Space Type": "Memory",                                                            +
                                                                                                           "Shared Hit Blocks": 3,                                                                 +
                                                                                                           "Shared Read Blocks": 24451,                                                            +
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
                                                                                                               "Relation Name": "movie_keyword",                                                   +
                                                                                                               "Alias": "mk",                                                                      +
                                                                                                               "Startup Cost": 0.00,                                                               +
                                                                                                               "Total Cost": 1079.84,                                                              +
                                                                                                               "Plan Rows": 4523930,                                                               +
                                                                                                               "Plan Width": 8,                                                                    +
                                                                                                               "Actual Startup Time": 0.012,                                                       +
                                                                                                               "Actual Total Time": 783.932,                                                       +
                                                                                                               "Actual Rows": 4523930,                                                             +
                                                                                                               "Actual Loops": 1,                                                                  +
                                                                                                               "Shared Hit Blocks": 3,                                                             +
                                                                                                               "Shared Read Blocks": 24451,                                                        +
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
                                                                                                         },                                                                                        +
                                                                                                         {                                                                                         +
                                                                                                           "Node Type": "Sort",                                                                    +
                                                                                                           "Parent Relationship": "Inner",                                                         +
                                                                                                           "Parallel Aware": false,                                                                +
                                                                                                           "Startup Cost": 24.53,                                                                  +
                                                                                                           "Total Cost": 24.53,                                                                    +
                                                                                                           "Plan Rows": 4,                                                                         +
                                                                                                           "Plan Width": 4,                                                                        +
                                                                                                           "Actual Startup Time": 68.627,                                                          +
                                                                                                           "Actual Total Time": 68.627,                                                            +
                                                                                                           "Actual Rows": 3,                                                                       +
                                                                                                           "Actual Loops": 1,                                                                      +
                                                                                                           "Sort Key": ["k.id"],                                                                   +
                                                                                                           "Sort Method": "quicksort",                                                             +
                                                                                                           "Sort Space Used": 25,                                                                  +
                                                                                                           "Sort Space Type": "Memory",                                                            +
                                                                                                           "Shared Hit Blocks": 8,                                                                 +
                                                                                                           "Shared Read Blocks": 10,                                                               +
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
                                                                                                               "Node Type": "Index Scan",                                                          +
                                                                                                               "Parent Relationship": "Outer",                                                     +
                                                                                                               "Parallel Aware": false,                                                            +
                                                                                                               "Scan Direction": "Forward",                                                        +
                                                                                                               "Index Name": "keyword_idx_keyword",                                                +
                                                                                                               "Relation Name": "keyword",                                                         +
                                                                                                               "Alias": "k",                                                                       +
                                                                                                               "Startup Cost": 0.01,                                                               +
                                                                                                               "Total Cost": 24.53,                                                                +
                                                                                                               "Plan Rows": 4,                                                                     +
                                                                                                               "Plan Width": 4,                                                                    +
                                                                                                               "Actual Startup Time": 43.667,                                                      +
                                                                                                               "Actual Total Time": 68.604,                                                        +
                                                                                                               "Actual Rows": 3,                                                                   +
                                                                                                               "Actual Loops": 1,                                                                  +
                                                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",+
                                                                                                               "Rows Removed by Index Recheck": 0,                                                 +
                                                                                                               "Shared Hit Blocks": 8,                                                             +
                                                                                                               "Shared Read Blocks": 10,                                                           +
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
                                                                                                     }                                                                                             +
                                                                                                   ]                                                                                               +
                                                                                                 },                                                                                                +
                                                                                                 {                                                                                                 +
                                                                                                   "Node Type": "Sort",                                                                            +
                                                                                                   "Parent Relationship": "Inner",                                                                 +
                                                                                                   "Parallel Aware": false,                                                                        +
                                                                                                   "Startup Cost": 389.78,                                                                         +
                                                                                                   "Total Cost": 400.26,                                                                           +
                                                                                                   "Plan Rows": 135086,                                                                            +
                                                                                                   "Plan Width": 12,                                                                               +
                                                                                                   "Actual Startup Time": 98.646,                                                                  +
                                                                                                   "Actual Total Time": 105.878,                                                                   +
                                                                                                   "Actual Rows": 138007,                                                                          +
                                                                                                   "Actual Loops": 1,                                                                              +
                                                                                                   "Sort Key": ["cc.movie_id"],                                                                    +
                                                                                                   "Sort Method": "quicksort",                                                                     +
                                                                                                   "Sort Space Used": 12477,                                                                       +
                                                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                                                   "Shared Hit Blocks": 2,                                                                         +
                                                                                                   "Shared Read Blocks": 729,                                                                      +
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
                                                                                                       "Node Type": "Seq Scan",                                                                    +
                                                                                                       "Parent Relationship": "Outer",                                                             +
                                                                                                       "Parallel Aware": false,                                                                    +
                                                                                                       "Relation Name": "complete_cast",                                                           +
                                                                                                       "Alias": "cc",                                                                              +
                                                                                                       "Startup Cost": 0.00,                                                                       +
                                                                                                       "Total Cost": 32.27,                                                                        +
                                                                                                       "Plan Rows": 135086,                                                                        +
                                                                                                       "Plan Width": 12,                                                                           +
                                                                                                       "Actual Startup Time": 7.672,                                                               +
                                                                                                       "Actual Total Time": 41.454,                                                                +
                                                                                                       "Actual Rows": 135086,                                                                      +
                                                                                                       "Actual Loops": 1,                                                                          +
                                                                                                       "Shared Hit Blocks": 2,                                                                     +
                                                                                                       "Shared Read Blocks": 729,                                                                  +
                                                                                                       "Shared Dirtied Blocks": 0,                                                                 +
                                                                                                       "Shared Written Blocks": 0,                                                                 +
                                                                                                       "Local Hit Blocks": 0,                                                                      +
                                                                                                       "Local Read Blocks": 0,                                                                     +
                                                                                                       "Local Dirtied Blocks": 0,                                                                  +
                                                                                                       "Local Written Blocks": 0,                                                                  +
                                                                                                       "Temp Read Blocks": 0,                                                                      +
                                                                                                       "Temp Written Blocks": 0                                                                    +
                                                                                                     }                                                                                             +
                                                                                                   ]                                                                                               +
                                                                                                 }                                                                                                 +
                                                                                               ]                                                                                                   +
                                                                                             }                                                                                                     +
                                                                                           ]                                                                                                       +
                                                                                         }                                                                                                         +
                                                                                       ]                                                                                                           +
                                                                                     }                                                                                                             +
                                                                                   ]                                                                                                               +
                                                                                 },                                                                                                                +
                                                                                 {                                                                                                                 +
                                                                                   "Node Type": "Sort",                                                                                            +
                                                                                   "Parent Relationship": "Inner",                                                                                 +
                                                                                   "Parallel Aware": false,                                                                                        +
                                                                                   "Startup Cost": 1555.92,                                                                                        +
                                                                                   "Total Cost": 1567.04,                                                                                          +
                                                                                   "Plan Rows": 143259,                                                                                            +
                                                                                   "Plan Width": 12,                                                                                               +
                                                                                   "Actual Startup Time": 955.337,                                                                                 +
                                                                                   "Actual Total Time": 973.431,                                                                                   +
                                                                                   "Actual Rows": 319689,                                                                                          +
                                                                                   "Actual Loops": 1,                                                                                              +
                                                                                   "Sort Key": ["mc.movie_id"],                                                                                    +
                                                                                   "Sort Method": "quicksort",                                                                                     +
                                                                                   "Sort Space Used": 26504,                                                                                       +
                                                                                   "Sort Space Type": "Memory",                                                                                    +
                                                                                   "Shared Hit Blocks": 3,                                                                                         +
                                                                                   "Shared Read Blocks": 18786,                                                                                    +
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
                                                                                       "Node Type": "Seq Scan",                                                                                    +
                                                                                       "Parent Relationship": "Outer",                                                                             +
                                                                                       "Parallel Aware": false,                                                                                    +
                                                                                       "Relation Name": "movie_companies",                                                                         +
                                                                                       "Alias": "mc",                                                                                              +
                                                                                       "Startup Cost": 0.00,                                                                                       +
                                                                                       "Total Cost": 1174.90,                                                                                      +
                                                                                       "Plan Rows": 143259,                                                                                        +
                                                                                       "Plan Width": 12,                                                                                           +
                                                                                       "Actual Startup Time": 0.016,                                                                               +
                                                                                       "Actual Total Time": 842.241,                                                                               +
                                                                                       "Actual Rows": 303271,                                                                                      +
                                                                                       "Actual Loops": 1,                                                                                          +
                                                                                       "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                    +
                                                                                       "Rows Removed by Filter": 2305858,                                                                          +
                                                                                       "Shared Hit Blocks": 3,                                                                                     +
                                                                                       "Shared Read Blocks": 18786,                                                                                +
                                                                                       "Shared Dirtied Blocks": 0,                                                                                 +
                                                                                       "Shared Written Blocks": 0,                                                                                 +
                                                                                       "Local Hit Blocks": 0,                                                                                      +
                                                                                       "Local Read Blocks": 0,                                                                                     +
                                                                                       "Local Dirtied Blocks": 0,                                                                                  +
                                                                                       "Local Written Blocks": 0,                                                                                  +
                                                                                       "Temp Read Blocks": 0,                                                                                      +
                                                                                       "Temp Written Blocks": 0                                                                                    +
                                                                                     }                                                                                                             +
                                                                                   ]                                                                                                               +
                                                                                 }                                                                                                                 +
                                                                               ]                                                                                                                   +
                                                                             },                                                                                                                    +
                                                                             {                                                                                                                     +
                                                                               "Node Type": "Sort",                                                                                                +
                                                                               "Parent Relationship": "Inner",                                                                                     +
                                                                               "Parallel Aware": false,                                                                                            +
                                                                               "Startup Cost": 4638.12,                                                                                            +
                                                                               "Total Cost": 4716.76,                                                                                              +
                                                                               "Plan Rows": 1012920,                                                                                               +
                                                                               "Plan Width": 25,                                                                                                   +
                                                                               "Actual Startup Time": 2049.510,                                                                                    +
                                                                               "Actual Total Time": 2171.334,                                                                                      +
                                                                               "Actual Rows": 1012355,                                                                                             +
                                                                               "Actual Loops": 1,                                                                                                  +
                                                                               "Sort Key": ["t.id"],                                                                                               +
                                                                               "Sort Method": "quicksort",                                                                                         +
                                                                               "Sort Space Used": 101193,                                                                                          +
                                                                               "Sort Space Type": "Memory",                                                                                        +
                                                                               "Shared Hit Blocks": 2,                                                                                             +
                                                                               "Shared Read Blocks": 35996,                                                                                        +
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
                                                                                   "Relation Name": "title",                                                                                       +
                                                                                   "Alias": "t",                                                                                                   +
                                                                                   "Startup Cost": 0.00,                                                                                           +
                                                                                   "Total Cost": 1500.26,                                                                                          +
                                                                                   "Plan Rows": 1012920,                                                                                           +
                                                                                   "Plan Width": 25,                                                                                               +
                                                                                   "Actual Startup Time": 4.672,                                                                                   +
                                                                                   "Actual Total Time": 1419.970,                                                                                  +
                                                                                   "Actual Rows": 1012920,                                                                                         +
                                                                                   "Actual Loops": 1,                                                                                              +
                                                                                   "Filter": "(production_year > 2005)",                                                                           +
                                                                                   "Rows Removed by Filter": 1515392,                                                                              +
                                                                                   "Shared Hit Blocks": 2,                                                                                         +
                                                                                   "Shared Read Blocks": 35996,                                                                                    +
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
                                                                     }                                                                                                                             +
                                                                   ]                                                                                                                               +
                                                                 }                                                                                                                                 +
                                                               ]                                                                                                                                   +
                                                             },                                                                                                                                    +
                                                             {                                                                                                                                     +
                                                               "Node Type": "Sort",                                                                                                                +
                                                               "Parent Relationship": "Inner",                                                                                                     +
                                                               "Parallel Aware": false,                                                                                                            +
                                                               "Startup Cost": 460.56,                                                                                                             +
                                                               "Total Cost": 470.36,                                                                                                               +
                                                               "Plan Rows": 126230,                                                                                                                +
                                                               "Plan Width": 23,                                                                                                                   +
                                                               "Actual Startup Time": 167.305,                                                                                                     +
                                                               "Actual Total Time": 171.549,                                                                                                       +
                                                               "Actual Rows": 38546,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                                  +
                                                               "Sort Key": ["cn.id"],                                                                                                              +
                                                               "Sort Method": "quicksort",                                                                                                         +
                                                               "Sort Space Used": 12077,                                                                                                           +
                                                               "Sort Space Type": "Memory",                                                                                                        +
                                                               "Shared Hit Blocks": 2,                                                                                                             +
                                                               "Shared Read Blocks": 2992,                                                                                                         +
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
                                                                   "Node Type": "Seq Scan",                                                                                                        +
                                                                   "Parent Relationship": "Outer",                                                                                                 +
                                                                   "Parallel Aware": false,                                                                                                        +
                                                                   "Relation Name": "company_name",                                                                                                +
                                                                   "Alias": "cn",                                                                                                                  +
                                                                   "Startup Cost": 0.00,                                                                                                           +
                                                                   "Total Cost": 128.41,                                                                                                           +
                                                                   "Plan Rows": 126230,                                                                                                            +
                                                                   "Plan Width": 23,                                                                                                               +
                                                                   "Actual Startup Time": 7.490,                                                                                                   +
                                                                   "Actual Total Time": 102.609,                                                                                                   +
                                                                   "Actual Rows": 126230,                                                                                                          +
                                                                   "Actual Loops": 1,                                                                                                              +
                                                                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                             +
                                                                   "Rows Removed by Filter": 108767,                                                                                               +
                                                                   "Shared Hit Blocks": 2,                                                                                                         +
                                                                   "Shared Read Blocks": 2992,                                                                                                     +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                     +
                                                                   "Shared Written Blocks": 0,                                                                                                     +
                                                                   "Local Hit Blocks": 0,                                                                                                          +
                                                                   "Local Read Blocks": 0,                                                                                                         +
                                                                   "Local Dirtied Blocks": 0,                                                                                                      +
                                                                   "Local Written Blocks": 0,                                                                                                      +
                                                                   "Temp Read Blocks": 0,                                                                                                          +
                                                                   "Temp Written Blocks": 0                                                                                                        +
                                                                 }                                                                                                                                 +
                                                               ]                                                                                                                                   +
                                                             }                                                                                                                                     +
                                                           ]                                                                                                                                       +
                                                         }                                                                                                                                         +
                                                       ]                                                                                                                                           +
                                                     },                                                                                                                                            +
                                                     {                                                                                                                                             +
                                                       "Node Type": "Sort",                                                                                                                        +
                                                       "Parent Relationship": "Inner",                                                                                                             +
                                                       "Parallel Aware": false,                                                                                                                    +
                                                       "Startup Cost": 0.03,                                                                                                                       +
                                                       "Total Cost": 0.03,                                                                                                                         +
                                                       "Plan Rows": 1,                                                                                                                             +
                                                       "Plan Width": 4,                                                                                                                            +
                                                       "Actual Startup Time": 0.019,                                                                                                               +
                                                       "Actual Total Time": 0.019,                                                                                                                 +
                                                       "Actual Rows": 1,                                                                                                                           +
                                                       "Actual Loops": 1,                                                                                                                          +
                                                       "Sort Key": ["cct1.id"],                                                                                                                    +
                                                       "Sort Method": "quicksort",                                                                                                                 +
                                                       "Sort Space Used": 25,                                                                                                                      +
                                                       "Sort Space Type": "Memory",                                                                                                                +
                                                       "Shared Hit Blocks": 1,                                                                                                                     +
                                                       "Shared Read Blocks": 0,                                                                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                 +
                                                       "Shared Written Blocks": 0,                                                                                                                 +
                                                       "Local Hit Blocks": 0,                                                                                                                      +
                                                       "Local Read Blocks": 0,                                                                                                                     +
                                                       "Local Dirtied Blocks": 0,                                                                                                                  +
                                                       "Local Written Blocks": 0,                                                                                                                  +
                                                       "Temp Read Blocks": 0,                                                                                                                      +
                                                       "Temp Written Blocks": 0,                                                                                                                   +
                                                       "Plans": [                                                                                                                                  +
                                                         {                                                                                                                                         +
                                                           "Node Type": "Seq Scan",                                                                                                                +
                                                           "Parent Relationship": "Outer",                                                                                                         +
                                                           "Parallel Aware": false,                                                                                                                +
                                                           "Relation Name": "comp_cast_type",                                                                                                      +
                                                           "Alias": "cct1",                                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                                   +
                                                           "Total Cost": 0.03,                                                                                                                     +
                                                           "Plan Rows": 1,                                                                                                                         +
                                                           "Plan Width": 4,                                                                                                                        +
                                                           "Actual Startup Time": 0.009,                                                                                                           +
                                                           "Actual Total Time": 0.010,                                                                                                             +
                                                           "Actual Rows": 1,                                                                                                                       +
                                                           "Actual Loops": 1,                                                                                                                      +
                                                           "Filter": "((kind)::text = 'cast'::text)",                                                                                              +
                                                           "Rows Removed by Filter": 3,                                                                                                            +
                                                           "Shared Hit Blocks": 1,                                                                                                                 +
                                                           "Shared Read Blocks": 0,                                                                                                                +
                                                           "Shared Dirtied Blocks": 0,                                                                                                             +
                                                           "Shared Written Blocks": 0,                                                                                                             +
                                                           "Local Hit Blocks": 0,                                                                                                                  +
                                                           "Local Read Blocks": 0,                                                                                                                 +
                                                           "Local Dirtied Blocks": 0,                                                                                                              +
                                                           "Local Written Blocks": 0,                                                                                                              +
                                                           "Temp Read Blocks": 0,                                                                                                                  +
                                                           "Temp Written Blocks": 0                                                                                                                +
                                                         }                                                                                                                                         +
                                                       ]                                                                                                                                           +
                                                     }                                                                                                                                             +
                                                   ]                                                                                                                                               +
                                                 }                                                                                                                                                 +
                                               ]                                                                                                                                                   +
                                             },                                                                                                                                                    +
                                             {                                                                                                                                                     +
                                               "Node Type": "Sort",                                                                                                                                +
                                               "Parent Relationship": "Inner",                                                                                                                     +
                                               "Parallel Aware": false,                                                                                                                            +
                                               "Startup Cost": 4714.83,                                                                                                                            +
                                               "Total Cost": 4819.15,                                                                                                                              +
                                               "Plan Rows": 1343551,                                                                                                                               +
                                               "Plan Width": 14,                                                                                                                                   +
                                               "Actual Startup Time": 904.478,                                                                                                                     +
                                               "Actual Total Time": 968.726,                                                                                                                       +
                                               "Actual Rows": 1363211,                                                                                                                             +
                                               "Actual Loops": 1,                                                                                                                                  +
                                               "Sort Key": ["mi_idx.movie_id"],                                                                                                                    +
                                               "Sort Method": "quicksort",                                                                                                                         +
                                               "Sort Space Used": 126497,                                                                                                                          +
                                               "Sort Space Type": "Memory",                                                                                                                        +
                                               "Shared Hit Blocks": 2,                                                                                                                             +
                                               "Shared Read Blocks": 8451,                                                                                                                         +
                                               "Shared Dirtied Blocks": 0,                                                                                                                         +
                                               "Shared Written Blocks": 0,                                                                                                                         +
                                               "Local Hit Blocks": 0,                                                                                                                              +
                                               "Local Read Blocks": 0,                                                                                                                             +
                                               "Local Dirtied Blocks": 0,                                                                                                                          +
                                               "Local Written Blocks": 0,                                                                                                                          +
                                               "Temp Read Blocks": 0,                                                                                                                              +
                                               "Temp Written Blocks": 0,                                                                                                                           +
                                               "Plans": [                                                                                                                                          +
                                                 {                                                                                                                                                 +
                                                   "Node Type": "Seq Scan",                                                                                                                        +
                                                   "Parent Relationship": "Outer",                                                                                                                 +
                                                   "Parallel Aware": false,                                                                                                                        +
                                                   "Relation Name": "movie_info_idx",                                                                                                              +
                                                   "Alias": "mi_idx",                                                                                                                              +
                                                   "Startup Cost": 0.00,                                                                                                                           +
                                                   "Total Cost": 467.71,                                                                                                                           +
                                                   "Plan Rows": 1343551,                                                                                                                           +
                                                   "Plan Width": 14,                                                                                                                               +
                                                   "Actual Startup Time": 0.010,                                                                                                                   +
                                                   "Actual Total Time": 408.248,                                                                                                                   +
                                                   "Actual Rows": 1343555,                                                                                                                         +
                                                   "Actual Loops": 1,                                                                                                                              +
                                                   "Filter": "(info < '8.5'::text)",                                                                                                               +
                                                   "Rows Removed by Filter": 36480,                                                                                                                +
                                                   "Shared Hit Blocks": 2,                                                                                                                         +
                                                   "Shared Read Blocks": 8451,                                                                                                                     +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                     +
                                                   "Shared Written Blocks": 0,                                                                                                                     +
                                                   "Local Hit Blocks": 0,                                                                                                                          +
                                                   "Local Read Blocks": 0,                                                                                                                         +
                                                   "Local Dirtied Blocks": 0,                                                                                                                      +
                                                   "Local Written Blocks": 0,                                                                                                                      +
                                                   "Temp Read Blocks": 0,                                                                                                                          +
                                                   "Temp Written Blocks": 0                                                                                                                        +
                                                 }                                                                                                                                                 +
                                               ]                                                                                                                                                   +
                                             }                                                                                                                                                     +
                                           ]                                                                                                                                                       +
                                         }                                                                                                                                                         +
                                       ]                                                                                                                                                           +
                                     }                                                                                                                                                             +
                                   ]                                                                                                                                                               +
                                 }                                                                                                                                                                 +
                               ]                                                                                                                                                                   +
                             },                                                                                                                                                                    +
                             {                                                                                                                                                                     +
                               "Node Type": "Sort",                                                                                                                                                +
                               "Parent Relationship": "Inner",                                                                                                                                     +
                               "Parallel Aware": false,                                                                                                                                            +
                               "Startup Cost": 14022.63,                                                                                                                                           +
                               "Total Cost": 14078.15,                                                                                                                                             +
                               "Plan Rows": 715132,                                                                                                                                                +
                               "Plan Width": 8,                                                                                                                                                    +
                               "Actual Startup Time": 8428.649,                                                                                                                                    +
                               "Actual Total Time": 8461.615,                                                                                                                                      +
                               "Actual Rows": 724006,                                                                                                                                              +
                               "Actual Loops": 1,                                                                                                                                                  +
                               "Sort Key": ["mi.movie_id"],                                                                                                                                        +
                               "Sort Method": "quicksort",                                                                                                                                         +
                               "Sort Space Used": 58149,                                                                                                                                           +
                               "Sort Space Type": "Memory",                                                                                                                                        +
                               "Shared Hit Blocks": 2,                                                                                                                                             +
                               "Shared Read Blocks": 161890,                                                                                                                                       +
                               "Shared Dirtied Blocks": 0,                                                                                                                                         +
                               "Shared Written Blocks": 0,                                                                                                                                         +
                               "Local Hit Blocks": 0,                                                                                                                                              +
                               "Local Read Blocks": 0,                                                                                                                                             +
                               "Local Dirtied Blocks": 0,                                                                                                                                          +
                               "Local Written Blocks": 0,                                                                                                                                          +
                               "Temp Read Blocks": 0,                                                                                                                                              +
                               "Temp Written Blocks": 0,                                                                                                                                           +
                               "Plans": [                                                                                                                                                          +
                                 {                                                                                                                                                                 +
                                   "Node Type": "Seq Scan",                                                                                                                                        +
                                   "Parent Relationship": "Outer",                                                                                                                                 +
                                   "Parallel Aware": false,                                                                                                                                        +
                                   "Relation Name": "movie_info",                                                                                                                                  +
                                   "Alias": "mi",                                                                                                                                                  +
                                   "Startup Cost": 0.00,                                                                                                                                           +
                                   "Total Cost": 11863.04,                                                                                                                                         +
                                   "Plan Rows": 715132,                                                                                                                                            +
                                   "Plan Width": 8,                                                                                                                                                +
                                   "Actual Startup Time": 28.579,                                                                                                                                  +
                                   "Actual Total Time": 8179.091,                                                                                                                                  +
                                   "Actual Rows": 716210,                                                                                                                                          +
                                   "Actual Loops": 1,                                                                                                                                              +
                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",                                              +
                                   "Rows Removed by Filter": 14119510,                                                                                                                             +
                                   "Shared Hit Blocks": 2,                                                                                                                                         +
                                   "Shared Read Blocks": 161890,                                                                                                                                   +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                     +
                                   "Shared Written Blocks": 0,                                                                                                                                     +
                                   "Local Hit Blocks": 0,                                                                                                                                          +
                                   "Local Read Blocks": 0,                                                                                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                                                                                      +
                                   "Local Written Blocks": 0,                                                                                                                                      +
                                   "Temp Read Blocks": 0,                                                                                                                                          +
                                   "Temp Written Blocks": 0                                                                                                                                        +
                                 }                                                                                                                                                                 +
                               ]                                                                                                                                                                   +
                             }                                                                                                                                                                     +
                           ]                                                                                                                                                                       +
                         }                                                                                                                                                                         +
                       ]                                                                                                                                                                           +
                     }                                                                                                                                                                             +
                   ]                                                                                                                                                                               +
                 }                                                                                                                                                                                 +
               ]                                                                                                                                                                                   +
             },                                                                                                                                                                                    +
             {                                                                                                                                                                                     +
               "Node Type": "Sort",                                                                                                                                                                +
               "Parent Relationship": "Inner",                                                                                                                                                     +
               "Parallel Aware": false,                                                                                                                                                            +
               "Startup Cost": 0.03,                                                                                                                                                               +
               "Total Cost": 0.03,                                                                                                                                                                 +
               "Plan Rows": 4,                                                                                                                                                                     +
               "Plan Width": 4,                                                                                                                                                                    +
               "Actual Startup Time": 0.024,                                                                                                                                                       +
               "Actual Total Time": 0.024,                                                                                                                                                         +
               "Actual Rows": 1,                                                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                                                  +
               "Sort Key": ["ct.id"],                                                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                                                         +
               "Sort Space Used": 25,                                                                                                                                                              +
               "Sort Space Type": "Memory",                                                                                                                                                        +
               "Shared Hit Blocks": 1,                                                                                                                                                             +
               "Shared Read Blocks": 0,                                                                                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                                                                                         +
               "Shared Written Blocks": 0,                                                                                                                                                         +
               "Local Hit Blocks": 0,                                                                                                                                                              +
               "Local Read Blocks": 0,                                                                                                                                                             +
               "Local Dirtied Blocks": 0,                                                                                                                                                          +
               "Local Written Blocks": 0,                                                                                                                                                          +
               "Temp Read Blocks": 0,                                                                                                                                                              +
               "Temp Written Blocks": 0,                                                                                                                                                           +
               "Plans": [                                                                                                                                                                          +
                 {                                                                                                                                                                                 +
                   "Node Type": "Seq Scan",                                                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                                                        +
                   "Relation Name": "company_type",                                                                                                                                                +
                   "Alias": "ct",                                                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                                                           +
                   "Total Cost": 0.03,                                                                                                                                                             +
                   "Plan Rows": 4,                                                                                                                                                                 +
                   "Plan Width": 4,                                                                                                                                                                +
                   "Actual Startup Time": 0.014,                                                                                                                                                   +
                   "Actual Total Time": 0.015,                                                                                                                                                     +
                   "Actual Rows": 4,                                                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                                              +
                   "Shared Hit Blocks": 1,                                                                                                                                                         +
                   "Shared Read Blocks": 0,                                                                                                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                     +
                   "Shared Written Blocks": 0,                                                                                                                                                     +
                   "Local Hit Blocks": 0,                                                                                                                                                          +
                   "Local Read Blocks": 0,                                                                                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                                                                                      +
                   "Local Written Blocks": 0,                                                                                                                                                      +
                   "Temp Read Blocks": 0,                                                                                                                                                          +
                   "Temp Written Blocks": 0                                                                                                                                                        +
                 }                                                                                                                                                                                 +
               ]                                                                                                                                                                                   +
             }                                                                                                                                                                                     +
           ]                                                                                                                                                                                       +
         }                                                                                                                                                                                         +
       ]                                                                                                                                                                                           +
     },                                                                                                                                                                                            +
     "Planning Time": 15162.165,                                                                                                                                                                   +
     "Triggers": [                                                                                                                                                                                 +
     ],                                                                                                                                                                                            +
     "Execution Time": 16022.733                                                                                                                                                                   +
   }                                                                                                                                                                                               +
 ]
(1 row)
