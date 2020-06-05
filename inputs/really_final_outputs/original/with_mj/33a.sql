                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                       +
   {                                                                                                                                                                                     +
     "Plan": {                                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                                          +
       "Startup Cost": 21587.68,                                                                                                                                                         +
       "Total Cost": 21587.68,                                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                                   +
       "Plan Width": 192,                                                                                                                                                                +
       "Actual Startup Time": 5230.295,                                                                                                                                                  +
       "Actual Total Time": 5230.295,                                                                                                                                                    +
       "Actual Rows": 1,                                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                                +
       "Shared Hit Blocks": 206121,                                                                                                                                                      +
       "Shared Read Blocks": 67223,                                                                                                                                                      +
       "Shared Dirtied Blocks": 0,                                                                                                                                                       +
       "Shared Written Blocks": 0,                                                                                                                                                       +
       "Local Hit Blocks": 0,                                                                                                                                                            +
       "Local Read Blocks": 0,                                                                                                                                                           +
       "Local Dirtied Blocks": 0,                                                                                                                                                        +
       "Local Written Blocks": 0,                                                                                                                                                        +
       "Temp Read Blocks": 0,                                                                                                                                                            +
       "Temp Written Blocks": 0,                                                                                                                                                         +
       "Plans": [                                                                                                                                                                        +
         {                                                                                                                                                                               +
           "Node Type": "Merge Join",                                                                                                                                                    +
           "Parent Relationship": "Outer",                                                                                                                                               +
           "Parallel Aware": false,                                                                                                                                                      +
           "Join Type": "Inner",                                                                                                                                                         +
           "Startup Cost": 21587.68,                                                                                                                                                     +
           "Total Cost": 21587.68,                                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                                               +
           "Plan Width": 84,                                                                                                                                                             +
           "Actual Startup Time": 5230.249,                                                                                                                                              +
           "Actual Total Time": 5230.252,                                                                                                                                                +
           "Actual Rows": 8,                                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                                         +
           "Merge Cond": "(mi_idx1.info_type_id = it1.id)",                                                                                                                              +
           "Shared Hit Blocks": 206121,                                                                                                                                                  +
           "Shared Read Blocks": 67223,                                                                                                                                                  +
           "Shared Dirtied Blocks": 0,                                                                                                                                                   +
           "Shared Written Blocks": 0,                                                                                                                                                   +
           "Local Hit Blocks": 0,                                                                                                                                                        +
           "Local Read Blocks": 0,                                                                                                                                                       +
           "Local Dirtied Blocks": 0,                                                                                                                                                    +
           "Local Written Blocks": 0,                                                                                                                                                    +
           "Temp Read Blocks": 0,                                                                                                                                                        +
           "Temp Written Blocks": 0,                                                                                                                                                     +
           "Plans": [                                                                                                                                                                    +
             {                                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                                  +
               "Startup Cost": 21587.64,                                                                                                                                                 +
               "Total Cost": 21587.64,                                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                                           +
               "Plan Width": 88,                                                                                                                                                         +
               "Actual Startup Time": 5230.222,                                                                                                                                          +
               "Actual Total Time": 5230.223,                                                                                                                                            +
               "Actual Rows": 24,                                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                                        +
               "Sort Key": ["mi_idx1.info_type_id"],                                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                                               +
               "Sort Space Used": 29,                                                                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                                                              +
               "Shared Hit Blocks": 206120,                                                                                                                                              +
               "Shared Read Blocks": 67223,                                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                                                 +
               "Plans": [                                                                                                                                                                +
                 {                                                                                                                                                                       +
                   "Node Type": "Merge Join",                                                                                                                                            +
                   "Parent Relationship": "Outer",                                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                                              +
                   "Join Type": "Inner",                                                                                                                                                 +
                   "Startup Cost": 21587.63,                                                                                                                                             +
                   "Total Cost": 21587.63,                                                                                                                                               +
                   "Plan Rows": 1,                                                                                                                                                       +
                   "Plan Width": 88,                                                                                                                                                     +
                   "Actual Startup Time": 5221.192,                                                                                                                                      +
                   "Actual Total Time": 5221.201,                                                                                                                                        +
                   "Actual Rows": 24,                                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                                    +
                   "Inner Unique": true,                                                                                                                                                 +
                   "Merge Cond": "(t2.kind_id = kt2.id)",                                                                                                                                +
                   "Shared Hit Blocks": 206116,                                                                                                                                          +
                   "Shared Read Blocks": 67223,                                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                                +
                   "Temp Written Blocks": 0,                                                                                                                                             +
                   "Plans": [                                                                                                                                                            +
                     {                                                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                                                              +
                       "Parent Relationship": "Outer",                                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                                          +
                       "Startup Cost": 21587.60,                                                                                                                                         +
                       "Total Cost": 21587.60,                                                                                                                                           +
                       "Plan Rows": 8,                                                                                                                                                   +
                       "Plan Width": 92,                                                                                                                                                 +
                       "Actual Startup Time": 5221.163,                                                                                                                                  +
                       "Actual Total Time": 5221.164,                                                                                                                                    +
                       "Actual Rows": 24,                                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                                +
                       "Sort Key": ["t2.kind_id"],                                                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                                                       +
                       "Sort Space Used": 29,                                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                                      +
                       "Shared Hit Blocks": 206115,                                                                                                                                      +
                       "Shared Read Blocks": 67223,                                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                                                            +
                       "Temp Written Blocks": 0,                                                                                                                                         +
                       "Plans": [                                                                                                                                                        +
                         {                                                                                                                                                               +
                           "Node Type": "Merge Join",                                                                                                                                    +
                           "Parent Relationship": "Outer",                                                                                                                               +
                           "Parallel Aware": false,                                                                                                                                      +
                           "Join Type": "Inner",                                                                                                                                         +
                           "Startup Cost": 21551.10,                                                                                                                                     +
                           "Total Cost": 21587.60,                                                                                                                                       +
                           "Plan Rows": 8,                                                                                                                                               +
                           "Plan Width": 92,                                                                                                                                             +
                           "Actual Startup Time": 5201.808,                                                                                                                              +
                           "Actual Total Time": 5221.128,                                                                                                                                +
                           "Actual Rows": 24,                                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                                            +
                           "Inner Unique": false,                                                                                                                                        +
                           "Merge Cond": "(cn2.id = mc2.company_id)",                                                                                                                    +
                           "Shared Hit Blocks": 206115,                                                                                                                                  +
                           "Shared Read Blocks": 67223,                                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                                        +
                           "Temp Written Blocks": 0,                                                                                                                                     +
                           "Plans": [                                                                                                                                                    +
                             {                                                                                                                                                           +
                               "Node Type": "Sort",                                                                                                                                      +
                               "Parent Relationship": "Outer",                                                                                                                           +
                               "Parallel Aware": false,                                                                                                                                  +
                               "Startup Cost": 761.23,                                                                                                                                   +
                               "Total Cost": 779.47,                                                                                                                                     +
                               "Plan Rows": 234997,                                                                                                                                      +
                               "Plan Width": 23,                                                                                                                                         +
                               "Actual Startup Time": 212.961,                                                                                                                           +
                               "Actual Total Time": 222.017,                                                                                                                             +
                               "Actual Rows": 71404,                                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                                        +
                               "Sort Key": ["cn2.id"],                                                                                                                                   +
                               "Sort Method": "quicksort",                                                                                                                               +
                               "Sort Space Used": 23201,                                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                              +
                               "Shared Hit Blocks": 2,                                                                                                                                   +
                               "Shared Read Blocks": 2992,                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                                    +
                               "Temp Written Blocks": 0,                                                                                                                                 +
                               "Plans": [                                                                                                                                                +
                                 {                                                                                                                                                       +
                                   "Node Type": "Seq Scan",                                                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                                                       +
                                   "Parallel Aware": false,                                                                                                                              +
                                   "Relation Name": "company_name",                                                                                                                      +
                                   "Alias": "cn2",                                                                                                                                       +
                                   "Startup Cost": 0.00,                                                                                                                                 +
                                   "Total Cost": 110.16,                                                                                                                                 +
                                   "Plan Rows": 234997,                                                                                                                                  +
                                   "Plan Width": 23,                                                                                                                                     +
                                   "Actual Startup Time": 28.898,                                                                                                                        +
                                   "Actual Total Time": 99.312,                                                                                                                          +
                                   "Actual Rows": 234997,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                    +
                                   "Shared Hit Blocks": 2,                                                                                                                               +
                                   "Shared Read Blocks": 2992,                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                                +
                                   "Temp Written Blocks": 0                                                                                                                              +
                                 }                                                                                                                                                       +
                               ]                                                                                                                                                         +
                             },                                                                                                                                                          +
                             {                                                                                                                                                           +
                               "Node Type": "Sort",                                                                                                                                      +
                               "Parent Relationship": "Inner",                                                                                                                           +
                               "Parallel Aware": false,                                                                                                                                  +
                               "Startup Cost": 20789.88,                                                                                                                                 +
                               "Total Cost": 20789.88,                                                                                                                                   +
                               "Plan Rows": 8,                                                                                                                                           +
                               "Plan Width": 77,                                                                                                                                         +
                               "Actual Startup Time": 4988.834,                                                                                                                          +
                               "Actual Total Time": 4988.836,                                                                                                                            +
                               "Actual Rows": 24,                                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                                        +
                               "Sort Key": ["mc2.company_id"],                                                                                                                           +
                               "Sort Method": "quicksort",                                                                                                                               +
                               "Sort Space Used": 28,                                                                                                                                    +
                               "Sort Space Type": "Memory",                                                                                                                              +
                               "Shared Hit Blocks": 206113,                                                                                                                              +
                               "Shared Read Blocks": 64231,                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                                    +
                               "Temp Written Blocks": 0,                                                                                                                                 +
                               "Plans": [                                                                                                                                                +
                                 {                                                                                                                                                       +
                                   "Node Type": "Merge Join",                                                                                                                            +
                                   "Parent Relationship": "Outer",                                                                                                                       +
                                   "Parallel Aware": false,                                                                                                                              +
                                   "Join Type": "Inner",                                                                                                                                 +
                                   "Startup Cost": 20384.73,                                                                                                                             +
                                   "Total Cost": 20789.87,                                                                                                                               +
                                   "Plan Rows": 8,                                                                                                                                       +
                                   "Plan Width": 77,                                                                                                                                     +
                                   "Actual Startup Time": 4988.806,                                                                                                                      +
                                   "Actual Total Time": 4988.815,                                                                                                                        +
                                   "Actual Rows": 24,                                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                                    +
                                   "Inner Unique": false,                                                                                                                                +
                                   "Merge Cond": "(t2.id = mc2.movie_id)",                                                                                                               +
                                   "Shared Hit Blocks": 206113,                                                                                                                          +
                                   "Shared Read Blocks": 64231,                                                                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                                +
                                   "Temp Written Blocks": 0,                                                                                                                             +
                                   "Plans": [                                                                                                                                            +
                                     {                                                                                                                                                   +
                                       "Node Type": "Sort",                                                                                                                              +
                                       "Parent Relationship": "Outer",                                                                                                                   +
                                       "Parallel Aware": false,                                                                                                                          +
                                       "Startup Cost": 10979.27,                                                                                                                         +
                                       "Total Cost": 10979.27,                                                                                                                           +
                                       "Plan Rows": 8,                                                                                                                                   +
                                       "Plan Width": 85,                                                                                                                                 +
                                       "Actual Startup Time": 3519.120,                                                                                                                  +
                                       "Actual Total Time": 3519.121,                                                                                                                    +
                                       "Actual Rows": 6,                                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                                +
                                       "Sort Key": ["ml.linked_movie_id"],                                                                                                               +
                                       "Sort Method": "quicksort",                                                                                                                       +
                                       "Sort Space Used": 25,                                                                                                                            +
                                       "Sort Space Type": "Memory",                                                                                                                      +
                                       "Shared Hit Blocks": 205399,                                                                                                                      +
                                       "Shared Read Blocks": 46156,                                                                                                                      +
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
                                           "Node Type": "Merge Join",                                                                                                                    +
                                           "Parent Relationship": "Outer",                                                                                                               +
                                           "Parallel Aware": false,                                                                                                                      +
                                           "Join Type": "Inner",                                                                                                                         +
                                           "Startup Cost": 10979.13,                                                                                                                     +
                                           "Total Cost": 10979.27,                                                                                                                       +
                                           "Plan Rows": 8,                                                                                                                               +
                                           "Plan Width": 85,                                                                                                                             +
                                           "Actual Startup Time": 3519.113,                                                                                                              +
                                           "Actual Total Time": 3519.115,                                                                                                                +
                                           "Actual Rows": 6,                                                                                                                             +
                                           "Actual Loops": 1,                                                                                                                            +
                                           "Inner Unique": true,                                                                                                                         +
                                           "Merge Cond": "(mi_idx2.info_type_id = it2.id)",                                                                                              +
                                           "Shared Hit Blocks": 205399,                                                                                                                  +
                                           "Shared Read Blocks": 46156,                                                                                                                  +
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
                                               "Node Type": "Sort",                                                                                                                      +
                                               "Parent Relationship": "Outer",                                                                                                           +
                                               "Parallel Aware": false,                                                                                                                  +
                                               "Startup Cost": 10979.08,                                                                                                                 +
                                               "Total Cost": 10979.15,                                                                                                                   +
                                               "Plan Rows": 899,                                                                                                                         +
                                               "Plan Width": 89,                                                                                                                         +
                                               "Actual Startup Time": 3518.960,                                                                                                          +
                                               "Actual Total Time": 3518.992,                                                                                                            +
                                               "Actual Rows": 633,                                                                                                                       +
                                               "Actual Loops": 1,                                                                                                                        +
                                               "Sort Key": ["mi_idx2.info_type_id"],                                                                                                     +
                                               "Sort Method": "quicksort",                                                                                                               +
                                               "Sort Space Used": 134,                                                                                                                   +
                                               "Sort Space Type": "Memory",                                                                                                              +
                                               "Shared Hit Blocks": 205398,                                                                                                              +
                                               "Shared Read Blocks": 46156,                                                                                                              +
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
                                                   "Node Type": "Merge Join",                                                                                                            +
                                                   "Parent Relationship": "Outer",                                                                                                       +
                                                   "Parallel Aware": false,                                                                                                              +
                                                   "Join Type": "Inner",                                                                                                                 +
                                                   "Startup Cost": 10976.67,                                                                                                             +
                                                   "Total Cost": 10977.71,                                                                                                               +
                                                   "Plan Rows": 899,                                                                                                                     +
                                                   "Plan Width": 89,                                                                                                                     +
                                                   "Actual Startup Time": 3518.458,                                                                                                      +
                                                   "Actual Total Time": 3518.692,                                                                                                        +
                                                   "Actual Rows": 633,                                                                                                                   +
                                                   "Actual Loops": 1,                                                                                                                    +
                                                   "Inner Unique": false,                                                                                                                +
                                                   "Merge Cond": "(kt1.id = t1.kind_id)",                                                                                                +
                                                   "Shared Hit Blocks": 205398,                                                                                                          +
                                                   "Shared Read Blocks": 46156,                                                                                                          +
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
                                                       "Node Type": "Sort",                                                                                                              +
                                                       "Parent Relationship": "Outer",                                                                                                   +
                                                       "Parallel Aware": false,                                                                                                          +
                                                       "Startup Cost": 0.03,                                                                                                             +
                                                       "Total Cost": 0.03,                                                                                                               +
                                                       "Plan Rows": 1,                                                                                                                   +
                                                       "Plan Width": 4,                                                                                                                  +
                                                       "Actual Startup Time": 0.015,                                                                                                     +
                                                       "Actual Total Time": 0.015,                                                                                                       +
                                                       "Actual Rows": 1,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                +
                                                       "Sort Key": ["kt1.id"],                                                                                                           +
                                                       "Sort Method": "quicksort",                                                                                                       +
                                                       "Sort Space Used": 25,                                                                                                            +
                                                       "Sort Space Type": "Memory",                                                                                                      +
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
                                                           "Relation Name": "kind_type",                                                                                                 +
                                                           "Alias": "kt1",                                                                                                               +
                                                           "Startup Cost": 0.00,                                                                                                         +
                                                           "Total Cost": 0.03,                                                                                                           +
                                                           "Plan Rows": 1,                                                                                                               +
                                                           "Plan Width": 4,                                                                                                              +
                                                           "Actual Startup Time": 0.010,                                                                                                 +
                                                           "Actual Total Time": 0.012,                                                                                                   +
                                                           "Actual Rows": 1,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                            +
                                                           "Filter": "((kind)::text = 'tv series'::text)",                                                                               +
                                                           "Rows Removed by Filter": 6,                                                                                                  +
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
                                                     },                                                                                                                                  +
                                                     {                                                                                                                                   +
                                                       "Node Type": "Sort",                                                                                                              +
                                                       "Parent Relationship": "Inner",                                                                                                   +
                                                       "Parallel Aware": false,                                                                                                          +
                                                       "Startup Cost": 10976.64,                                                                                                         +
                                                       "Total Cost": 10977.13,                                                                                                           +
                                                       "Plan Rows": 6291,                                                                                                                +
                                                       "Plan Width": 93,                                                                                                                 +
                                                       "Actual Startup Time": 3518.438,                                                                                                  +
                                                       "Actual Total Time": 3518.471,                                                                                                    +
                                                       "Actual Rows": 634,                                                                                                               +
                                                       "Actual Loops": 1,                                                                                                                +
                                                       "Sort Key": ["t1.kind_id"],                                                                                                       +
                                                       "Sort Method": "quicksort",                                                                                                       +
                                                       "Sort Space Used": 149,                                                                                                           +
                                                       "Sort Space Type": "Memory",                                                                                                      +
                                                       "Shared Hit Blocks": 205397,                                                                                                      +
                                                       "Shared Read Blocks": 46156,                                                                                                      +
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
                                                           "Node Type": "Merge Join",                                                                                                    +
                                                           "Parent Relationship": "Outer",                                                                                               +
                                                           "Parallel Aware": false,                                                                                                      +
                                                           "Join Type": "Inner",                                                                                                         +
                                                           "Startup Cost": 8688.83,                                                                                                      +
                                                           "Total Cost": 10964.31,                                                                                                       +
                                                           "Plan Rows": 6291,                                                                                                            +
                                                           "Plan Width": 93,                                                                                                             +
                                                           "Actual Startup Time": 3248.636,                                                                                              +
                                                           "Actual Total Time": 3517.948,                                                                                                +
                                                           "Actual Rows": 693,                                                                                                           +
                                                           "Actual Loops": 1,                                                                                                            +
                                                           "Inner Unique": true,                                                                                                         +
                                                           "Merge Cond": "(ml.movie_id = t1.id)",                                                                                        +
                                                           "Shared Hit Blocks": 205397,                                                                                                  +
                                                           "Shared Read Blocks": 46156,                                                                                                  +
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
                                                               "Node Type": "Merge Join",                                                                                                +
                                                               "Parent Relationship": "Outer",                                                                                           +
                                                               "Parallel Aware": false,                                                                                                  +
                                                               "Join Type": "Inner",                                                                                                     +
                                                               "Startup Cost": 8688.81,                                                                                                  +
                                                               "Total Cost": 9252.19,                                                                                                    +
                                                               "Plan Rows": 6291,                                                                                                        +
                                                               "Plan Width": 84,                                                                                                         +
                                                               "Actual Startup Time": 3248.081,                                                                                          +
                                                               "Actual Total Time": 3281.911,                                                                                            +
                                                               "Actual Rows": 693,                                                                                                       +
                                                               "Actual Loops": 1,                                                                                                        +
                                                               "Inner Unique": false,                                                                                                    +
                                                               "Merge Cond": "(mi_idx1.movie_id = ml.movie_id)",                                                                         +
                                                               "Shared Hit Blocks": 49391,                                                                                               +
                                                               "Shared Read Blocks": 45730,                                                                                              +
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
                                                                   "Node Type": "Index Scan",                                                                                            +
                                                                   "Parent Relationship": "Outer",                                                                                       +
                                                                   "Parallel Aware": false,                                                                                              +
                                                                   "Scan Direction": "Forward",                                                                                          +
                                                                   "Index Name": "movie_id_movie_info_idx",                                                                              +
                                                                   "Relation Name": "movie_info_idx",                                                                                    +
                                                                   "Alias": "mi_idx1",                                                                                                   +
                                                                   "Startup Cost": 0.01,                                                                                                 +
                                                                   "Total Cost": 12031.00,                                                                                               +
                                                                   "Plan Rows": 1380035,                                                                                                 +
                                                                   "Plan Width": 14,                                                                                                     +
                                                                   "Actual Startup Time": 0.014,                                                                                         +
                                                                   "Actual Total Time": 25.729,                                                                                          +
                                                                   "Actual Rows": 51553,                                                                                                 +
                                                                   "Actual Loops": 1,                                                                                                    +
                                                                   "Shared Hit Blocks": 552,                                                                                             +
                                                                   "Shared Read Blocks": 140,                                                                                            +
                                                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                                                   "Shared Written Blocks": 0,                                                                                           +
                                                                   "Local Hit Blocks": 0,                                                                                                +
                                                                   "Local Read Blocks": 0,                                                                                               +
                                                                   "Local Dirtied Blocks": 0,                                                                                            +
                                                                   "Local Written Blocks": 0,                                                                                            +
                                                                   "Temp Read Blocks": 0,                                                                                                +
                                                                   "Temp Written Blocks": 0                                                                                              +
                                                                 },                                                                                                                      +
                                                                 {                                                                                                                       +
                                                                   "Node Type": "Sort",                                                                                                  +
                                                                   "Parent Relationship": "Inner",                                                                                       +
                                                                   "Parallel Aware": false,                                                                                              +
                                                                   "Startup Cost": 8688.80,                                                                                              +
                                                                   "Total Cost": 8688.96,                                                                                                +
                                                                   "Plan Rows": 2097,                                                                                                    +
                                                                   "Plan Width": 70,                                                                                                     +
                                                                   "Actual Startup Time": 3248.012,                                                                                      +
                                                                   "Actual Total Time": 3248.089,                                                                                        +
                                                                   "Actual Rows": 698,                                                                                                   +
                                                                   "Actual Loops": 1,                                                                                                    +
                                                                   "Sort Key": ["ml.movie_id"],                                                                                          +
                                                                   "Sort Method": "quicksort",                                                                                           +
                                                                   "Sort Space Used": 59,                                                                                                +
                                                                   "Sort Space Type": "Memory",                                                                                          +
                                                                   "Shared Hit Blocks": 48839,                                                                                           +
                                                                   "Shared Read Blocks": 45590,                                                                                          +
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
                                                                       "Node Type": "Merge Join",                                                                                        +
                                                                       "Parent Relationship": "Outer",                                                                                   +
                                                                       "Parallel Aware": false,                                                                                          +
                                                                       "Join Type": "Inner",                                                                                             +
                                                                       "Startup Cost": 8670.98,                                                                                          +
                                                                       "Total Cost": 8685.20,                                                                                            +
                                                                       "Plan Rows": 2097,                                                                                                +
                                                                       "Plan Width": 70,                                                                                                 +
                                                                       "Actual Startup Time": 3231.316,                                                                                  +
                                                                       "Actual Total Time": 3247.717,                                                                                    +
                                                                       "Actual Rows": 238,                                                                                               +
                                                                       "Actual Loops": 1,                                                                                                +
                                                                       "Inner Unique": false,                                                                                            +
                                                                       "Merge Cond": "(cn1.id = mc1.company_id)",                                                                        +
                                                                       "Shared Hit Blocks": 48839,                                                                                       +
                                                                       "Shared Read Blocks": 45590,                                                                                      +
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
                                                                           "Node Type": "Sort",                                                                                          +
                                                                           "Parent Relationship": "Outer",                                                                               +
                                                                           "Parallel Aware": false,                                                                                      +
                                                                           "Startup Cost": 344.10,                                                                                       +
                                                                           "Total Cost": 350.69,                                                                                         +
                                                                           "Plan Rows": 84843,                                                                                           +
                                                                           "Plan Width": 23,                                                                                             +
                                                                           "Actual Startup Time": 71.427,                                                                                +
                                                                           "Actual Total Time": 77.776,                                                                                  +
                                                                           "Actual Rows": 27029,                                                                                         +
                                                                           "Actual Loops": 1,                                                                                            +
                                                                           "Sort Key": ["cn1.id"],                                                                                       +
                                                                           "Sort Method": "quicksort",                                                                                   +
                                                                           "Sort Space Used": 9413,                                                                                      +
                                                                           "Sort Space Type": "Memory",                                                                                  +
                                                                           "Shared Hit Blocks": 2994,                                                                                    +
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
                                                                               "Relation Name": "company_name",                                                                          +
                                                                               "Alias": "cn1",                                                                                           +
                                                                               "Startup Cost": 0.00,                                                                                     +
                                                                               "Total Cost": 128.41,                                                                                     +
                                                                               "Plan Rows": 84843,                                                                                       +
                                                                               "Plan Width": 23,                                                                                         +
                                                                               "Actual Startup Time": 0.005,                                                                             +
                                                                               "Actual Total Time": 37.529,                                                                              +
                                                                               "Actual Rows": 84843,                                                                                     +
                                                                               "Actual Loops": 1,                                                                                        +
                                                                               "Filter": "((country_code)::text = '[us]'::text)",                                                        +
                                                                               "Rows Removed by Filter": 150154,                                                                         +
                                                                               "Shared Hit Blocks": 2994,                                                                                +
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
                                                                         },                                                                                                              +
                                                                         {                                                                                                               +
                                                                           "Node Type": "Sort",                                                                                          +
                                                                           "Parent Relationship": "Inner",                                                                               +
                                                                           "Parallel Aware": false,                                                                                      +
                                                                           "Startup Cost": 8326.88,                                                                                      +
                                                                           "Total Cost": 8327.33,                                                                                        +
                                                                           "Plan Rows": 5809,                                                                                            +
                                                                           "Plan Width": 55,                                                                                             +
                                                                           "Actual Startup Time": 3159.869,                                                                              +
                                                                           "Actual Total Time": 3160.194,                                                                                +
                                                                           "Actual Rows": 1610,                                                                                          +
                                                                           "Actual Loops": 1,                                                                                            +
                                                                           "Sort Key": ["mc1.company_id"],                                                                               +
                                                                           "Sort Method": "quicksort",                                                                                   +
                                                                           "Sort Space Used": 265,                                                                                       +
                                                                           "Sort Space Type": "Memory",                                                                                  +
                                                                           "Shared Hit Blocks": 45845,                                                                                   +
                                                                           "Shared Read Blocks": 45590,                                                                                  +
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
                                                                               "Node Type": "Merge Join",                                                                                +
                                                                               "Parent Relationship": "Outer",                                                                           +
                                                                               "Parallel Aware": false,                                                                                  +
                                                                               "Join Type": "Inner",                                                                                     +
                                                                               "Startup Cost": 5705.67,                                                                                  +
                                                                               "Total Cost": 8315.60,                                                                                    +
                                                                               "Plan Rows": 5809,                                                                                        +
                                                                               "Plan Width": 55,                                                                                         +
                                                                               "Actual Startup Time": 2822.295,                                                                          +
                                                                               "Actual Total Time": 3157.888,                                                                            +
                                                                               "Actual Rows": 1610,                                                                                      +
                                                                               "Actual Loops": 1,                                                                                        +
                                                                               "Inner Unique": false,                                                                                    +
                                                                               "Merge Cond": "(mc1.movie_id = ml.movie_id)",                                                             +
                                                                               "Shared Hit Blocks": 45845,                                                                               +
                                                                               "Shared Read Blocks": 45590,                                                                              +
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
                                                                                   "Index Name": "movie_id_movie_companies",                                                             +
                                                                                   "Relation Name": "movie_companies",                                                                   +
                                                                                   "Alias": "mc1",                                                                                       +
                                                                                   "Startup Cost": 0.01,                                                                                 +
                                                                                   "Total Cost": 67925.24,                                                                               +
                                                                                   "Plan Rows": 2609129,                                                                                 +
                                                                                   "Plan Width": 8,                                                                                      +
                                                                                   "Actual Startup Time": 0.014,                                                                         +
                                                                                   "Actual Total Time": 303.873,                                                                         +
                                                                                   "Actual Rows": 99877,                                                                                 +
                                                                                   "Actual Loops": 1,                                                                                    +
                                                                                   "Shared Hit Blocks": 45837,                                                                           +
                                                                                   "Shared Read Blocks": 983,                                                                            +
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
                                                                                   "Node Type": "Sort",                                                                                  +
                                                                                   "Parent Relationship": "Inner",                                                                       +
                                                                                   "Parallel Aware": false,                                                                              +
                                                                                   "Startup Cost": 5705.66,                                                                              +
                                                                                   "Total Cost": 5705.76,                                                                                +
                                                                                   "Plan Rows": 1286,                                                                                    +
                                                                                   "Plan Width": 47,                                                                                     +
                                                                                   "Actual Startup Time": 2816.573,                                                                      +
                                                                                   "Actual Total Time": 2816.806,                                                                        +
                                                                                   "Actual Rows": 1615,                                                                                  +
                                                                                   "Actual Loops": 1,                                                                                    +
                                                                                   "Sort Key": ["ml.movie_id"],                                                                          +
                                                                                   "Sort Method": "quicksort",                                                                           +
                                                                                   "Sort Space Used": 63,                                                                                +
                                                                                   "Sort Space Type": "Memory",                                                                          +
                                                                                   "Shared Hit Blocks": 8,                                                                               +
                                                                                   "Shared Read Blocks": 44607,                                                                          +
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
                                                                                       "Node Type": "Merge Join",                                                                        +
                                                                                       "Parent Relationship": "Outer",                                                                   +
                                                                                       "Parallel Aware": false,                                                                          +
                                                                                       "Join Type": "Inner",                                                                             +
                                                                                       "Startup Cost": 5530.36,                                                                          +
                                                                                       "Total Cost": 5703.59,                                                                            +
                                                                                       "Plan Rows": 1286,                                                                                +
                                                                                       "Plan Width": 47,                                                                                 +
                                                                                       "Actual Startup Time": 2595.185,                                                                  +
                                                                                       "Actual Total Time": 2816.440,                                                                    +
                                                                                       "Actual Rows": 308,                                                                               +
                                                                                       "Actual Loops": 1,                                                                                +
                                                                                       "Inner Unique": true,                                                                             +
                                                                                       "Merge Cond": "(ml.linked_movie_id = t2.id)",                                                     +
                                                                                       "Shared Hit Blocks": 8,                                                                           +
                                                                                       "Shared Read Blocks": 44607,                                                                      +
                                                                                       "Shared Dirtied Blocks": 0,                                                                       +
                                                                                       "Shared Written Blocks": 0,                                                                       +
                                                                                       "Local Hit Blocks": 0,                                                                            +
                                                                                       "Local Read Blocks": 0,                                                                           +
                                                                                       "Local Dirtied Blocks": 0,                                                                        +
                                                                                       "Local Written Blocks": 0,                                                                        +
                                                                                       "Temp Read Blocks": 0,                                                                            +
                                                                                       "Temp Written Blocks": 0,                                                                         +
                                                                                       "Plans": [                                                                                        +
                                                                                         {                                                                                               +
                                                                                           "Node Type": "Merge Join",                                                                    +
                                                                                           "Parent Relationship": "Outer",                                                               +
                                                                                           "Parallel Aware": false,                                                                      +
                                                                                           "Join Type": "Inner",                                                                         +
                                                                                           "Startup Cost": 2534.56,                                                                      +
                                                                                           "Total Cost": 2638.00,                                                                        +
                                                                                           "Plan Rows": 7293,                                                                            +
                                                                                           "Plan Width": 22,                                                                             +
                                                                                           "Actual Startup Time": 772.999,                                                               +
                                                                                           "Actual Total Time": 879.373,                                                                 +
                                                                                           "Actual Rows": 2944,                                                                          +
                                                                                           "Actual Loops": 1,                                                                            +
                                                                                           "Inner Unique": false,                                                                        +
                                                                                           "Merge Cond": "(ml.linked_movie_id = mi_idx2.movie_id)",                                      +
                                                                                           "Shared Hit Blocks": 7,                                                                       +
                                                                                           "Shared Read Blocks": 8610,                                                                   +
                                                                                           "Shared Dirtied Blocks": 0,                                                                   +
                                                                                           "Shared Written Blocks": 0,                                                                   +
                                                                                           "Local Hit Blocks": 0,                                                                        +
                                                                                           "Local Read Blocks": 0,                                                                       +
                                                                                           "Local Dirtied Blocks": 0,                                                                    +
                                                                                           "Local Written Blocks": 0,                                                                    +
                                                                                           "Temp Read Blocks": 0,                                                                        +
                                                                                           "Temp Written Blocks": 0,                                                                     +
                                                                                           "Plans": [                                                                                    +
                                                                                             {                                                                                           +
                                                                                               "Node Type": "Sort",                                                                      +
                                                                                               "Parent Relationship": "Outer",                                                           +
                                                                                               "Parallel Aware": false,                                                                  +
                                                                                               "Startup Cost": 91.04,                                                                    +
                                                                                               "Total Cost": 91.43,                                                                      +
                                                                                               "Plan Rows": 5000,                                                                        +
                                                                                               "Plan Width": 8,                                                                          +
                                                                                               "Actual Startup Time": 54.952,                                                            +
                                                                                               "Actual Total Time": 55.248,                                                              +
                                                                                               "Actual Rows": 2315,                                                                      +
                                                                                               "Actual Loops": 1,                                                                        +
                                                                                               "Sort Key": ["ml.linked_movie_id"],                                                       +
                                                                                               "Sort Method": "quicksort",                                                               +
                                                                                               "Sort Space Used": 205,                                                                   +
                                                                                               "Sort Space Type": "Memory",                                                              +
                                                                                               "Shared Hit Blocks": 5,                                                                   +
                                                                                               "Shared Read Blocks": 159,                                                                +
                                                                                               "Shared Dirtied Blocks": 0,                                                               +
                                                                                               "Shared Written Blocks": 0,                                                               +
                                                                                               "Local Hit Blocks": 0,                                                                    +
                                                                                               "Local Read Blocks": 0,                                                                   +
                                                                                               "Local Dirtied Blocks": 0,                                                                +
                                                                                               "Local Written Blocks": 0,                                                                +
                                                                                               "Temp Read Blocks": 0,                                                                    +
                                                                                               "Temp Written Blocks": 0,                                                                 +
                                                                                               "Plans": [                                                                                +
                                                                                                 {                                                                                       +
                                                                                                   "Node Type": "Merge Join",                                                            +
                                                                                                   "Parent Relationship": "Outer",                                                       +
                                                                                                   "Parallel Aware": false,                                                              +
                                                                                                   "Join Type": "Inner",                                                                 +
                                                                                                   "Startup Cost": 76.50,                                                                +
                                                                                                   "Total Cost": 81.50,                                                                  +
                                                                                                   "Plan Rows": 5000,                                                                    +
                                                                                                   "Plan Width": 8,                                                                      +
                                                                                                   "Actual Startup Time": 52.997,                                                        +
                                                                                                   "Actual Total Time": 53.982,                                                          +
                                                                                                   "Actual Rows": 2315,                                                                  +
                                                                                                   "Actual Loops": 1,                                                                    +
                                                                                                   "Inner Unique": true,                                                                 +
                                                                                                   "Merge Cond": "(ml.link_type_id = lt.id)",                                            +
                                                                                                   "Shared Hit Blocks": 5,                                                               +
                                                                                                   "Shared Read Blocks": 159,                                                            +
                                                                                                   "Shared Dirtied Blocks": 0,                                                           +
                                                                                                   "Shared Written Blocks": 0,                                                           +
                                                                                                   "Local Hit Blocks": 0,                                                                +
                                                                                                   "Local Read Blocks": 0,                                                               +
                                                                                                   "Local Dirtied Blocks": 0,                                                            +
                                                                                                   "Local Written Blocks": 0,                                                            +
                                                                                                   "Temp Read Blocks": 0,                                                                +
                                                                                                   "Temp Written Blocks": 0,                                                             +
                                                                                                   "Plans": [                                                                            +
                                                                                                     {                                                                                   +
                                                                                                       "Node Type": "Sort",                                                              +
                                                                                                       "Parent Relationship": "Outer",                                                   +
                                                                                                       "Parallel Aware": false,                                                          +
                                                                                                       "Startup Cost": 76.46,                                                            +
                                                                                                       "Total Cost": 78.79,                                                              +
                                                                                                       "Plan Rows": 29997,                                                               +
                                                                                                       "Plan Width": 12,                                                                 +
                                                                                                       "Actual Startup Time": 52.965,                                                    +
                                                                                                       "Actual Total Time": 53.168,                                                      +
                                                                                                       "Actual Rows": 2316,                                                              +
                                                                                                       "Actual Loops": 1,                                                                +
                                                                                                       "Sort Key": ["ml.link_type_id"],                                                  +
                                                                                                       "Sort Method": "quicksort",                                                       +
                                                                                                       "Sort Space Used": 2175,                                                          +
                                                                                                       "Sort Space Type": "Memory",                                                      +
                                                                                                       "Shared Hit Blocks": 4,                                                           +
                                                                                                       "Shared Read Blocks": 159,                                                        +
                                                                                                       "Shared Dirtied Blocks": 0,                                                       +
                                                                                                       "Shared Written Blocks": 0,                                                       +
                                                                                                       "Local Hit Blocks": 0,                                                            +
                                                                                                       "Local Read Blocks": 0,                                                           +
                                                                                                       "Local Dirtied Blocks": 0,                                                        +
                                                                                                       "Local Written Blocks": 0,                                                        +
                                                                                                       "Temp Read Blocks": 0,                                                            +
                                                                                                       "Temp Written Blocks": 0,                                                         +
                                                                                                       "Plans": [                                                                        +
                                                                                                         {                                                                               +
                                                                                                           "Node Type": "Seq Scan",                                                      +
                                                                                                           "Parent Relationship": "Outer",                                               +
                                                                                                           "Parallel Aware": false,                                                      +
                                                                                                           "Relation Name": "movie_link",                                                +
                                                                                                           "Alias": "ml",                                                                +
                                                                                                           "Startup Cost": 0.00,                                                         +
                                                                                                           "Total Cost": 7.19,                                                           +
                                                                                                           "Plan Rows": 29997,                                                           +
                                                                                                           "Plan Width": 12,                                                             +
                                                                                                           "Actual Startup Time": 0.007,                                                 +
                                                                                                           "Actual Total Time": 37.714,                                                  +
                                                                                                           "Actual Rows": 29997,                                                         +
                                                                                                           "Actual Loops": 1,                                                            +
                                                                                                           "Shared Hit Blocks": 4,                                                       +
                                                                                                           "Shared Read Blocks": 159,                                                    +
                                                                                                           "Shared Dirtied Blocks": 0,                                                   +
                                                                                                           "Shared Written Blocks": 0,                                                   +
                                                                                                           "Local Hit Blocks": 0,                                                        +
                                                                                                           "Local Read Blocks": 0,                                                       +
                                                                                                           "Local Dirtied Blocks": 0,                                                    +
                                                                                                           "Local Written Blocks": 0,                                                    +
                                                                                                           "Temp Read Blocks": 0,                                                        +
                                                                                                           "Temp Written Blocks": 0                                                      +
                                                                                                         }                                                                               +
                                                                                                       ]                                                                                 +
                                                                                                     },                                                                                  +
                                                                                                     {                                                                                   +
                                                                                                       "Node Type": "Sort",                                                              +
                                                                                                       "Parent Relationship": "Inner",                                                   +
                                                                                                       "Parallel Aware": false,                                                          +
                                                                                                       "Startup Cost": 0.04,                                                             +
                                                                                                       "Total Cost": 0.04,                                                               +
                                                                                                       "Plan Rows": 3,                                                                   +
                                                                                                       "Plan Width": 4,                                                                  +
                                                                                                       "Actual Startup Time": 0.024,                                                     +
                                                                                                       "Actual Total Time": 0.024,                                                       +
                                                                                                       "Actual Rows": 2,                                                                 +
                                                                                                       "Actual Loops": 1,                                                                +
                                                                                                       "Sort Key": ["lt.id"],                                                            +
                                                                                                       "Sort Method": "quicksort",                                                       +
                                                                                                       "Sort Space Used": 25,                                                            +
                                                                                                       "Sort Space Type": "Memory",                                                      +
                                                                                                       "Shared Hit Blocks": 1,                                                           +
                                                                                                       "Shared Read Blocks": 0,                                                          +
                                                                                                       "Shared Dirtied Blocks": 0,                                                       +
                                                                                                       "Shared Written Blocks": 0,                                                       +
                                                                                                       "Local Hit Blocks": 0,                                                            +
                                                                                                       "Local Read Blocks": 0,                                                           +
                                                                                                       "Local Dirtied Blocks": 0,                                                        +
                                                                                                       "Local Written Blocks": 0,                                                        +
                                                                                                       "Temp Read Blocks": 0,                                                            +
                                                                                                       "Temp Written Blocks": 0,                                                         +
                                                                                                       "Plans": [                                                                        +
                                                                                                         {                                                                               +
                                                                                                           "Node Type": "Seq Scan",                                                      +
                                                                                                           "Parent Relationship": "Outer",                                               +
                                                                                                           "Parallel Aware": false,                                                      +
                                                                                                           "Relation Name": "link_type",                                                 +
                                                                                                           "Alias": "lt",                                                                +
                                                                                                           "Startup Cost": 0.00,                                                         +
                                                                                                           "Total Cost": 0.03,                                                           +
                                                                                                           "Plan Rows": 3,                                                               +
                                                                                                           "Plan Width": 4,                                                              +
                                                                                                           "Actual Startup Time": 0.011,                                                 +
                                                                                                           "Actual Total Time": 0.017,                                                   +
                                                                                                           "Actual Rows": 2,                                                             +
                                                                                                           "Actual Loops": 1,                                                            +
                                                                                                           "Filter": "((link)::text = ANY ('{sequel,follows,\"followed by\"}'::text[]))",+
                                                                                                           "Rows Removed by Filter": 16,                                                 +
                                                                                                           "Shared Hit Blocks": 1,                                                       +
                                                                                                           "Shared Read Blocks": 0,                                                      +
                                                                                                           "Shared Dirtied Blocks": 0,                                                   +
                                                                                                           "Shared Written Blocks": 0,                                                   +
                                                                                                           "Local Hit Blocks": 0,                                                        +
                                                                                                           "Local Read Blocks": 0,                                                       +
                                                                                                           "Local Dirtied Blocks": 0,                                                    +
                                                                                                           "Local Written Blocks": 0,                                                    +
                                                                                                           "Temp Read Blocks": 0,                                                        +
                                                                                                           "Temp Written Blocks": 0                                                      +
                                                                                                         }                                                                               +
                                                                                                       ]                                                                                 +
                                                                                                     }                                                                                   +
                                                                                                   ]                                                                                     +
                                                                                                 }                                                                                       +
                                                                                               ]                                                                                         +
                                                                                             },                                                                                          +
                                                                                             {                                                                                           +
                                                                                               "Node Type": "Sort",                                                                      +
                                                                                               "Parent Relationship": "Inner",                                                           +
                                                                                               "Parallel Aware": false,                                                                  +
                                                                                               "Startup Cost": 2443.51,                                                                  +
                                                                                               "Total Cost": 2494.62,                                                                    +
                                                                                               "Plan Rows": 658313,                                                                      +
                                                                                               "Plan Width": 14,                                                                         +
                                                                                               "Actual Startup Time": 717.982,                                                           +
                                                                                               "Actual Total Time": 750.484,                                                             +
                                                                                               "Actual Rows": 650201,                                                                    +
                                                                                               "Actual Loops": 1,                                                                        +
                                                                                               "Sort Key": ["mi_idx2.movie_id"],                                                         +
                                                                                               "Sort Method": "quicksort",                                                               +
                                                                                               "Sort Space Used": 68481,                                                                 +
                                                                                               "Sort Space Type": "Memory",                                                              +
                                                                                               "Shared Hit Blocks": 2,                                                                   +
                                                                                               "Shared Read Blocks": 8451,                                                               +
                                                                                               "Shared Dirtied Blocks": 0,                                                               +
                                                                                               "Shared Written Blocks": 0,                                                               +
                                                                                               "Local Hit Blocks": 0,                                                                    +
                                                                                               "Local Read Blocks": 0,                                                                   +
                                                                                               "Local Dirtied Blocks": 0,                                                                +
                                                                                               "Local Written Blocks": 0,                                                                +
                                                                                               "Temp Read Blocks": 0,                                                                    +
                                                                                               "Temp Written Blocks": 0,                                                                 +
                                                                                               "Plans": [                                                                                +
                                                                                                 {                                                                                       +
                                                                                                   "Node Type": "Seq Scan",                                                              +
                                                                                                   "Parent Relationship": "Outer",                                                       +
                                                                                                   "Parallel Aware": false,                                                              +
                                                                                                   "Relation Name": "movie_info_idx",                                                    +
                                                                                                   "Alias": "mi_idx2",                                                                   +
                                                                                                   "Startup Cost": 0.00,                                                                 +
                                                                                                   "Total Cost": 467.71,                                                                 +
                                                                                                   "Plan Rows": 658313,                                                                  +
                                                                                                   "Plan Width": 14,                                                                     +
                                                                                                   "Actual Startup Time": 0.010,                                                         +
                                                                                                   "Actual Total Time": 436.461,                                                         +
                                                                                                   "Actual Rows": 658295,                                                                +
                                                                                                   "Actual Loops": 1,                                                                    +
                                                                                                   "Filter": "(info < '3.0'::text)",                                                     +
                                                                                                   "Rows Removed by Filter": 721740,                                                     +
                                                                                                   "Shared Hit Blocks": 2,                                                               +
                                                                                                   "Shared Read Blocks": 8451,                                                           +
                                                                                                   "Shared Dirtied Blocks": 0,                                                           +
                                                                                                   "Shared Written Blocks": 0,                                                           +
                                                                                                   "Local Hit Blocks": 0,                                                                +
                                                                                                   "Local Read Blocks": 0,                                                               +
                                                                                                   "Local Dirtied Blocks": 0,                                                            +
                                                                                                   "Local Written Blocks": 0,                                                            +
                                                                                                   "Temp Read Blocks": 0,                                                                +
                                                                                                   "Temp Written Blocks": 0                                                              +
                                                                                                 }                                                                                       +
                                                                                               ]                                                                                         +
                                                                                             }                                                                                           +
                                                                                           ]                                                                                             +
                                                                                         },                                                                                              +
                                                                                         {                                                                                               +
                                                                                           "Node Type": "Sort",                                                                          +
                                                                                           "Parent Relationship": "Inner",                                                               +
                                                                                           "Parallel Aware": false,                                                                      +
                                                                                           "Startup Cost": 2995.80,                                                                      +
                                                                                           "Total Cost": 3030.41,                                                                        +
                                                                                           "Plan Rows": 445860,                                                                          +
                                                                                           "Plan Width": 25,                                                                             +
                                                                                           "Actual Startup Time": 1822.107,                                                              +
                                                                                           "Actual Total Time": 1875.569,                                                                +
                                                                                           "Actual Rows": 443399,                                                                        +
                                                                                           "Actual Loops": 1,                                                                            +
                                                                                           "Sort Key": ["t2.id"],                                                                        +
                                                                                           "Sort Method": "quicksort",                                                                   +
                                                                                           "Sort Space Used": 45708,                                                                     +
                                                                                           "Sort Space Type": "Memory",                                                                  +
                                                                                           "Shared Hit Blocks": 1,                                                                       +
                                                                                           "Shared Read Blocks": 35997,                                                                  +
                                                                                           "Shared Dirtied Blocks": 0,                                                                   +
                                                                                           "Shared Written Blocks": 0,                                                                   +
                                                                                           "Local Hit Blocks": 0,                                                                        +
                                                                                           "Local Read Blocks": 0,                                                                       +
                                                                                           "Local Dirtied Blocks": 0,                                                                    +
                                                                                           "Local Written Blocks": 0,                                                                    +
                                                                                           "Temp Read Blocks": 0,                                                                        +
                                                                                           "Temp Written Blocks": 0,                                                                     +
                                                                                           "Plans": [                                                                                    +
                                                                                             {                                                                                           +
                                                                                               "Node Type": "Seq Scan",                                                                  +
                                                                                               "Parent Relationship": "Outer",                                                           +
                                                                                               "Parallel Aware": false,                                                                  +
                                                                                               "Relation Name": "title",                                                                 +
                                                                                               "Alias": "t2",                                                                            +
                                                                                               "Startup Cost": 0.00,                                                                     +
                                                                                               "Total Cost": 1696.56,                                                                    +
                                                                                               "Plan Rows": 445860,                                                                      +
                                                                                               "Plan Width": 25,                                                                         +
                                                                                               "Actual Startup Time": 21.705,                                                            +
                                                                                               "Actual Total Time": 1519.243,                                                            +
                                                                                               "Actual Rows": 445860,                                                                    +
                                                                                               "Actual Loops": 1,                                                                        +
                                                                                               "Filter": "((production_year >= 2005) AND (production_year <= 2008))",                    +
                                                                                               "Rows Removed by Filter": 2082452,                                                        +
                                                                                               "Shared Hit Blocks": 1,                                                                   +
                                                                                               "Shared Read Blocks": 35997,                                                              +
                                                                                               "Shared Dirtied Blocks": 0,                                                               +
                                                                                               "Shared Written Blocks": 0,                                                               +
                                                                                               "Local Hit Blocks": 0,                                                                    +
                                                                                               "Local Read Blocks": 0,                                                                   +
                                                                                               "Local Dirtied Blocks": 0,                                                                +
                                                                                               "Local Written Blocks": 0,                                                                +
                                                                                               "Temp Read Blocks": 0,                                                                    +
                                                                                               "Temp Written Blocks": 0                                                                  +
                                                                                             }                                                                                           +
                                                                                           ]                                                                                             +
                                                                                         }                                                                                               +
                                                                                       ]                                                                                                 +
                                                                                     }                                                                                                   +
                                                                                   ]                                                                                                     +
                                                                                 }                                                                                                       +
                                                                               ]                                                                                                         +
                                                                             }                                                                                                           +
                                                                           ]                                                                                                             +
                                                                         }                                                                                                               +
                                                                       ]                                                                                                                 +
                                                                     }                                                                                                                   +
                                                                   ]                                                                                                                     +
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
                                                               "Alias": "t1",                                                                                                            +
                                                               "Startup Cost": 0.01,                                                                                                     +
                                                               "Total Cost": 23042.05,                                                                                                   +
                                                               "Plan Rows": 2528312,                                                                                                     +
                                                               "Plan Width": 25,                                                                                                         +
                                                               "Actual Startup Time": 0.020,                                                                                             +
                                                               "Actual Total Time": 210.537,                                                                                             +
                                                               "Actual Rows": 156058,                                                                                                    +
                                                               "Actual Loops": 1,                                                                                                        +
                                                               "Shared Hit Blocks": 156006,                                                                                              +
                                                               "Shared Read Blocks": 426,                                                                                                +
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
                                                 }                                                                                                                                       +
                                               ]                                                                                                                                         +
                                             },                                                                                                                                          +
                                             {                                                                                                                                           +
                                               "Node Type": "Sort",                                                                                                                      +
                                               "Parent Relationship": "Inner",                                                                                                           +
                                               "Parallel Aware": false,                                                                                                                  +
                                               "Startup Cost": 0.05,                                                                                                                     +
                                               "Total Cost": 0.05,                                                                                                                       +
                                               "Plan Rows": 1,                                                                                                                           +
                                               "Plan Width": 4,                                                                                                                          +
                                               "Actual Startup Time": 0.036,                                                                                                             +
                                               "Actual Total Time": 0.036,                                                                                                               +
                                               "Actual Rows": 1,                                                                                                                         +
                                               "Actual Loops": 1,                                                                                                                        +
                                               "Sort Key": ["it2.id"],                                                                                                                   +
                                               "Sort Method": "quicksort",                                                                                                               +
                                               "Sort Space Used": 25,                                                                                                                    +
                                               "Sort Space Type": "Memory",                                                                                                              +
                                               "Shared Hit Blocks": 1,                                                                                                                   +
                                               "Shared Read Blocks": 0,                                                                                                                  +
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
                                                   "Node Type": "Seq Scan",                                                                                                              +
                                                   "Parent Relationship": "Outer",                                                                                                       +
                                                   "Parallel Aware": false,                                                                                                              +
                                                   "Relation Name": "info_type",                                                                                                         +
                                                   "Alias": "it2",                                                                                                                       +
                                                   "Startup Cost": 0.00,                                                                                                                 +
                                                   "Total Cost": 0.05,                                                                                                                   +
                                                   "Plan Rows": 1,                                                                                                                       +
                                                   "Plan Width": 4,                                                                                                                      +
                                                   "Actual Startup Time": 0.021,                                                                                                         +
                                                   "Actual Total Time": 0.023,                                                                                                           +
                                                   "Actual Rows": 1,                                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                                    +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                                          +
                                                   "Rows Removed by Filter": 112,                                                                                                        +
                                                   "Shared Hit Blocks": 1,                                                                                                               +
                                                   "Shared Read Blocks": 0,                                                                                                              +
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
                                             }                                                                                                                                           +
                                           ]                                                                                                                                             +
                                         }                                                                                                                                               +
                                       ]                                                                                                                                                 +
                                     },                                                                                                                                                  +
                                     {                                                                                                                                                   +
                                       "Node Type": "Sort",                                                                                                                              +
                                       "Parent Relationship": "Inner",                                                                                                                   +
                                       "Parallel Aware": false,                                                                                                                          +
                                       "Startup Cost": 9405.45,                                                                                                                          +
                                       "Total Cost": 9608.03,                                                                                                                            +
                                       "Plan Rows": 2609129,                                                                                                                             +
                                       "Plan Width": 8,                                                                                                                                  +
                                       "Actual Startup Time": 1467.497,                                                                                                                  +
                                       "Actual Total Time": 1468.176,                                                                                                                    +
                                       "Actual Rows": 15083,                                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                                +
                                       "Sort Key": ["mc2.movie_id"],                                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                                       +
                                       "Sort Space Used": 220607,                                                                                                                        +
                                       "Sort Space Type": "Memory",                                                                                                                      +
                                       "Shared Hit Blocks": 714,                                                                                                                         +
                                       "Shared Read Blocks": 18075,                                                                                                                      +
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
                                           "Node Type": "Seq Scan",                                                                                                                      +
                                           "Parent Relationship": "Outer",                                                                                                               +
                                           "Parallel Aware": false,                                                                                                                      +
                                           "Relation Name": "movie_companies",                                                                                                           +
                                           "Alias": "mc2",                                                                                                                               +
                                           "Startup Cost": 0.00,                                                                                                                         +
                                           "Total Cost": 769.75,                                                                                                                         +
                                           "Plan Rows": 2609129,                                                                                                                         +
                                           "Plan Width": 8,                                                                                                                              +
                                           "Actual Startup Time": 0.005,                                                                                                                 +
                                           "Actual Total Time": 547.698,                                                                                                                 +
                                           "Actual Rows": 2609129,                                                                                                                       +
                                           "Actual Loops": 1,                                                                                                                            +
                                           "Shared Hit Blocks": 714,                                                                                                                     +
                                           "Shared Read Blocks": 18075,                                                                                                                  +
                                           "Shared Dirtied Blocks": 0,                                                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                                                        +
                                           "Local Read Blocks": 0,                                                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                                                    +
                                           "Local Written Blocks": 0,                                                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                                                        +
                                           "Temp Written Blocks": 0                                                                                                                      +
                                         }                                                                                                                                               +
                                       ]                                                                                                                                                 +
                                     }                                                                                                                                                   +
                                   ]                                                                                                                                                     +
                                 }                                                                                                                                                       +
                               ]                                                                                                                                                         +
                             }                                                                                                                                                           +
                           ]                                                                                                                                                             +
                         }                                                                                                                                                               +
                       ]                                                                                                                                                                 +
                     },                                                                                                                                                                  +
                     {                                                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                                          +
                       "Startup Cost": 0.03,                                                                                                                                             +
                       "Total Cost": 0.03,                                                                                                                                               +
                       "Plan Rows": 1,                                                                                                                                                   +
                       "Plan Width": 4,                                                                                                                                                  +
                       "Actual Startup Time": 0.025,                                                                                                                                     +
                       "Actual Total Time": 0.025,                                                                                                                                       +
                       "Actual Rows": 1,                                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                                +
                       "Sort Key": ["kt2.id"],                                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                                       +
                       "Sort Space Used": 25,                                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                                                                           +
                       "Shared Read Blocks": 0,                                                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                                                            +
                       "Temp Written Blocks": 0,                                                                                                                                         +
                       "Plans": [                                                                                                                                                        +
                         {                                                                                                                                                               +
                           "Node Type": "Seq Scan",                                                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                                               +
                           "Parallel Aware": false,                                                                                                                                      +
                           "Relation Name": "kind_type",                                                                                                                                 +
                           "Alias": "kt2",                                                                                                                                               +
                           "Startup Cost": 0.00,                                                                                                                                         +
                           "Total Cost": 0.03,                                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                                               +
                           "Plan Width": 4,                                                                                                                                              +
                           "Actual Startup Time": 0.016,                                                                                                                                 +
                           "Actual Total Time": 0.017,                                                                                                                                   +
                           "Actual Rows": 1,                                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                                            +
                           "Filter": "((kind)::text = 'tv series'::text)",                                                                                                               +
                           "Rows Removed by Filter": 6,                                                                                                                                  +
                           "Shared Hit Blocks": 1,                                                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                                                      +
                         }                                                                                                                                                               +
                       ]                                                                                                                                                                 +
                     }                                                                                                                                                                   +
                   ]                                                                                                                                                                     +
                 }                                                                                                                                                                       +
               ]                                                                                                                                                                         +
             },                                                                                                                                                                          +
             {                                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                                  +
               "Startup Cost": 0.05,                                                                                                                                                     +
               "Total Cost": 0.05,                                                                                                                                                       +
               "Plan Rows": 1,                                                                                                                                                           +
               "Plan Width": 4,                                                                                                                                                          +
               "Actual Startup Time": 0.021,                                                                                                                                             +
               "Actual Total Time": 0.021,                                                                                                                                               +
               "Actual Rows": 1,                                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                                        +
               "Sort Key": ["it1.id"],                                                                                                                                                   +
               "Sort Method": "quicksort",                                                                                                                                               +
               "Sort Space Used": 25,                                                                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                                                              +
               "Shared Hit Blocks": 1,                                                                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                                                 +
               "Plans": [                                                                                                                                                                +
                 {                                                                                                                                                                       +
                   "Node Type": "Seq Scan",                                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                                              +
                   "Relation Name": "info_type",                                                                                                                                         +
                   "Alias": "it1",                                                                                                                                                       +
                   "Startup Cost": 0.00,                                                                                                                                                 +
                   "Total Cost": 0.05,                                                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                                                       +
                   "Plan Width": 4,                                                                                                                                                      +
                   "Actual Startup Time": 0.017,                                                                                                                                         +
                   "Actual Total Time": 0.019,                                                                                                                                           +
                   "Actual Rows": 1,                                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                                    +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                                                          +
                   "Rows Removed by Filter": 112,                                                                                                                                        +
                   "Shared Hit Blocks": 1,                                                                                                                                               +
                   "Shared Read Blocks": 0,                                                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                                                              +
                 }                                                                                                                                                                       +
               ]                                                                                                                                                                         +
             }                                                                                                                                                                           +
           ]                                                                                                                                                                             +
         }                                                                                                                                                                               +
       ]                                                                                                                                                                                 +
     },                                                                                                                                                                                  +
     "Planning Time": 6235.214,                                                                                                                                                          +
     "Triggers": [                                                                                                                                                                       +
     ],                                                                                                                                                                                  +
     "Execution Time": 5278.530                                                                                                                                                          +
   }                                                                                                                                                                                     +
 ]
(1 row)

