                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                             +
   {                                                                                                                                                                                           +
     "Plan": {                                                                                                                                                                                 +
       "Node Type": "Aggregate",                                                                                                                                                               +
       "Strategy": "Plain",                                                                                                                                                                    +
       "Partial Mode": "Simple",                                                                                                                                                               +
       "Parallel Aware": false,                                                                                                                                                                +
       "Startup Cost": 44954.27,                                                                                                                                                               +
       "Total Cost": 44954.27,                                                                                                                                                                 +
       "Plan Rows": 1,                                                                                                                                                                         +
       "Plan Width": 96,                                                                                                                                                                       +
       "Actual Startup Time": 16004.617,                                                                                                                                                       +
       "Actual Total Time": 16004.617,                                                                                                                                                         +
       "Actual Rows": 1,                                                                                                                                                                       +
       "Actual Loops": 1,                                                                                                                                                                      +
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
           "Node Type": "Merge Join",                                                                                                                                                          +
           "Parent Relationship": "Outer",                                                                                                                                                     +
           "Parallel Aware": false,                                                                                                                                                            +
           "Join Type": "Inner",                                                                                                                                                               +
           "Startup Cost": 44954.27,                                                                                                                                                           +
           "Total Cost": 44954.27,                                                                                                                                                             +
           "Plan Rows": 1,                                                                                                                                                                     +
           "Plan Width": 42,                                                                                                                                                                   +
           "Actual Startup Time": 16001.977,                                                                                                                                                   +
           "Actual Total Time": 16003.230,                                                                                                                                                     +
           "Actual Rows": 4803,                                                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                                                  +
           "Inner Unique": true,                                                                                                                                                               +
           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                                                         +
           "Shared Hit Blocks": 34,                                                                                                                                                            +
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
               "Node Type": "Sort",                                                                                                                                                            +
               "Parent Relationship": "Outer",                                                                                                                                                 +
               "Parallel Aware": false,                                                                                                                                                        +
               "Startup Cost": 44954.22,                                                                                                                                                       +
               "Total Cost": 44954.22,                                                                                                                                                         +
               "Plan Rows": 1,                                                                                                                                                                 +
               "Plan Width": 46,                                                                                                                                                               +
               "Actual Startup Time": 16001.889,                                                                                                                                               +
               "Actual Total Time": 16002.135,                                                                                                                                                 +
               "Actual Rows": 5155,                                                                                                                                                            +
               "Actual Loops": 1,                                                                                                                                                              +
               "Sort Key": ["mi.info_type_id"],                                                                                                                                                +
               "Sort Method": "quicksort",                                                                                                                                                     +
               "Sort Space Used": 716,                                                                                                                                                         +
               "Sort Space Type": "Memory",                                                                                                                                                    +
               "Shared Hit Blocks": 33,                                                                                                                                                        +
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
                   "Node Type": "Merge Join",                                                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                                                             +
                   "Parallel Aware": false,                                                                                                                                                    +
                   "Join Type": "Inner",                                                                                                                                                       +
                   "Startup Cost": 44954.22,                                                                                                                                                   +
                   "Total Cost": 44954.22,                                                                                                                                                     +
                   "Plan Rows": 1,                                                                                                                                                             +
                   "Plan Width": 46,                                                                                                                                                           +
                   "Actual Startup Time": 15989.925,                                                                                                                                           +
                   "Actual Total Time": 15991.432,                                                                                                                                             +
                   "Actual Rows": 5295,                                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                                          +
                   "Inner Unique": true,                                                                                                                                                       +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                                               +
                   "Shared Hit Blocks": 29,                                                                                                                                                    +
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
                       "Node Type": "Sort",                                                                                                                                                    +
                       "Parent Relationship": "Outer",                                                                                                                                         +
                       "Parallel Aware": false,                                                                                                                                                +
                       "Startup Cost": 44954.19,                                                                                                                                               +
                       "Total Cost": 44954.19,                                                                                                                                                 +
                       "Plan Rows": 1,                                                                                                                                                         +
                       "Plan Width": 50,                                                                                                                                                       +
                       "Actual Startup Time": 15989.898,                                                                                                                                       +
                       "Actual Total Time": 15990.146,                                                                                                                                         +
                       "Actual Rows": 5295,                                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                                      +
                       "Sort Key": ["mc.company_type_id"],                                                                                                                                     +
                       "Sort Method": "quicksort",                                                                                                                                             +
                       "Sort Space Used": 757,                                                                                                                                                 +
                       "Sort Space Type": "Memory",                                                                                                                                            +
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
                           "Node Type": "Merge Join",                                                                                                                                          +
                           "Parent Relationship": "Outer",                                                                                                                                     +
                           "Parallel Aware": false,                                                                                                                                            +
                           "Join Type": "Inner",                                                                                                                                               +
                           "Startup Cost": 44843.14,                                                                                                                                           +
                           "Total Cost": 44954.19,                                                                                                                                             +
                           "Plan Rows": 1,                                                                                                                                                     +
                           "Plan Width": 50,                                                                                                                                                   +
                           "Actual Startup Time": 15889.594,                                                                                                                                   +
                           "Actual Total Time": 15988.469,                                                                                                                                     +
                           "Actual Rows": 5295,                                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                                  +
                           "Inner Unique": false,                                                                                                                                              +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                                               +
                           "Shared Hit Blocks": 28,                                                                                                                                            +
                           "Shared Read Blocks": 253305,                                                                                                                                       +
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
                               "Node Type": "Sort",                                                                                                                                            +
                               "Parent Relationship": "Outer",                                                                                                                                 +
                               "Parallel Aware": false,                                                                                                                                        +
                               "Startup Cost": 30820.51,                                                                                                                                       +
                               "Total Cost": 30820.51,                                                                                                                                         +
                               "Plan Rows": 1,                                                                                                                                                 +
                               "Plan Width": 66,                                                                                                                                               +
                               "Actual Startup Time": 7448.223,                                                                                                                                +
                               "Actual Total Time": 7448.546,                                                                                                                                  +
                               "Actual Rows": 4410,                                                                                                                                            +
                               "Actual Loops": 1,                                                                                                                                              +
                               "Sort Key": ["mk.movie_id"],                                                                                                                                    +
                               "Sort Method": "quicksort",                                                                                                                                     +
                               "Sort Space Used": 798,                                                                                                                                         +
                               "Sort Space Type": "Memory",                                                                                                                                    +
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
                                   "Node Type": "Merge Join",                                                                                                                                  +
                                   "Parent Relationship": "Outer",                                                                                                                             +
                                   "Parallel Aware": false,                                                                                                                                    +
                                   "Join Type": "Inner",                                                                                                                                       +
                                   "Startup Cost": 30820.51,                                                                                                                                   +
                                   "Total Cost": 30820.51,                                                                                                                                     +
                                   "Plan Rows": 1,                                                                                                                                             +
                                   "Plan Width": 66,                                                                                                                                           +
                                   "Actual Startup Time": 7445.007,                                                                                                                            +
                                   "Actual Total Time": 7446.515,                                                                                                                              +
                                   "Actual Rows": 4410,                                                                                                                                        +
                                   "Actual Loops": 1,                                                                                                                                          +
                                   "Inner Unique": true,                                                                                                                                       +
                                   "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                        +
                                   "Shared Hit Blocks": 26,                                                                                                                                    +
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
                                       "Node Type": "Sort",                                                                                                                                    +
                                       "Parent Relationship": "Outer",                                                                                                                         +
                                       "Parallel Aware": false,                                                                                                                                +
                                       "Startup Cost": 30820.48,                                                                                                                               +
                                       "Total Cost": 30820.48,                                                                                                                                 +
                                       "Plan Rows": 1,                                                                                                                                         +
                                       "Plan Width": 70,                                                                                                                                       +
                                       "Actual Startup Time": 7444.975,                                                                                                                        +
                                       "Actual Total Time": 7445.191,                                                                                                                          +
                                       "Actual Rows": 4558,                                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                                      +
                                       "Sort Key": ["t.kind_id"],                                                                                                                              +
                                       "Sort Method": "quicksort",                                                                                                                             +
                                       "Sort Space Used": 830,                                                                                                                                 +
                                       "Sort Space Type": "Memory",                                                                                                                            +
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
                                           "Node Type": "Merge Join",                                                                                                                          +
                                           "Parent Relationship": "Outer",                                                                                                                     +
                                           "Parallel Aware": false,                                                                                                                            +
                                           "Join Type": "Inner",                                                                                                                               +
                                           "Startup Cost": 30820.48,                                                                                                                           +
                                           "Total Cost": 30820.48,                                                                                                                             +
                                           "Plan Rows": 1,                                                                                                                                     +
                                           "Plan Width": 70,                                                                                                                                   +
                                           "Actual Startup Time": 7441.907,                                                                                                                    +
                                           "Actual Total Time": 7443.307,                                                                                                                      +
                                           "Actual Rows": 4558,                                                                                                                                +
                                           "Actual Loops": 1,                                                                                                                                  +
                                           "Inner Unique": false,                                                                                                                              +
                                           "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                                                                                     +
                                           "Shared Hit Blocks": 25,                                                                                                                            +
                                           "Shared Read Blocks": 91415,                                                                                                                        +
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
                                               "Node Type": "Sort",                                                                                                                            +
                                               "Parent Relationship": "Outer",                                                                                                                 +
                                               "Parallel Aware": false,                                                                                                                        +
                                               "Startup Cost": 0.05,                                                                                                                           +
                                               "Total Cost": 0.05,                                                                                                                             +
                                               "Plan Rows": 1,                                                                                                                                 +
                                               "Plan Width": 4,                                                                                                                                +
                                               "Actual Startup Time": 0.079,                                                                                                                   +
                                               "Actual Total Time": 0.079,                                                                                                                     +
                                               "Actual Rows": 1,                                                                                                                               +
                                               "Actual Loops": 1,                                                                                                                              +
                                               "Sort Key": ["it2.id"],                                                                                                                         +
                                               "Sort Method": "quicksort",                                                                                                                     +
                                               "Sort Space Used": 25,                                                                                                                          +
                                               "Sort Space Type": "Memory",                                                                                                                    +
                                               "Shared Hit Blocks": 1,                                                                                                                         +
                                               "Shared Read Blocks": 0,                                                                                                                        +
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
                                                   "Node Type": "Seq Scan",                                                                                                                    +
                                                   "Parent Relationship": "Outer",                                                                                                             +
                                                   "Parallel Aware": false,                                                                                                                    +
                                                   "Relation Name": "info_type",                                                                                                               +
                                                   "Alias": "it2",                                                                                                                             +
                                                   "Startup Cost": 0.00,                                                                                                                       +
                                                   "Total Cost": 0.05,                                                                                                                         +
                                                   "Plan Rows": 1,                                                                                                                             +
                                                   "Plan Width": 4,                                                                                                                            +
                                                   "Actual Startup Time": 0.057,                                                                                                               +
                                                   "Actual Total Time": 0.062,                                                                                                                 +
                                                   "Actual Rows": 1,                                                                                                                           +
                                                   "Actual Loops": 1,                                                                                                                          +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                                                +
                                                   "Rows Removed by Filter": 112,                                                                                                              +
                                                   "Shared Hit Blocks": 1,                                                                                                                     +
                                                   "Shared Read Blocks": 0,                                                                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                 +
                                                   "Shared Written Blocks": 0,                                                                                                                 +
                                                   "Local Hit Blocks": 0,                                                                                                                      +
                                                   "Local Read Blocks": 0,                                                                                                                     +
                                                   "Local Dirtied Blocks": 0,                                                                                                                  +
                                                   "Local Written Blocks": 0,                                                                                                                  +
                                                   "Temp Read Blocks": 0,                                                                                                                      +
                                                   "Temp Written Blocks": 0                                                                                                                    +
                                                 }                                                                                                                                             +
                                               ]                                                                                                                                               +
                                             },                                                                                                                                                +
                                             {                                                                                                                                                 +
                                               "Node Type": "Sort",                                                                                                                            +
                                               "Parent Relationship": "Inner",                                                                                                                 +
                                               "Parallel Aware": false,                                                                                                                        +
                                               "Startup Cost": 30820.43,                                                                                                                       +
                                               "Total Cost": 30820.43,                                                                                                                         +
                                               "Plan Rows": 1,                                                                                                                                 +
                                               "Plan Width": 74,                                                                                                                               +
                                               "Actual Startup Time": 7439.707,                                                                                                                +
                                               "Actual Total Time": 7440.475,                                                                                                                  +
                                               "Actual Rows": 14018,                                                                                                                           +
                                               "Actual Loops": 1,                                                                                                                              +
                                               "Sort Key": ["mi_idx.info_type_id"],                                                                                                            +
                                               "Sort Method": "quicksort",                                                                                                                     +
                                               "Sort Space Used": 2452,                                                                                                                        +
                                               "Sort Space Type": "Memory",                                                                                                                    +
                                               "Shared Hit Blocks": 24,                                                                                                                        +
                                               "Shared Read Blocks": 91415,                                                                                                                    +
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
                                                   "Node Type": "Merge Join",                                                                                                                  +
                                                   "Parent Relationship": "Outer",                                                                                                             +
                                                   "Parallel Aware": false,                                                                                                                    +
                                                   "Join Type": "Inner",                                                                                                                       +
                                                   "Startup Cost": 30611.80,                                                                                                                   +
                                                   "Total Cost": 30820.43,                                                                                                                     +
                                                   "Plan Rows": 1,                                                                                                                             +
                                                   "Plan Width": 74,                                                                                                                           +
                                                   "Actual Startup Time": 7236.104,                                                                                                            +
                                                   "Actual Total Time": 7433.461,                                                                                                              +
                                                   "Actual Rows": 14644,                                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                                          +
                                                   "Inner Unique": false,                                                                                                                      +
                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                                   +
                                                   "Shared Hit Blocks": 24,                                                                                                                    +
                                                   "Shared Read Blocks": 91415,                                                                                                                +
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
                                                       "Node Type": "Sort",                                                                                                                    +
                                                       "Parent Relationship": "Outer",                                                                                                         +
                                                       "Parallel Aware": false,                                                                                                                +
                                                       "Startup Cost": 25896.97,                                                                                                               +
                                                       "Total Cost": 25896.97,                                                                                                                 +
                                                       "Plan Rows": 1,                                                                                                                         +
                                                       "Plan Width": 60,                                                                                                                       +
                                                       "Actual Startup Time": 6314.713,                                                                                                        +
                                                       "Actual Total Time": 6315.311,                                                                                                          +
                                                       "Actual Rows": 4881,                                                                                                                    +
                                                       "Actual Loops": 1,                                                                                                                      +
                                                       "Sort Key": ["mk.movie_id"],                                                                                                            +
                                                       "Sort Method": "quicksort",                                                                                                             +
                                                       "Sort Space Used": 834,                                                                                                                 +
                                                       "Sort Space Type": "Memory",                                                                                                            +
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
                                                           "Node Type": "Merge Join",                                                                                                          +
                                                           "Parent Relationship": "Outer",                                                                                                     +
                                                           "Parallel Aware": false,                                                                                                            +
                                                           "Join Type": "Inner",                                                                                                               +
                                                           "Startup Cost": 25896.97,                                                                                                           +
                                                           "Total Cost": 25896.97,                                                                                                             +
                                                           "Plan Rows": 1,                                                                                                                     +
                                                           "Plan Width": 60,                                                                                                                   +
                                                           "Actual Startup Time": 6311.287,                                                                                                    +
                                                           "Actual Total Time": 6312.903,                                                                                                      +
                                                           "Actual Rows": 4881,                                                                                                                +
                                                           "Actual Loops": 1,                                                                                                                  +
                                                           "Inner Unique": true,                                                                                                               +
                                                           "Merge Cond": "(cc.status_id = cct2.id)",                                                                                           +
                                                           "Shared Hit Blocks": 22,                                                                                                            +
                                                           "Shared Read Blocks": 82964,                                                                                                        +
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
                                                               "Node Type": "Sort",                                                                                                            +
                                                               "Parent Relationship": "Outer",                                                                                                 +
                                                               "Parallel Aware": false,                                                                                                        +
                                                               "Startup Cost": 25896.93,                                                                                                       +
                                                               "Total Cost": 25896.93,                                                                                                         +
                                                               "Plan Rows": 1,                                                                                                                 +
                                                               "Plan Width": 64,                                                                                                               +
                                                               "Actual Startup Time": 6311.265,                                                                                                +
                                                               "Actual Total Time": 6311.513,                                                                                                  +
                                                               "Actual Rows": 4882,                                                                                                            +
                                                               "Actual Loops": 1,                                                                                                              +
                                                               "Sort Key": ["cc.status_id"],                                                                                                   +
                                                               "Sort Method": "quicksort",                                                                                                     +
                                                               "Sort Space Used": 1027,                                                                                                        +
                                                               "Sort Space Type": "Memory",                                                                                                    +
                                                               "Shared Hit Blocks": 21,                                                                                                        +
                                                               "Shared Read Blocks": 82964,                                                                                                    +
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
                                                                   "Node Type": "Merge Join",                                                                                                  +
                                                                   "Parent Relationship": "Outer",                                                                                             +
                                                                   "Parallel Aware": false,                                                                                                    +
                                                                   "Join Type": "Inner",                                                                                                       +
                                                                   "Startup Cost": 25877.33,                                                                                                   +
                                                                   "Total Cost": 25896.93,                                                                                                     +
                                                                   "Plan Rows": 1,                                                                                                             +
                                                                   "Plan Width": 64,                                                                                                           +
                                                                   "Actual Startup Time": 6297.078,                                                                                            +
                                                                   "Actual Total Time": 6309.347,                                                                                              +
                                                                   "Actual Rows": 6079,                                                                                                        +
                                                                   "Actual Loops": 1,                                                                                                          +
                                                                   "Inner Unique": true,                                                                                                       +
                                                                   "Merge Cond": "(mc.company_id = cn.id)",                                                                                    +
                                                                   "Shared Hit Blocks": 21,                                                                                                    +
                                                                   "Shared Read Blocks": 82964,                                                                                                +
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
                                                                       "Node Type": "Sort",                                                                                                    +
                                                                       "Parent Relationship": "Outer",                                                                                         +
                                                                       "Parallel Aware": false,                                                                                                +
                                                                       "Startup Cost": 25416.77,                                                                                               +
                                                                       "Total Cost": 25416.77,                                                                                                 +
                                                                       "Plan Rows": 1,                                                                                                         +
                                                                       "Plan Width": 49,                                                                                                       +
                                                                       "Actual Startup Time": 6131.250,                                                                                        +
                                                                       "Actual Total Time": 6131.971,                                                                                          +
                                                                       "Actual Rows": 6266,                                                                                                    +
                                                                       "Actual Loops": 1,                                                                                                      +
                                                                       "Sort Key": ["mc.company_id"],                                                                                          +
                                                                       "Sort Method": "quicksort",                                                                                             +
                                                                       "Sort Space Used": 788,                                                                                                 +
                                                                       "Sort Space Type": "Memory",                                                                                            +
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
                                                                           "Startup Cost": 25416.77,                                                                                           +
                                                                           "Total Cost": 25416.77,                                                                                             +
                                                                           "Plan Rows": 1,                                                                                                     +
                                                                           "Plan Width": 49,                                                                                                   +
                                                                           "Actual Startup Time": 6126.383,                                                                                    +
                                                                           "Actual Total Time": 6128.614,                                                                                      +
                                                                           "Actual Rows": 6266,                                                                                                +
                                                                           "Actual Loops": 1,                                                                                                  +
                                                                           "Inner Unique": true,                                                                                               +
                                                                           "Merge Cond": "(cc.subject_id = cct1.id)",                                                                          +
                                                                           "Shared Hit Blocks": 19,                                                                                            +
                                                                           "Shared Read Blocks": 79972,                                                                                        +
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
                                                                               "Startup Cost": 25416.74,                                                                                       +
                                                                               "Total Cost": 25416.74,                                                                                         +
                                                                               "Plan Rows": 1,                                                                                                 +
                                                                               "Plan Width": 53,                                                                                               +
                                                                               "Actual Startup Time": 6121.117,                                                                                +
                                                                               "Actual Total Time": 6123.018,                                                                                  +
                                                                               "Actual Rows": 40168,                                                                                           +
                                                                               "Actual Loops": 1,                                                                                              +
                                                                               "Sort Key": ["cc.subject_id"],                                                                                  +
                                                                               "Sort Method": "quicksort",                                                                                     +
                                                                               "Sort Space Used": 6147,                                                                                        +
                                                                               "Sort Space Type": "Memory",                                                                                    +
                                                                               "Shared Hit Blocks": 18,                                                                                        +
                                                                               "Shared Read Blocks": 79972,                                                                                    +
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
                                                                                   "Startup Cost": 25159.59,                                                                                   +
                                                                                   "Total Cost": 25416.74,                                                                                     +
                                                                                   "Plan Rows": 1,                                                                                             +
                                                                                   "Plan Width": 53,                                                                                           +
                                                                                   "Actual Startup Time": 5651.867,                                                                            +
                                                                                   "Actual Total Time": 6108.132,                                                                              +
                                                                                   "Actual Rows": 40168,                                                                                       +
                                                                                   "Actual Loops": 1,                                                                                          +
                                                                                   "Inner Unique": false,                                                                                      +
                                                                                   "Merge Cond": "(t.id = mc.movie_id)",                                                                       +
                                                                                   "Shared Hit Blocks": 18,                                                                                    +
                                                                                   "Shared Read Blocks": 79972,                                                                                +
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
                                                                                       "Startup Cost": 23603.67,                                                                               +
                                                                                       "Total Cost": 23838.57,                                                                                 +
                                                                                       "Plan Rows": 22,                                                                                        +
                                                                                       "Plan Width": 41,                                                                                       +
                                                                                       "Actual Startup Time": 4698.371,                                                                        +
                                                                                       "Actual Total Time": 5103.915,                                                                          +
                                                                                       "Actual Rows": 3518,                                                                                    +
                                                                                       "Actual Loops": 1,                                                                                      +
                                                                                       "Inner Unique": true,                                                                                   +
                                                                                       "Merge Cond": "(mk.movie_id = t.id)",                                                                   +
                                                                                       "Shared Hit Blocks": 15,                                                                                +
                                                                                       "Shared Read Blocks": 61186,                                                                            +
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
                                                                                           "Actual Startup Time": 2657.693,                                                                    +
                                                                                           "Actual Total Time": 2697.281,                                                                      +
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
                                                                                               "Actual Startup Time": 2583.219,                                                                +
                                                                                               "Actual Total Time": 2588.544,                                                                  +
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
                                                                                                   "Actual Startup Time": 2363.964,                                                            +
                                                                                                   "Actual Total Time": 2570.925,                                                              +
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
                                                                                                       "Actual Startup Time": 2230.318,                                                        +
                                                                                                       "Actual Total Time": 2376.799,                                                          +
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
                                                                                                           "Actual Startup Time": 0.013,                                                       +
                                                                                                           "Actual Total Time": 782.363,                                                       +
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
                                                                                                       "Actual Startup Time": 66.475,                                                          +
                                                                                                       "Actual Total Time": 66.476,                                                            +
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
                                                                                                           "Actual Startup Time": 41.523,                                                      +
                                                                                                           "Actual Total Time": 66.451,                                                        +
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
                                                                                               "Actual Startup Time": 74.388,                                                                  +
                                                                                               "Actual Total Time": 85.168,                                                                    +
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
                                                                                                   "Actual Startup Time": 2.001,                                                               +
                                                                                                   "Actual Total Time": 27.342,                                                                +
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
                                                                                         },                                                                                                    +
                                                                                         {                                                                                                     +
                                                                                           "Node Type": "Sort",                                                                                +
                                                                                           "Parent Relationship": "Inner",                                                                     +
                                                                                           "Parallel Aware": false,                                                                            +
                                                                                           "Startup Cost": 5875.81,                                                                            +
                                                                                           "Total Cost": 5983.06,                                                                              +
                                                                                           "Plan Rows": 1381453,                                                                               +
                                                                                           "Plan Width": 25,                                                                                   +
                                                                                           "Actual Startup Time": 2035.289,                                                                    +
                                                                                           "Actual Total Time": 2198.973,                                                                      +
                                                                                           "Actual Rows": 1380936,                                                                             +
                                                                                           "Actual Loops": 1,                                                                                  +
                                                                                           "Sort Key": ["t.id"],                                                                               +
                                                                                           "Sort Method": "quicksort",                                                                         +
                                                                                           "Sort Space Used": 153732,                                                                          +
                                                                                           "Sort Space Type": "Memory",                                                                        +
                                                                                           "Shared Hit Blocks": 2,                                                                             +
                                                                                           "Shared Read Blocks": 35996,                                                                        +
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
                                                                                               "Relation Name": "title",                                                                       +
                                                                                               "Alias": "t",                                                                                   +
                                                                                               "Startup Cost": 0.00,                                                                           +
                                                                                               "Total Cost": 1500.26,                                                                          +
                                                                                               "Plan Rows": 1381453,                                                                           +
                                                                                               "Plan Width": 25,                                                                               +
                                                                                               "Actual Startup Time": 21.176,                                                                  +
                                                                                               "Actual Total Time": 1228.722,                                                                  +
                                                                                               "Actual Rows": 1381453,                                                                         +
                                                                                               "Actual Loops": 1,                                                                              +
                                                                                               "Filter": "(production_year > 2000)",                                                           +
                                                                                               "Rows Removed by Filter": 1146859,                                                              +
                                                                                               "Shared Hit Blocks": 2,                                                                         +
                                                                                               "Shared Read Blocks": 35996,                                                                    +
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
                                                                                     },                                                                                                        +
                                                                                     {                                                                                                         +
                                                                                       "Node Type": "Sort",                                                                                    +
                                                                                       "Parent Relationship": "Inner",                                                                         +
                                                                                       "Parallel Aware": false,                                                                                +
                                                                                       "Startup Cost": 1555.92,                                                                                +
                                                                                       "Total Cost": 1567.04,                                                                                  +
                                                                                       "Plan Rows": 143259,                                                                                    +
                                                                                       "Plan Width": 12,                                                                                       +
                                                                                       "Actual Startup Time": 949.795,                                                                         +
                                                                                       "Actual Total Time": 966.805,                                                                           +
                                                                                       "Actual Rows": 324938,                                                                                  +
                                                                                       "Actual Loops": 1,                                                                                      +
                                                                                       "Sort Key": ["mc.movie_id"],                                                                            +
                                                                                       "Sort Method": "quicksort",                                                                             +
                                                                                       "Sort Space Used": 26504,                                                                               +
                                                                                       "Sort Space Type": "Memory",                                                                            +
                                                                                       "Shared Hit Blocks": 3,                                                                                 +
                                                                                       "Shared Read Blocks": 18786,                                                                            +
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
                                                                                           "Relation Name": "movie_companies",                                                                 +
                                                                                           "Alias": "mc",                                                                                      +
                                                                                           "Startup Cost": 0.00,                                                                               +
                                                                                           "Total Cost": 1174.90,                                                                              +
                                                                                           "Plan Rows": 143259,                                                                                +
                                                                                           "Plan Width": 12,                                                                                   +
                                                                                           "Actual Startup Time": 0.027,                                                                       +
                                                                                           "Actual Total Time": 838.739,                                                                       +
                                                                                           "Actual Rows": 303271,                                                                              +
                                                                                           "Actual Loops": 1,                                                                                  +
                                                                                           "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                            +
                                                                                           "Rows Removed by Filter": 2305858,                                                                  +
                                                                                           "Shared Hit Blocks": 3,                                                                             +
                                                                                           "Shared Read Blocks": 18786,                                                                        +
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
                                                                                     }                                                                                                         +
                                                                                   ]                                                                                                           +
                                                                                 }                                                                                                             +
                                                                               ]                                                                                                               +
                                                                             },                                                                                                                +
                                                                             {                                                                                                                 +
                                                                               "Node Type": "Sort",                                                                                            +
                                                                               "Parent Relationship": "Inner",                                                                                 +
                                                                               "Parallel Aware": false,                                                                                        +
                                                                               "Startup Cost": 0.03,                                                                                           +
                                                                               "Total Cost": 0.03,                                                                                             +
                                                                               "Plan Rows": 1,                                                                                                 +
                                                                               "Plan Width": 4,                                                                                                +
                                                                               "Actual Startup Time": 0.026,                                                                                   +
                                                                               "Actual Total Time": 0.026,                                                                                     +
                                                                               "Actual Rows": 1,                                                                                               +
                                                                               "Actual Loops": 1,                                                                                              +
                                                                               "Sort Key": ["cct1.id"],                                                                                        +
                                                                               "Sort Method": "quicksort",                                                                                     +
                                                                               "Sort Space Used": 25,                                                                                          +
                                                                               "Sort Space Type": "Memory",                                                                                    +
                                                                               "Shared Hit Blocks": 1,                                                                                         +
                                                                               "Shared Read Blocks": 0,                                                                                        +
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
                                                                                   "Relation Name": "comp_cast_type",                                                                          +
                                                                                   "Alias": "cct1",                                                                                            +
                                                                                   "Startup Cost": 0.00,                                                                                       +
                                                                                   "Total Cost": 0.03,                                                                                         +
                                                                                   "Plan Rows": 1,                                                                                             +
                                                                                   "Plan Width": 4,                                                                                            +
                                                                                   "Actual Startup Time": 0.017,                                                                               +
                                                                                   "Actual Total Time": 0.018,                                                                                 +
                                                                                   "Actual Rows": 1,                                                                                           +
                                                                                   "Actual Loops": 1,                                                                                          +
                                                                                   "Filter": "((kind)::text = 'crew'::text)",                                                                  +
                                                                                   "Rows Removed by Filter": 3,                                                                                +
                                                                                   "Shared Hit Blocks": 1,                                                                                     +
                                                                                   "Shared Read Blocks": 0,                                                                                    +
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
                                                                         }                                                                                                                     +
                                                                       ]                                                                                                                       +
                                                                     },                                                                                                                        +
                                                                     {                                                                                                                         +
                                                                       "Node Type": "Sort",                                                                                                    +
                                                                       "Parent Relationship": "Inner",                                                                                         +
                                                                       "Parallel Aware": false,                                                                                                +
                                                                       "Startup Cost": 460.56,                                                                                                 +
                                                                       "Total Cost": 470.36,                                                                                                   +
                                                                       "Plan Rows": 126230,                                                                                                    +
                                                                       "Plan Width": 23,                                                                                                       +
                                                                       "Actual Startup Time": 165.818,                                                                                         +
                                                                       "Actual Total Time": 169.973,                                                                                           +
                                                                       "Actual Rows": 36583,                                                                                                   +
                                                                       "Actual Loops": 1,                                                                                                      +
                                                                       "Sort Key": ["cn.id"],                                                                                                  +
                                                                       "Sort Method": "quicksort",                                                                                             +
                                                                       "Sort Space Used": 12077,                                                                                               +
                                                                       "Sort Space Type": "Memory",                                                                                            +
                                                                       "Shared Hit Blocks": 2,                                                                                                 +
                                                                       "Shared Read Blocks": 2992,                                                                                             +
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
                                                                           "Node Type": "Seq Scan",                                                                                            +
                                                                           "Parent Relationship": "Outer",                                                                                     +
                                                                           "Parallel Aware": false,                                                                                            +
                                                                           "Relation Name": "company_name",                                                                                    +
                                                                           "Alias": "cn",                                                                                                      +
                                                                           "Startup Cost": 0.00,                                                                                               +
                                                                           "Total Cost": 128.41,                                                                                               +
                                                                           "Plan Rows": 126230,                                                                                                +
                                                                           "Plan Width": 23,                                                                                                   +
                                                                           "Actual Startup Time": 5.511,                                                                                       +
                                                                           "Actual Total Time": 101.323,                                                                                       +
                                                                           "Actual Rows": 126230,                                                                                              +
                                                                           "Actual Loops": 1,                                                                                                  +
                                                                           "Filter": "((country_code)::text <> '[us]'::text)",                                                                 +
                                                                           "Rows Removed by Filter": 108767,                                                                                   +
                                                                           "Shared Hit Blocks": 2,                                                                                             +
                                                                           "Shared Read Blocks": 2992,                                                                                         +
                                                                           "Shared Dirtied Blocks": 0,                                                                                         +
                                                                           "Shared Written Blocks": 0,                                                                                         +
                                                                           "Local Hit Blocks": 0,                                                                                              +
                                                                           "Local Read Blocks": 0,                                                                                             +
                                                                           "Local Dirtied Blocks": 0,                                                                                          +
                                                                           "Local Written Blocks": 0,                                                                                          +
                                                                           "Temp Read Blocks": 0,                                                                                              +
                                                                           "Temp Written Blocks": 0                                                                                            +
                                                                         }                                                                                                                     +
                                                                       ]                                                                                                                       +
                                                                     }                                                                                                                         +
                                                                   ]                                                                                                                           +
                                                                 }                                                                                                                             +
                                                               ]                                                                                                                               +
                                                             },                                                                                                                                +
                                                             {                                                                                                                                 +
                                                               "Node Type": "Sort",                                                                                                            +
                                                               "Parent Relationship": "Inner",                                                                                                 +
                                                               "Parallel Aware": false,                                                                                                        +
                                                               "Startup Cost": 0.03,                                                                                                           +
                                                               "Total Cost": 0.03,                                                                                                             +
                                                               "Plan Rows": 3,                                                                                                                 +
                                                               "Plan Width": 4,                                                                                                                +
                                                               "Actual Startup Time": 0.017,                                                                                                   +
                                                               "Actual Total Time": 0.017,                                                                                                     +
                                                               "Actual Rows": 3,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                              +
                                                               "Sort Key": ["cct2.id"],                                                                                                        +
                                                               "Sort Method": "quicksort",                                                                                                     +
                                                               "Sort Space Used": 25,                                                                                                          +
                                                               "Sort Space Type": "Memory",                                                                                                    +
                                                               "Shared Hit Blocks": 1,                                                                                                         +
                                                               "Shared Read Blocks": 0,                                                                                                        +
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
                                                                   "Node Type": "Seq Scan",                                                                                                    +
                                                                   "Parent Relationship": "Outer",                                                                                             +
                                                                   "Parallel Aware": false,                                                                                                    +
                                                                   "Relation Name": "comp_cast_type",                                                                                          +
                                                                   "Alias": "cct2",                                                                                                            +
                                                                   "Startup Cost": 0.00,                                                                                                       +
                                                                   "Total Cost": 0.03,                                                                                                         +
                                                                   "Plan Rows": 3,                                                                                                             +
                                                                   "Plan Width": 4,                                                                                                            +
                                                                   "Actual Startup Time": 0.009,                                                                                               +
                                                                   "Actual Total Time": 0.010,                                                                                                 +
                                                                   "Actual Rows": 3,                                                                                                           +
                                                                   "Actual Loops": 1,                                                                                                          +
                                                                   "Filter": "((kind)::text <> 'complete+verified'::text)",                                                                    +
                                                                   "Rows Removed by Filter": 1,                                                                                                +
                                                                   "Shared Hit Blocks": 1,                                                                                                     +
                                                                   "Shared Read Blocks": 0,                                                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                 +
                                                                   "Shared Written Blocks": 0,                                                                                                 +
                                                                   "Local Hit Blocks": 0,                                                                                                      +
                                                                   "Local Read Blocks": 0,                                                                                                     +
                                                                   "Local Dirtied Blocks": 0,                                                                                                  +
                                                                   "Local Written Blocks": 0,                                                                                                  +
                                                                   "Temp Read Blocks": 0,                                                                                                      +
                                                                   "Temp Written Blocks": 0                                                                                                    +
                                                                 }                                                                                                                             +
                                                               ]                                                                                                                               +
                                                             }                                                                                                                                 +
                                                           ]                                                                                                                                   +
                                                         }                                                                                                                                     +
                                                       ]                                                                                                                                       +
                                                     },                                                                                                                                        +
                                                     {                                                                                                                                         +
                                                       "Node Type": "Sort",                                                                                                                    +
                                                       "Parent Relationship": "Inner",                                                                                                         +
                                                       "Parallel Aware": false,                                                                                                                +
                                                       "Startup Cost": 4714.83,                                                                                                                +
                                                       "Total Cost": 4819.15,                                                                                                                  +
                                                       "Plan Rows": 1343551,                                                                                                                   +
                                                       "Plan Width": 14,                                                                                                                       +
                                                       "Actual Startup Time": 914.870,                                                                                                         +
                                                       "Actual Total Time": 977.853,                                                                                                           +
                                                       "Actual Rows": 1352994,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                      +
                                                       "Sort Key": ["mi_idx.movie_id"],                                                                                                        +
                                                       "Sort Method": "quicksort",                                                                                                             +
                                                       "Sort Space Used": 126497,                                                                                                              +
                                                       "Sort Space Type": "Memory",                                                                                                            +
                                                       "Shared Hit Blocks": 2,                                                                                                                 +
                                                       "Shared Read Blocks": 8451,                                                                                                             +
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
                                                           "Node Type": "Seq Scan",                                                                                                            +
                                                           "Parent Relationship": "Outer",                                                                                                     +
                                                           "Parallel Aware": false,                                                                                                            +
                                                           "Relation Name": "movie_info_idx",                                                                                                  +
                                                           "Alias": "mi_idx",                                                                                                                  +
                                                           "Startup Cost": 0.00,                                                                                                               +
                                                           "Total Cost": 467.71,                                                                                                               +
                                                           "Plan Rows": 1343551,                                                                                                               +
                                                           "Plan Width": 14,                                                                                                                   +
                                                           "Actual Startup Time": 0.011,                                                                                                       +
                                                           "Actual Total Time": 413.191,                                                                                                       +
                                                           "Actual Rows": 1343555,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                                  +
                                                           "Filter": "(info < '8.5'::text)",                                                                                                   +
                                                           "Rows Removed by Filter": 36480,                                                                                                    +
                                                           "Shared Hit Blocks": 2,                                                                                                             +
                                                           "Shared Read Blocks": 8451,                                                                                                         +
                                                           "Shared Dirtied Blocks": 0,                                                                                                         +
                                                           "Shared Written Blocks": 0,                                                                                                         +
                                                           "Local Hit Blocks": 0,                                                                                                              +
                                                           "Local Read Blocks": 0,                                                                                                             +
                                                           "Local Dirtied Blocks": 0,                                                                                                          +
                                                           "Local Written Blocks": 0,                                                                                                          +
                                                           "Temp Read Blocks": 0,                                                                                                              +
                                                           "Temp Written Blocks": 0                                                                                                            +
                                                         }                                                                                                                                     +
                                                       ]                                                                                                                                       +
                                                     }                                                                                                                                         +
                                                   ]                                                                                                                                           +
                                                 }                                                                                                                                             +
                                               ]                                                                                                                                               +
                                             }                                                                                                                                                 +
                                           ]                                                                                                                                                   +
                                         }                                                                                                                                                     +
                                       ]                                                                                                                                                       +
                                     },                                                                                                                                                        +
                                     {                                                                                                                                                         +
                                       "Node Type": "Sort",                                                                                                                                    +
                                       "Parent Relationship": "Inner",                                                                                                                         +
                                       "Parallel Aware": false,                                                                                                                                +
                                       "Startup Cost": 0.03,                                                                                                                                   +
                                       "Total Cost": 0.03,                                                                                                                                     +
                                       "Plan Rows": 2,                                                                                                                                         +
                                       "Plan Width": 4,                                                                                                                                        +
                                       "Actual Startup Time": 0.029,                                                                                                                           +
                                       "Actual Total Time": 0.029,                                                                                                                             +
                                       "Actual Rows": 2,                                                                                                                                       +
                                       "Actual Loops": 1,                                                                                                                                      +
                                       "Sort Key": ["kt.id"],                                                                                                                                  +
                                       "Sort Method": "quicksort",                                                                                                                             +
                                       "Sort Space Used": 25,                                                                                                                                  +
                                       "Sort Space Type": "Memory",                                                                                                                            +
                                       "Shared Hit Blocks": 1,                                                                                                                                 +
                                       "Shared Read Blocks": 0,                                                                                                                                +
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
                                           "Node Type": "Seq Scan",                                                                                                                            +
                                           "Parent Relationship": "Outer",                                                                                                                     +
                                           "Parallel Aware": false,                                                                                                                            +
                                           "Relation Name": "kind_type",                                                                                                                       +
                                           "Alias": "kt",                                                                                                                                      +
                                           "Startup Cost": 0.00,                                                                                                                               +
                                           "Total Cost": 0.03,                                                                                                                                 +
                                           "Plan Rows": 2,                                                                                                                                     +
                                           "Plan Width": 4,                                                                                                                                    +
                                           "Actual Startup Time": 0.019,                                                                                                                       +
                                           "Actual Total Time": 0.022,                                                                                                                         +
                                           "Actual Rows": 2,                                                                                                                                   +
                                           "Actual Loops": 1,                                                                                                                                  +
                                           "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                       +
                                           "Rows Removed by Filter": 5,                                                                                                                        +
                                           "Shared Hit Blocks": 1,                                                                                                                             +
                                           "Shared Read Blocks": 0,                                                                                                                            +
                                           "Shared Dirtied Blocks": 0,                                                                                                                         +
                                           "Shared Written Blocks": 0,                                                                                                                         +
                                           "Local Hit Blocks": 0,                                                                                                                              +
                                           "Local Read Blocks": 0,                                                                                                                             +
                                           "Local Dirtied Blocks": 0,                                                                                                                          +
                                           "Local Written Blocks": 0,                                                                                                                          +
                                           "Temp Read Blocks": 0,                                                                                                                              +
                                           "Temp Written Blocks": 0                                                                                                                            +
                                         }                                                                                                                                                     +
                                       ]                                                                                                                                                       +
                                     }                                                                                                                                                         +
                                   ]                                                                                                                                                           +
                                 }                                                                                                                                                             +
                               ]                                                                                                                                                               +
                             },                                                                                                                                                                +
                             {                                                                                                                                                                 +
                               "Node Type": "Sort",                                                                                                                                            +
                               "Parent Relationship": "Inner",                                                                                                                                 +
                               "Parallel Aware": false,                                                                                                                                        +
                               "Startup Cost": 14022.63,                                                                                                                                       +
                               "Total Cost": 14078.15,                                                                                                                                         +
                               "Plan Rows": 715132,                                                                                                                                            +
                               "Plan Width": 8,                                                                                                                                                +
                               "Actual Startup Time": 8438.420,                                                                                                                                +
                               "Actual Total Time": 8471.018,                                                                                                                                  +
                               "Actual Rows": 719460,                                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                                              +
                               "Sort Key": ["mi.movie_id"],                                                                                                                                    +
                               "Sort Method": "quicksort",                                                                                                                                     +
                               "Sort Space Used": 58149,                                                                                                                                       +
                               "Sort Space Type": "Memory",                                                                                                                                    +
                               "Shared Hit Blocks": 2,                                                                                                                                         +
                               "Shared Read Blocks": 161890,                                                                                                                                   +
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
                                   "Node Type": "Seq Scan",                                                                                                                                    +
                                   "Parent Relationship": "Outer",                                                                                                                             +
                                   "Parallel Aware": false,                                                                                                                                    +
                                   "Relation Name": "movie_info",                                                                                                                              +
                                   "Alias": "mi",                                                                                                                                              +
                                   "Startup Cost": 0.00,                                                                                                                                       +
                                   "Total Cost": 11863.04,                                                                                                                                     +
                                   "Plan Rows": 715132,                                                                                                                                        +
                                   "Plan Width": 8,                                                                                                                                            +
                                   "Actual Startup Time": 32.597,                                                                                                                              +
                                   "Actual Total Time": 8188.107,                                                                                                                              +
                                   "Actual Rows": 716210,                                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                                          +
                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",                                          +
                                   "Rows Removed by Filter": 14119510,                                                                                                                         +
                                   "Shared Hit Blocks": 2,                                                                                                                                     +
                                   "Shared Read Blocks": 161890,                                                                                                                               +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                 +
                                   "Shared Written Blocks": 0,                                                                                                                                 +
                                   "Local Hit Blocks": 0,                                                                                                                                      +
                                   "Local Read Blocks": 0,                                                                                                                                     +
                                   "Local Dirtied Blocks": 0,                                                                                                                                  +
                                   "Local Written Blocks": 0,                                                                                                                                  +
                                   "Temp Read Blocks": 0,                                                                                                                                      +
                                   "Temp Written Blocks": 0                                                                                                                                    +
                                 }                                                                                                                                                             +
                               ]                                                                                                                                                               +
                             }                                                                                                                                                                 +
                           ]                                                                                                                                                                   +
                         }                                                                                                                                                                     +
                       ]                                                                                                                                                                       +
                     },                                                                                                                                                                        +
                     {                                                                                                                                                                         +
                       "Node Type": "Sort",                                                                                                                                                    +
                       "Parent Relationship": "Inner",                                                                                                                                         +
                       "Parallel Aware": false,                                                                                                                                                +
                       "Startup Cost": 0.03,                                                                                                                                                   +
                       "Total Cost": 0.03,                                                                                                                                                     +
                       "Plan Rows": 4,                                                                                                                                                         +
                       "Plan Width": 4,                                                                                                                                                        +
                       "Actual Startup Time": 0.022,                                                                                                                                           +
                       "Actual Total Time": 0.022,                                                                                                                                             +
                       "Actual Rows": 1,                                                                                                                                                       +
                       "Actual Loops": 1,                                                                                                                                                      +
                       "Sort Key": ["ct.id"],                                                                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                                                             +
                       "Sort Space Used": 25,                                                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                                                            +
                       "Shared Hit Blocks": 1,                                                                                                                                                 +
                       "Shared Read Blocks": 0,                                                                                                                                                +
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
                           "Node Type": "Seq Scan",                                                                                                                                            +
                           "Parent Relationship": "Outer",                                                                                                                                     +
                           "Parallel Aware": false,                                                                                                                                            +
                           "Relation Name": "company_type",                                                                                                                                    +
                           "Alias": "ct",                                                                                                                                                      +
                           "Startup Cost": 0.00,                                                                                                                                               +
                           "Total Cost": 0.03,                                                                                                                                                 +
                           "Plan Rows": 4,                                                                                                                                                     +
                           "Plan Width": 4,                                                                                                                                                    +
                           "Actual Startup Time": 0.012,                                                                                                                                       +
                           "Actual Total Time": 0.013,                                                                                                                                         +
                           "Actual Rows": 4,                                                                                                                                                   +
                           "Actual Loops": 1,                                                                                                                                                  +
                           "Shared Hit Blocks": 1,                                                                                                                                             +
                           "Shared Read Blocks": 0,                                                                                                                                            +
                           "Shared Dirtied Blocks": 0,                                                                                                                                         +
                           "Shared Written Blocks": 0,                                                                                                                                         +
                           "Local Hit Blocks": 0,                                                                                                                                              +
                           "Local Read Blocks": 0,                                                                                                                                             +
                           "Local Dirtied Blocks": 0,                                                                                                                                          +
                           "Local Written Blocks": 0,                                                                                                                                          +
                           "Temp Read Blocks": 0,                                                                                                                                              +
                           "Temp Written Blocks": 0                                                                                                                                            +
                         }                                                                                                                                                                     +
                       ]                                                                                                                                                                       +
                     }                                                                                                                                                                         +
                   ]                                                                                                                                                                           +
                 }                                                                                                                                                                             +
               ]                                                                                                                                                                               +
             },                                                                                                                                                                                +
             {                                                                                                                                                                                 +
               "Node Type": "Sort",                                                                                                                                                            +
               "Parent Relationship": "Inner",                                                                                                                                                 +
               "Parallel Aware": false,                                                                                                                                                        +
               "Startup Cost": 0.05,                                                                                                                                                           +
               "Total Cost": 0.05,                                                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                                                 +
               "Plan Width": 4,                                                                                                                                                                +
               "Actual Startup Time": 0.025,                                                                                                                                                   +
               "Actual Total Time": 0.026,                                                                                                                                                     +
               "Actual Rows": 1,                                                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                                              +
               "Sort Key": ["it1.id"],                                                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                                                     +
               "Sort Space Used": 25,                                                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                                                    +
               "Shared Hit Blocks": 1,                                                                                                                                                         +
               "Shared Read Blocks": 0,                                                                                                                                                        +
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
                   "Node Type": "Seq Scan",                                                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                                                             +
                   "Parallel Aware": false,                                                                                                                                                    +
                   "Relation Name": "info_type",                                                                                                                                               +
                   "Alias": "it1",                                                                                                                                                             +
                   "Startup Cost": 0.00,                                                                                                                                                       +
                   "Total Cost": 0.05,                                                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                                                             +
                   "Plan Width": 4,                                                                                                                                                            +
                   "Actual Startup Time": 0.011,                                                                                                                                               +
                   "Actual Total Time": 0.022,                                                                                                                                                 +
                   "Actual Rows": 1,                                                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                                                          +
                   "Filter": "((info)::text = 'countries'::text)",                                                                                                                             +
                   "Rows Removed by Filter": 112,                                                                                                                                              +
                   "Shared Hit Blocks": 1,                                                                                                                                                     +
                   "Shared Read Blocks": 0,                                                                                                                                                    +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                 +
                   "Shared Written Blocks": 0,                                                                                                                                                 +
                   "Local Hit Blocks": 0,                                                                                                                                                      +
                   "Local Read Blocks": 0,                                                                                                                                                     +
                   "Local Dirtied Blocks": 0,                                                                                                                                                  +
                   "Local Written Blocks": 0,                                                                                                                                                  +
                   "Temp Read Blocks": 0,                                                                                                                                                      +
                   "Temp Written Blocks": 0                                                                                                                                                    +
                 }                                                                                                                                                                             +
               ]                                                                                                                                                                               +
             }                                                                                                                                                                                 +
           ]                                                                                                                                                                                   +
         }                                                                                                                                                                                     +
       ]                                                                                                                                                                                       +
     },                                                                                                                                                                                        +
     "Planning Time": 14987.072,                                                                                                                                                               +
     "Triggers": [                                                                                                                                                                             +
     ],                                                                                                                                                                                        +
     "Execution Time": 16067.442                                                                                                                                                               +
   }                                                                                                                                                                                           +
 ]
(1 row)

