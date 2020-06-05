                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 80294.49,                                                                                                                                         +
       "Total Cost": 80294.49,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 17179.396,                                                                                                                                 +
       "Actual Total Time": 17179.396,                                                                                                                                   +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 18,                                                                                                                                          +
       "Shared Read Blocks": 228116,                                                                                                                                     +
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
           "Startup Cost": 80294.49,                                                                                                                                     +
           "Total Cost": 80294.49,                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 42,                                                                                                                                             +
           "Actual Startup Time": 17179.306,                                                                                                                             +
           "Actual Total Time": 17179.321,                                                                                                                               +
           "Actual Rows": 53,                                                                                                                                            +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Merge Cond": "(miidx.info_type_id = it.id)",                                                                                                                 +
           "Shared Hit Blocks": 18,                                                                                                                                      +
           "Shared Read Blocks": 228116,                                                                                                                                 +
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
               "Startup Cost": 80294.44,                                                                                                                                 +
               "Total Cost": 80294.44,                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 46,                                                                                                                                         +
               "Actual Startup Time": 17179.271,                                                                                                                         +
               "Actual Total Time": 17179.278,                                                                                                                           +
               "Actual Rows": 159,                                                                                                                                       +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["miidx.info_type_id"],                                                                                                                       +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 39,                                                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 17,                                                                                                                                  +
               "Shared Read Blocks": 228116,                                                                                                                             +
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
                   "Startup Cost": 80294.42,                                                                                                                             +
                   "Total Cost": 80294.44,                                                                                                                               +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 46,                                                                                                                                     +
                   "Actual Startup Time": 17179.113,                                                                                                                     +
                   "Actual Total Time": 17179.162,                                                                                                                       +
                   "Actual Rows": 159,                                                                                                                                   +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Inner Unique": true,                                                                                                                                 +
                   "Merge Cond": "(mi.info_type_id = it2.id)",                                                                                                           +
                   "Shared Hit Blocks": 13,                                                                                                                              +
                   "Shared Read Blocks": 228116,                                                                                                                         +
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
                       "Startup Cost": 80294.38,                                                                                                                         +
                       "Total Cost": 80294.38,                                                                                                                           +
                       "Plan Rows": 96,                                                                                                                                  +
                       "Plan Width": 50,                                                                                                                                 +
                       "Actual Startup Time": 17178.997,                                                                                                                 +
                       "Actual Total Time": 17179.037,                                                                                                                   +
                       "Actual Rows": 544,                                                                                                                               +
                       "Actual Loops": 1,                                                                                                                                +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                                       +
                       "Sort Space Used": 99,                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                      +
                       "Shared Hit Blocks": 12,                                                                                                                          +
                       "Shared Read Blocks": 228116,                                                                                                                     +
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
                           "Startup Cost": 77776.30,                                                                                                                     +
                           "Total Cost": 80294.28,                                                                                                                       +
                           "Plan Rows": 96,                                                                                                                              +
                           "Plan Width": 50,                                                                                                                             +
                           "Actual Startup Time": 16626.813,                                                                                                             +
                           "Actual Total Time": 17178.787,                                                                                                               +
                           "Actual Rows": 654,                                                                                                                           +
                           "Actual Loops": 1,                                                                                                                            +
                           "Inner Unique": false,                                                                                                                        +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                         +
                           "Shared Hit Blocks": 12,                                                                                                                      +
                           "Shared Read Blocks": 228116,                                                                                                                 +
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
                               "Node Type": "Merge Join",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Join Type": "Inner",                                                                                                                     +
                               "Startup Cost": 16792.84,                                                                                                                 +
                               "Total Cost": 17007.13,                                                                                                                   +
                               "Plan Rows": 7,                                                                                                                           +
                               "Plan Width": 58,                                                                                                                         +
                               "Actual Startup Time": 4656.746,                                                                                                          +
                               "Actual Total Time": 4700.456,                                                                                                            +
                               "Actual Rows": 42,                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                        +
                               "Inner Unique": false,                                                                                                                    +
                               "Merge Cond": "(t.id = miidx.movie_id)",                                                                                                  +
                               "Shared Hit Blocks": 10,                                                                                                                  +
                               "Shared Read Blocks": 66226,                                                                                                              +
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
                                   "Node Type": "Sort",                                                                                                                  +
                                   "Parent Relationship": "Outer",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Startup Cost": 12061.54,                                                                                                             +
                                   "Total Cost": 12061.54,                                                                                                               +
                                   "Plan Rows": 5,                                                                                                                       +
                                   "Plan Width": 44,                                                                                                                     +
                                   "Actual Startup Time": 3637.890,                                                                                                      +
                                   "Actual Total Time": 3637.894,                                                                                                        +
                                   "Actual Rows": 36,                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Sort Key": ["mc.movie_id"],                                                                                                          +
                                   "Sort Method": "quicksort",                                                                                                           +
                                   "Sort Space Used": 28,                                                                                                                +
                                   "Sort Space Type": "Memory",                                                                                                          +
                                   "Shared Hit Blocks": 8,                                                                                                               +
                                   "Shared Read Blocks": 57775,                                                                                                          +
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
                                       "Node Type": "Merge Join",                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Join Type": "Inner",                                                                                                             +
                                       "Startup Cost": 12048.36,                                                                                                         +
                                       "Total Cost": 12061.54,                                                                                                           +
                                       "Plan Rows": 5,                                                                                                                   +
                                       "Plan Width": 44,                                                                                                                 +
                                       "Actual Startup Time": 3622.390,                                                                                                  +
                                       "Actual Total Time": 3637.855,                                                                                                    +
                                       "Actual Rows": 36,                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Inner Unique": true,                                                                                                             +
                                       "Merge Cond": "(mc.company_id = cn.id)",                                                                                          +
                                       "Shared Hit Blocks": 8,                                                                                                           +
                                       "Shared Read Blocks": 57775,                                                                                                      +
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
                                           "Node Type": "Sort",                                                                                                          +
                                           "Parent Relationship": "Outer",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Startup Cost": 11704.26,                                                                                                     +
                                           "Total Cost": 11704.26,                                                                                                       +
                                           "Plan Rows": 15,                                                                                                              +
                                           "Plan Width": 29,                                                                                                             +
                                           "Actual Startup Time": 3466.125,                                                                                              +
                                           "Actual Total Time": 3466.138,                                                                                                +
                                           "Actual Rows": 81,                                                                                                            +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Sort Key": ["mc.company_id"],                                                                                                +
                                           "Sort Method": "quicksort",                                                                                                   +
                                           "Sort Space Used": 31,                                                                                                        +
                                           "Sort Space Type": "Memory",                                                                                                  +
                                           "Shared Hit Blocks": 6,                                                                                                       +
                                           "Shared Read Blocks": 54783,                                                                                                  +
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
                                               "Startup Cost": 11704.24,                                                                                                 +
                                               "Total Cost": 11704.25,                                                                                                   +
                                               "Plan Rows": 15,                                                                                                          +
                                               "Plan Width": 29,                                                                                                         +
                                               "Actual Startup Time": 3466.066,                                                                                          +
                                               "Actual Total Time": 3466.088,                                                                                            +
                                               "Actual Rows": 81,                                                                                                        +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Inner Unique": true,                                                                                                     +
                                               "Merge Cond": "(mc.company_type_id = ct.id)",                                                                             +
                                               "Shared Hit Blocks": 6,                                                                                                   +
                                               "Shared Read Blocks": 54783,                                                                                              +
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
                                                   "Node Type": "Sort",                                                                                                  +
                                                   "Parent Relationship": "Outer",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 11704.21,                                                                                             +
                                                   "Total Cost": 11704.21,                                                                                               +
                                                   "Plan Rows": 59,                                                                                                      +
                                                   "Plan Width": 33,                                                                                                     +
                                                   "Actual Startup Time": 3466.017,                                                                                      +
                                                   "Actual Total Time": 3466.027,                                                                                        +
                                                   "Actual Rows": 181,                                                                                                   +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Sort Key": ["mc.company_type_id"],                                                                                   +
                                                   "Sort Method": "quicksort",                                                                                           +
                                                   "Sort Space Used": 40,                                                                                                +
                                                   "Sort Space Type": "Memory",                                                                                          +
                                                   "Shared Hit Blocks": 5,                                                                                               +
                                                   "Shared Read Blocks": 54783,                                                                                          +
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
                                                       "Startup Cost": 11299.00,                                                                                         +
                                                       "Total Cost": 11704.15,                                                                                           +
                                                       "Plan Rows": 59,                                                                                                  +
                                                       "Plan Width": 33,                                                                                                 +
                                                       "Actual Startup Time": 3383.207,                                                                                  +
                                                       "Actual Total Time": 3465.949,                                                                                    +
                                                       "Actual Rows": 181,                                                                                               +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Inner Unique": false,                                                                                            +
                                                       "Merge Cond": "(t.id = mc.movie_id)",                                                                             +
                                                       "Shared Hit Blocks": 5,                                                                                           +
                                                       "Shared Read Blocks": 54783,                                                                                      +
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
                                                           "Startup Cost": 1893.54,                                                                                      +
                                                           "Total Cost": 1893.55,                                                                                        +
                                                           "Plan Rows": 57,                                                                                              +
                                                           "Plan Width": 21,                                                                                             +
                                                           "Actual Startup Time": 1729.565,                                                                              +
                                                           "Actual Total Time": 1729.574,                                                                                +
                                                           "Actual Rows": 89,                                                                                            +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Sort Key": ["t.id"],                                                                                         +
                                                           "Sort Method": "quicksort",                                                                                   +
                                                           "Sort Space Used": 30,                                                                                        +
                                                           "Sort Space Type": "Memory",                                                                                  +
                                                           "Shared Hit Blocks": 2,                                                                                       +
                                                           "Shared Read Blocks": 35997,                                                                                  +
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
                                                               "Startup Cost": 1893.42,                                                                                  +
                                                               "Total Cost": 1893.49,                                                                                    +
                                                               "Plan Rows": 57,                                                                                          +
                                                               "Plan Width": 21,                                                                                         +
                                                               "Actual Startup Time": 1729.499,                                                                          +
                                                               "Actual Total Time": 1729.521,                                                                            +
                                                               "Actual Rows": 89,                                                                                        +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Inner Unique": false,                                                                                    +
                                                               "Merge Cond": "(kt.id = t.kind_id)",                                                                      +
                                                               "Shared Hit Blocks": 2,                                                                                   +
                                                               "Shared Read Blocks": 35997,                                                                              +
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
                                                                   "Node Type": "Sort",                                                                                  +
                                                                   "Parent Relationship": "Outer",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Startup Cost": 0.03,                                                                                 +
                                                                   "Total Cost": 0.03,                                                                                   +
                                                                   "Plan Rows": 1,                                                                                       +
                                                                   "Plan Width": 4,                                                                                      +
                                                                   "Actual Startup Time": 0.057,                                                                         +
                                                                   "Actual Total Time": 0.057,                                                                           +
                                                                   "Actual Rows": 1,                                                                                     +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Sort Key": ["kt.id"],                                                                                +
                                                                   "Sort Method": "quicksort",                                                                           +
                                                                   "Sort Space Used": 25,                                                                                +
                                                                   "Sort Space Type": "Memory",                                                                          +
                                                                   "Shared Hit Blocks": 1,                                                                               +
                                                                   "Shared Read Blocks": 0,                                                                              +
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
                                                                       "Node Type": "Seq Scan",                                                                          +
                                                                       "Parent Relationship": "Outer",                                                                   +
                                                                       "Parallel Aware": false,                                                                          +
                                                                       "Relation Name": "kind_type",                                                                     +
                                                                       "Alias": "kt",                                                                                    +
                                                                       "Startup Cost": 0.00,                                                                             +
                                                                       "Total Cost": 0.03,                                                                               +
                                                                       "Plan Rows": 1,                                                                                   +
                                                                       "Plan Width": 4,                                                                                  +
                                                                       "Actual Startup Time": 0.036,                                                                     +
                                                                       "Actual Total Time": 0.041,                                                                       +
                                                                       "Actual Rows": 1,                                                                                 +
                                                                       "Actual Loops": 1,                                                                                +
                                                                       "Filter": "((kind)::text = 'movie'::text)",                                                       +
                                                                       "Rows Removed by Filter": 6,                                                                      +
                                                                       "Shared Hit Blocks": 1,                                                                           +
                                                                       "Shared Read Blocks": 0,                                                                          +
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
                                                                   "Node Type": "Sort",                                                                                  +
                                                                   "Parent Relationship": "Inner",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Startup Cost": 1893.39,                                                                              +
                                                                   "Total Cost": 1893.42,                                                                                +
                                                                   "Plan Rows": 400,                                                                                     +
                                                                   "Plan Width": 25,                                                                                     +
                                                                   "Actual Startup Time": 1729.435,                                                                      +
                                                                   "Actual Total Time": 1729.440,                                                                        +
                                                                   "Actual Rows": 90,                                                                                    +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Sort Key": ["t.kind_id"],                                                                            +
                                                                   "Sort Method": "quicksort",                                                                           +
                                                                   "Sort Space Used": 49,                                                                                +
                                                                   "Sort Space Type": "Memory",                                                                          +
                                                                   "Shared Hit Blocks": 1,                                                                               +
                                                                   "Shared Read Blocks": 35997,                                                                          +
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
                                                                       "Node Type": "Seq Scan",                                                                          +
                                                                       "Parent Relationship": "Outer",                                                                   +
                                                                       "Parallel Aware": false,                                                                          +
                                                                       "Relation Name": "title",                                                                         +
                                                                       "Alias": "t",                                                                                     +
                                                                       "Startup Cost": 0.00,                                                                             +
                                                                       "Total Cost": 1892.85,                                                                            +
                                                                       "Plan Rows": 400,                                                                                 +
                                                                       "Plan Width": 25,                                                                                 +
                                                                       "Actual Startup Time": 34.965,                                                                    +
                                                                       "Actual Total Time": 1728.903,                                                                    +
                                                                       "Actual Rows": 294,                                                                               +
                                                                       "Actual Loops": 1,                                                                                +
                                                                       "Filter": "((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))",+
                                                                       "Rows Removed by Filter": 2528018,                                                                +
                                                                       "Shared Hit Blocks": 1,                                                                           +
                                                                       "Shared Read Blocks": 35997,                                                                      +
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
                                                                 }                                                                                                       +
                                                               ]                                                                                                         +
                                                             }                                                                                                           +
                                                           ]                                                                                                             +
                                                         },                                                                                                              +
                                                         {                                                                                                               +
                                                           "Node Type": "Sort",                                                                                          +
                                                           "Parent Relationship": "Inner",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Startup Cost": 9405.45,                                                                                      +
                                                           "Total Cost": 9608.03,                                                                                        +
                                                           "Plan Rows": 2609129,                                                                                         +
                                                           "Plan Width": 12,                                                                                             +
                                                           "Actual Startup Time": 1493.696,                                                                              +
                                                           "Actual Total Time": 1572.052,                                                                                +
                                                           "Actual Rows": 1758827,                                                                                       +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Sort Key": ["mc.movie_id"],                                                                                  +
                                                           "Sort Method": "quicksort",                                                                                   +
                                                           "Sort Space Used": 220607,                                                                                    +
                                                           "Sort Space Type": "Memory",                                                                                  +
                                                           "Shared Hit Blocks": 3,                                                                                       +
                                                           "Shared Read Blocks": 18786,                                                                                  +
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
                                                               "Relation Name": "movie_companies",                                                                       +
                                                               "Alias": "mc",                                                                                            +
                                                               "Startup Cost": 0.00,                                                                                     +
                                                               "Total Cost": 769.75,                                                                                     +
                                                               "Plan Rows": 2609129,                                                                                     +
                                                               "Plan Width": 12,                                                                                         +
                                                               "Actual Startup Time": 0.009,                                                                             +
                                                               "Actual Total Time": 532.639,                                                                             +
                                                               "Actual Rows": 2609129,                                                                                   +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Shared Hit Blocks": 3,                                                                                   +
                                                               "Shared Read Blocks": 18786,                                                                              +
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
                                                     }                                                                                                                   +
                                                   ]                                                                                                                     +
                                                 },                                                                                                                      +
                                                 {                                                                                                                       +
                                                   "Node Type": "Sort",                                                                                                  +
                                                   "Parent Relationship": "Inner",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 0.03,                                                                                                 +
                                                   "Total Cost": 0.03,                                                                                                   +
                                                   "Plan Rows": 1,                                                                                                       +
                                                   "Plan Width": 4,                                                                                                      +
                                                   "Actual Startup Time": 0.026,                                                                                         +
                                                   "Actual Total Time": 0.026,                                                                                           +
                                                   "Actual Rows": 1,                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Sort Key": ["ct.id"],                                                                                                +
                                                   "Sort Method": "quicksort",                                                                                           +
                                                   "Sort Space Used": 25,                                                                                                +
                                                   "Sort Space Type": "Memory",                                                                                          +
                                                   "Shared Hit Blocks": 1,                                                                                               +
                                                   "Shared Read Blocks": 0,                                                                                              +
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
                                                       "Node Type": "Seq Scan",                                                                                          +
                                                       "Parent Relationship": "Outer",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Relation Name": "company_type",                                                                                  +
                                                       "Alias": "ct",                                                                                                    +
                                                       "Startup Cost": 0.00,                                                                                             +
                                                       "Total Cost": 0.03,                                                                                               +
                                                       "Plan Rows": 1,                                                                                                   +
                                                       "Plan Width": 4,                                                                                                  +
                                                       "Actual Startup Time": 0.018,                                                                                     +
                                                       "Actual Total Time": 0.019,                                                                                       +
                                                       "Actual Rows": 1,                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Filter": "((kind)::text = 'production companies'::text)",                                                        +
                                                       "Rows Removed by Filter": 3,                                                                                      +
                                                       "Shared Hit Blocks": 1,                                                                                           +
                                                       "Shared Read Blocks": 0,                                                                                          +
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
                                                 }                                                                                                                       +
                                               ]                                                                                                                         +
                                             }                                                                                                                           +
                                           ]                                                                                                                             +
                                         },                                                                                                                              +
                                         {                                                                                                                               +
                                           "Node Type": "Sort",                                                                                                          +
                                           "Parent Relationship": "Inner",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Startup Cost": 344.10,                                                                                                       +
                                           "Total Cost": 350.69,                                                                                                         +
                                           "Plan Rows": 84843,                                                                                                           +
                                           "Plan Width": 23,                                                                                                             +
                                           "Actual Startup Time": 156.173,                                                                                               +
                                           "Actual Total Time": 163.099,                                                                                                 +
                                           "Actual Rows": 62688,                                                                                                         +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Sort Key": ["cn.id"],                                                                                                        +
                                           "Sort Method": "quicksort",                                                                                                   +
                                           "Sort Space Used": 9413,                                                                                                      +
                                           "Sort Space Type": "Memory",                                                                                                  +
                                           "Shared Hit Blocks": 2,                                                                                                       +
                                           "Shared Read Blocks": 2992,                                                                                                   +
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
                                               "Relation Name": "company_name",                                                                                          +
                                               "Alias": "cn",                                                                                                            +
                                               "Startup Cost": 0.00,                                                                                                     +
                                               "Total Cost": 128.41,                                                                                                     +
                                               "Plan Rows": 84843,                                                                                                       +
                                               "Plan Width": 23,                                                                                                         +
                                               "Actual Startup Time": 4.891,                                                                                             +
                                               "Actual Total Time": 111.045,                                                                                             +
                                               "Actual Rows": 84843,                                                                                                     +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Filter": "((country_code)::text = '[us]'::text)",                                                                        +
                                               "Rows Removed by Filter": 150154,                                                                                         +
                                               "Shared Hit Blocks": 2,                                                                                                   +
                                               "Shared Read Blocks": 2992,                                                                                               +
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
                                 {                                                                                                                                       +
                                   "Node Type": "Sort",                                                                                                                  +
                                   "Parent Relationship": "Inner",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Startup Cost": 4731.30,                                                                                                              +
                                   "Total Cost": 4838.45,                                                                                                                +
                                   "Plan Rows": 1380035,                                                                                                                 +
                                   "Plan Width": 14,                                                                                                                     +
                                   "Actual Startup Time": 922.444,                                                                                                       +
                                   "Actual Total Time": 965.220,                                                                                                         +
                                   "Actual Rows": 960967,                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Sort Key": ["miidx.movie_id"],                                                                                                       +
                                   "Sort Method": "quicksort",                                                                                                           +
                                   "Sort Space Used": 128214,                                                                                                            +
                                   "Sort Space Type": "Memory",                                                                                                          +
                                   "Shared Hit Blocks": 2,                                                                                                               +
                                   "Shared Read Blocks": 8451,                                                                                                           +
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
                                       "Node Type": "Seq Scan",                                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Relation Name": "movie_info_idx",                                                                                                +
                                       "Alias": "miidx",                                                                                                                 +
                                       "Startup Cost": 0.00,                                                                                                             +
                                       "Total Cost": 360.56,                                                                                                             +
                                       "Plan Rows": 1380035,                                                                                                             +
                                       "Plan Width": 14,                                                                                                                 +
                                       "Actual Startup Time": 0.009,                                                                                                     +
                                       "Actual Total Time": 378.856,                                                                                                     +
                                       "Actual Rows": 1380035,                                                                                                           +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Shared Hit Blocks": 2,                                                                                                           +
                                       "Shared Read Blocks": 8451,                                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                                            +
                                       "Local Read Blocks": 0,                                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                                        +
                                       "Local Written Blocks": 0,                                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                                            +
                                       "Temp Written Blocks": 0                                                                                                          +
                                     }                                                                                                                                   +
                                   ]                                                                                                                                     +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             },                                                                                                                                          +
                             {                                                                                                                                           +
                               "Node Type": "Sort",                                                                                                                      +
                               "Parent Relationship": "Inner",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Startup Cost": 60983.46,                                                                                                                 +
                               "Total Cost": 62135.30,                                                                                                                   +
                               "Plan Rows": 14835720,                                                                                                                    +
                               "Plan Width": 8,                                                                                                                          +
                               "Actual Startup Time": 11093.886,                                                                                                         +
                               "Actual Total Time": 11563.740,                                                                                                           +
                               "Actual Rows": 9699032,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                        +
                               "Sort Key": ["mi.movie_id"],                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                               +
                               "Sort Space Used": 1088641,                                                                                                               +
                               "Sort Space Type": "Memory",                                                                                                              +
                               "Shared Hit Blocks": 2,                                                                                                                   +
                               "Shared Read Blocks": 161890,                                                                                                             +
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
                                   "Relation Name": "movie_info",                                                                                                        +
                                   "Alias": "mi",                                                                                                                        +
                                   "Startup Cost": 0.00,                                                                                                                 +
                                   "Total Cost": 6103.84,                                                                                                                +
                                   "Plan Rows": 14835720,                                                                                                                +
                                   "Plan Width": 8,                                                                                                                      +
                                   "Actual Startup Time": 26.196,                                                                                                        +
                                   "Actual Total Time": 5371.369,                                                                                                        +
                                   "Actual Rows": 14835720,                                                                                                              +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Shared Hit Blocks": 2,                                                                                                               +
                                   "Shared Read Blocks": 161890,                                                                                                         +
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
                       "Startup Cost": 0.05,                                                                                                                             +
                       "Total Cost": 0.05,                                                                                                                               +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 4,                                                                                                                                  +
                       "Actual Startup Time": 0.038,                                                                                                                     +
                       "Actual Total Time": 0.038,                                                                                                                       +
                       "Actual Rows": 1,                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                +
                       "Sort Key": ["it2.id"],                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                       +
                       "Sort Space Used": 25,                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                                                           +
                       "Shared Read Blocks": 0,                                                                                                                          +
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
                           "Relation Name": "info_type",                                                                                                                 +
                           "Alias": "it2",                                                                                                                               +
                           "Startup Cost": 0.00,                                                                                                                         +
                           "Total Cost": 0.05,                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 4,                                                                                                                              +
                           "Actual Startup Time": 0.021,                                                                                                                 +
                           "Actual Total Time": 0.030,                                                                                                                   +
                           "Actual Rows": 1,                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                            +
                           "Filter": "((info)::text = 'release dates'::text)",                                                                                           +
                           "Rows Removed by Filter": 112,                                                                                                                +
                           "Shared Hit Blocks": 1,                                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                                      +
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
             },                                                                                                                                                          +
             {                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 0.05,                                                                                                                                     +
               "Total Cost": 0.05,                                                                                                                                       +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 4,                                                                                                                                          +
               "Actual Startup Time": 0.016,                                                                                                                             +
               "Actual Total Time": 0.016,                                                                                                                               +
               "Actual Rows": 1,                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["it.id"],                                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 25,                                                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 1,                                                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                                                  +
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
                   "Relation Name": "info_type",                                                                                                                         +
                   "Alias": "it",                                                                                                                                        +
                   "Startup Cost": 0.00,                                                                                                                                 +
                   "Total Cost": 0.05,                                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 0.012,                                                                                                                         +
                   "Actual Total Time": 0.013,                                                                                                                           +
                   "Actual Rows": 1,                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                                          +
                   "Rows Removed by Filter": 112,                                                                                                                        +
                   "Shared Hit Blocks": 1,                                                                                                                               +
                   "Shared Read Blocks": 0,                                                                                                                              +
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
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 5186.866,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 17262.461                                                                                                                                         +
   }                                                                                                                                                                     +
 ]
(1 row)

