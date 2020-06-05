                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                            +
   {                                                                                                                                                                                          +
     "Plan": {                                                                                                                                                                                +
       "Node Type": "Aggregate",                                                                                                                                                              +
       "Strategy": "Plain",                                                                                                                                                                   +
       "Partial Mode": "Simple",                                                                                                                                                              +
       "Parallel Aware": false,                                                                                                                                                               +
       "Startup Cost": 60499.87,                                                                                                                                                              +
       "Total Cost": 60499.87,                                                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                                                        +
       "Plan Width": 128,                                                                                                                                                                     +
       "Actual Startup Time": 26761.860,                                                                                                                                                      +
       "Actual Total Time": 26761.860,                                                                                                                                                        +
       "Actual Rows": 1,                                                                                                                                                                      +
       "Actual Loops": 1,                                                                                                                                                                     +
       "Shared Hit Blocks": 22,                                                                                                                                                               +
       "Shared Read Blocks": 413873,                                                                                                                                                          +
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
           "Startup Cost": 60482.75,                                                                                                                                                          +
           "Total Cost": 60498.36,                                                                                                                                                            +
           "Plan Rows": 4872,                                                                                                                                                                 +
           "Plan Width": 64,                                                                                                                                                                  +
           "Actual Startup Time": 26237.770,                                                                                                                                                  +
           "Actual Total Time": 26579.741,                                                                                                                                                    +
           "Actual Rows": 483082,                                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                                                 +
           "Inner Unique": true,                                                                                                                                                              +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                                           +
           "Shared Hit Blocks": 22,                                                                                                                                                           +
           "Shared Read Blocks": 413873,                                                                                                                                                      +
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
               "Startup Cost": 60138.65,                                                                                                                                                      +
               "Total Cost": 60139.70,                                                                                                                                                        +
               "Plan Rows": 13494,                                                                                                                                                            +
               "Plan Width": 68,                                                                                                                                                              +
               "Actual Startup Time": 26080.398,                                                                                                                                              +
               "Actual Total Time": 26195.647,                                                                                                                                                +
               "Actual Rows": 909946,                                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                                             +
               "Sort Key": ["mc.company_id"],                                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                                                    +
               "Sort Space Used": 153376,                                                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                                                                   +
               "Shared Hit Blocks": 20,                                                                                                                                                       +
               "Shared Read Blocks": 410881,                                                                                                                                                  +
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
                   "Startup Cost": 59309.47,                                                                                                                                                  +
                   "Total Cost": 60109.90,                                                                                                                                                    +
                   "Plan Rows": 13494,                                                                                                                                                        +
                   "Plan Width": 68,                                                                                                                                                          +
                   "Actual Startup Time": 24221.181,                                                                                                                                          +
                   "Actual Total Time": 25748.435,                                                                                                                                            +
                   "Actual Rows": 909946,                                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                                         +
                   "Inner Unique": false,                                                                                                                                                     +
                   "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                                                                                               +
                   "Shared Hit Blocks": 16,                                                                                                                                                   +
                   "Shared Read Blocks": 410881,                                                                                                                                              +
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
                       "Node Type": "Merge Join",                                                                                                                                             +
                       "Parent Relationship": "Outer",                                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                                               +
                       "Join Type": "Inner",                                                                                                                                                  +
                       "Startup Cost": 49904.02,                                                                                                                                              +
                       "Total Cost": 50297.83,                                                                                                                                                +
                       "Plan Rows": 7026,                                                                                                                                                     +
                       "Plan Width": 72,                                                                                                                                                      +
                       "Actual Startup Time": 22751.624,                                                                                                                                      +
                       "Actual Total Time": 23620.365,                                                                                                                                        +
                       "Actual Rows": 482841,                                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Inner Unique": true,                                                                                                                                                  +
                       "Merge Cond": "(ci.movie_id = t.id)",                                                                                                                                  +
                       "Shared Hit Blocks": 13,                                                                                                                                               +
                       "Shared Read Blocks": 392095,                                                                                                                                          +
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
                           "Node Type": "Sort",                                                                                                                                               +
                           "Parent Relationship": "Outer",                                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                                           +
                           "Startup Cost": 40249.67,                                                                                                                                          +
                           "Total Cost": 40250.21,                                                                                                                                            +
                           "Plan Rows": 7026,                                                                                                                                                 +
                           "Plan Width": 51,                                                                                                                                                  +
                           "Actual Startup Time": 20443.152,                                                                                                                                  +
                           "Actual Total Time": 20490.322,                                                                                                                                    +
                           "Actual Rows": 482841,                                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Sort Key": ["ci.movie_id"],                                                                                                                                       +
                           "Sort Method": "quicksort",                                                                                                                                        +
                           "Sort Space Used": 66067,                                                                                                                                          +
                           "Sort Space Type": "Memory",                                                                                                                                       +
                           "Shared Hit Blocks": 12,                                                                                                                                           +
                           "Shared Read Blocks": 356098,                                                                                                                                      +
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
                               "Node Type": "Merge Join",                                                                                                                                     +
                               "Parent Relationship": "Outer",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Join Type": "Inner",                                                                                                                                          +
                               "Startup Cost": 39746.52,                                                                                                                                      +
                               "Total Cost": 40235.72,                                                                                                                                        +
                               "Plan Rows": 7026,                                                                                                                                             +
                               "Plan Width": 51,                                                                                                                                              +
                               "Actual Startup Time": 19290.291,                                                                                                                              +
                               "Actual Total Time": 20255.173,                                                                                                                                +
                               "Actual Rows": 482841,                                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Inner Unique": true,                                                                                                                                          +
                               "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                                  +
                               "Shared Hit Blocks": 12,                                                                                                                                       +
                               "Shared Read Blocks": 356098,                                                                                                                                  +
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
                                   "Node Type": "Sort",                                                                                                                                       +
                                   "Parent Relationship": "Outer",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Startup Cost": 27861.89,                                                                                                                                  +
                                   "Total Cost": 27863.01,                                                                                                                                    +
                                   "Plan Rows": 14477,                                                                                                                                        +
                                   "Plan Width": 39,                                                                                                                                          +
                                   "Actual Startup Time": 16830.906,                                                                                                                          +
                                   "Actual Total Time": 16872.614,                                                                                                                            +
                                   "Actual Rows": 482842,                                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Sort Key": ["ci.person_role_id"],                                                                                                                         +
                                   "Sort Method": "quicksort",                                                                                                                                +
                                   "Sort Space Used": 56741,                                                                                                                                  +
                                   "Sort Space Type": "Memory",                                                                                                                               +
                                   "Shared Hit Blocks": 10,                                                                                                                                   +
                                   "Shared Read Blocks": 319653,                                                                                                                              +
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
                                       "Startup Cost": 27543.85,                                                                                                                              +
                                       "Total Cost": 27830.82,                                                                                                                                +
                                       "Plan Rows": 14477,                                                                                                                                    +
                                       "Plan Width": 39,                                                                                                                                      +
                                       "Actual Startup Time": 16128.159,                                                                                                                      +
                                       "Actual Total Time": 16661.743,                                                                                                                        +
                                       "Actual Rows": 503022,                                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Inner Unique": true,                                                                                                                                  +
                                       "Merge Cond": "(ci.person_id = n.id)",                                                                                                                 +
                                       "Shared Hit Blocks": 10,                                                                                                                               +
                                       "Shared Read Blocks": 319653,                                                                                                                          +
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
                                           "Node Type": "Merge Join",                                                                                                                         +
                                           "Parent Relationship": "Outer",                                                                                                                    +
                                           "Parallel Aware": false,                                                                                                                           +
                                           "Join Type": "Inner",                                                                                                                              +
                                           "Startup Cost": 22218.73,                                                                                                                          +
                                           "Total Cost": 22354.24,                                                                                                                            +
                                           "Plan Rows": 62717,                                                                                                                                +
                                           "Plan Width": 32,                                                                                                                                  +
                                           "Actual Startup Time": 13189.660,                                                                                                                  +
                                           "Actual Total Time": 13466.736,                                                                                                                    +
                                           "Actual Rows": 503508,                                                                                                                             +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Inner Unique": false,                                                                                                                             +
                                           "Merge Cond": "(ci.person_id = an.person_id)",                                                                                                     +
                                           "Shared Hit Blocks": 8,                                                                                                                            +
                                           "Shared Read Blocks": 264042,                                                                                                                      +
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
                                               "Node Type": "Sort",                                                                                                                           +
                                               "Parent Relationship": "Outer",                                                                                                                +
                                               "Parallel Aware": false,                                                                                                                       +
                                               "Startup Cost": 19030.34,                                                                                                                      +
                                               "Total Cost": 19035.94,                                                                                                                        +
                                               "Plan Rows": 72136,                                                                                                                            +
                                               "Plan Width": 12,                                                                                                                              +
                                               "Actual Startup Time": 12421.256,                                                                                                              +
                                               "Actual Total Time": 12438.225,                                                                                                                +
                                               "Actual Rows": 276166,                                                                                                                         +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Sort Key": ["ci.person_id"],                                                                                                                  +
                                               "Sort Method": "quicksort",                                                                                                                    +
                                               "Sort Space Used": 25234,                                                                                                                      +
                                               "Sort Space Type": "Memory",                                                                                                                   +
                                               "Shared Hit Blocks": 6,                                                                                                                        +
                                               "Shared Read Blocks": 252649,                                                                                                                  +
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
                                                   "Node Type": "Merge Join",                                                                                                                 +
                                                   "Parent Relationship": "Outer",                                                                                                            +
                                                   "Parallel Aware": false,                                                                                                                   +
                                                   "Join Type": "Inner",                                                                                                                      +
                                                   "Startup Cost": 18710.16,                                                                                                                  +
                                                   "Total Cost": 18849.57,                                                                                                                    +
                                                   "Plan Rows": 72136,                                                                                                                        +
                                                   "Plan Width": 12,                                                                                                                          +
                                                   "Actual Startup Time": 12270.317,                                                                                                          +
                                                   "Actual Total Time": 12345.236,                                                                                                            +
                                                   "Actual Rows": 276166,                                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                                         +
                                                   "Inner Unique": true,                                                                                                                      +
                                                   "Merge Cond": "(ci.role_id = rt.id)",                                                                                                      +
                                                   "Shared Hit Blocks": 6,                                                                                                                    +
                                                   "Shared Read Blocks": 252649,                                                                                                              +
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
                                                       "Node Type": "Sort",                                                                                                                   +
                                                       "Parent Relationship": "Outer",                                                                                                        +
                                                       "Parallel Aware": false,                                                                                                               +
                                                       "Startup Cost": 18710.13,                                                                                                              +
                                                       "Total Cost": 18777.34,                                                                                                                +
                                                       "Plan Rows": 865636,                                                                                                                   +
                                                       "Plan Width": 16,                                                                                                                      +
                                                       "Actual Startup Time": 12182.041,                                                                                                      +
                                                       "Actual Total Time": 12222.044,                                                                                                        +
                                                       "Actual Rows": 867127,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Sort Key": ["ci.role_id"],                                                                                                            +
                                                       "Sort Method": "quicksort",                                                                                                            +
                                                       "Sort Space Used": 65239,                                                                                                              +
                                                       "Sort Space Type": "Memory",                                                                                                           +
                                                       "Shared Hit Blocks": 5,                                                                                                                +
                                                       "Shared Read Blocks": 252649,                                                                                                          +
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
                                                           "Relation Name": "cast_info",                                                                                                      +
                                                           "Alias": "ci",                                                                                                                     +
                                                           "Startup Cost": 0.00,                                                                                                              +
                                                           "Total Cost": 16059.00,                                                                                                            +
                                                           "Plan Rows": 865636,                                                                                                               +
                                                           "Plan Width": 16,                                                                                                                  +
                                                           "Actual Startup Time": 0.028,                                                                                                      +
                                                           "Actual Total Time": 11906.135,                                                                                                    +
                                                           "Actual Rows": 867477,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                                           "Rows Removed by Filter": 35376867,                                                                                                +
                                                           "Shared Hit Blocks": 5,                                                                                                            +
                                                           "Shared Read Blocks": 252649,                                                                                                      +
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
                                                       "Node Type": "Sort",                                                                                                                   +
                                                       "Parent Relationship": "Inner",                                                                                                        +
                                                       "Parallel Aware": false,                                                                                                               +
                                                       "Startup Cost": 0.03,                                                                                                                  +
                                                       "Total Cost": 0.03,                                                                                                                    +
                                                       "Plan Rows": 1,                                                                                                                        +
                                                       "Plan Width": 4,                                                                                                                       +
                                                       "Actual Startup Time": 0.022,                                                                                                          +
                                                       "Actual Total Time": 0.023,                                                                                                            +
                                                       "Actual Rows": 1,                                                                                                                      +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Sort Key": ["rt.id"],                                                                                                                 +
                                                       "Sort Method": "quicksort",                                                                                                            +
                                                       "Sort Space Used": 25,                                                                                                                 +
                                                       "Sort Space Type": "Memory",                                                                                                           +
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
                                                           "Actual Startup Time": 0.011,                                                                                                      +
                                                           "Actual Total Time": 0.013,                                                                                                        +
                                                           "Actual Rows": 1,                                                                                                                  +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Filter": "((role)::text = 'actress'::text)",                                                                                      +
                                                           "Rows Removed by Filter": 11,                                                                                                      +
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
                                                 }                                                                                                                                            +
                                               ]                                                                                                                                              +
                                             },                                                                                                                                               +
                                             {                                                                                                                                                +
                                               "Node Type": "Sort",                                                                                                                           +
                                               "Parent Relationship": "Inner",                                                                                                                +
                                               "Parallel Aware": false,                                                                                                                       +
                                               "Startup Cost": 3188.40,                                                                                                                       +
                                               "Total Cost": 3258.38,                                                                                                                         +
                                               "Plan Rows": 901343,                                                                                                                           +
                                               "Plan Width": 20,                                                                                                                              +
                                               "Actual Startup Time": 768.234,                                                                                                                +
                                               "Actual Total Time": 832.835,                                                                                                                  +
                                               "Actual Rows": 1065822,                                                                                                                        +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Sort Key": ["an.person_id"],                                                                                                                  +
                                               "Sort Method": "quicksort",                                                                                                                    +
                                               "Sort Space Used": 89763,                                                                                                                      +
                                               "Sort Space Type": "Memory",                                                                                                                   +
                                               "Shared Hit Blocks": 2,                                                                                                                        +
                                               "Shared Read Blocks": 11393,                                                                                                                   +
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
                                                   "Node Type": "Seq Scan",                                                                                                                   +
                                                   "Parent Relationship": "Outer",                                                                                                            +
                                                   "Parallel Aware": false,                                                                                                                   +
                                                   "Relation Name": "aka_name",                                                                                                               +
                                                   "Alias": "an",                                                                                                                             +
                                                   "Startup Cost": 0.00,                                                                                                                      +
                                                   "Total Cost": 419.75,                                                                                                                      +
                                                   "Plan Rows": 901343,                                                                                                                       +
                                                   "Plan Width": 20,                                                                                                                          +
                                                   "Actual Startup Time": 0.012,                                                                                                              +
                                                   "Actual Total Time": 328.272,                                                                                                              +
                                                   "Actual Rows": 901343,                                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                                         +
                                                   "Shared Hit Blocks": 2,                                                                                                                    +
                                                   "Shared Read Blocks": 11393,                                                                                                               +
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
                                             }                                                                                                                                                +
                                           ]                                                                                                                                                  +
                                         },                                                                                                                                                   +
                                         {                                                                                                                                                    +
                                           "Node Type": "Sort",                                                                                                                               +
                                           "Parent Relationship": "Inner",                                                                                                                    +
                                           "Parallel Aware": false,                                                                                                                           +
                                           "Startup Cost": 5325.12,                                                                                                                           +
                                           "Total Cost": 5399.80,                                                                                                                             +
                                           "Plan Rows": 961996,                                                                                                                               +
                                           "Plan Width": 19,                                                                                                                                  +
                                           "Actual Startup Time": 2877.821,                                                                                                                   +
                                           "Actual Total Time": 2982.121,                                                                                                                     +
                                           "Actual Rows": 961332,                                                                                                                             +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Sort Key": ["n.id"],                                                                                                                              +
                                           "Sort Method": "quicksort",                                                                                                                        +
                                           "Sort Space Used": 95993,                                                                                                                          +
                                           "Sort Space Type": "Memory",                                                                                                                       +
                                           "Shared Hit Blocks": 2,                                                                                                                            +
                                           "Shared Read Blocks": 55611,                                                                                                                       +
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
                                               "Relation Name": "name",                                                                                                                       +
                                               "Alias": "n",                                                                                                                                  +
                                               "Startup Cost": 0.00,                                                                                                                          +
                                               "Total Cost": 2356.12,                                                                                                                         +
                                               "Plan Rows": 961996,                                                                                                                           +
                                               "Plan Width": 19,                                                                                                                              +
                                               "Actual Startup Time": 1095.673,                                                                                                               +
                                               "Actual Total Time": 2455.169,                                                                                                                 +
                                               "Actual Rows": 961555,                                                                                                                         +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Filter": "((gender)::text = 'f'::text)",                                                                                                      +
                                               "Rows Removed by Filter": 3205936,                                                                                                             +
                                               "Shared Hit Blocks": 2,                                                                                                                        +
                                               "Shared Read Blocks": 55611,                                                                                                                   +
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
                                     }                                                                                                                                                        +
                                   ]                                                                                                                                                          +
                                 },                                                                                                                                                           +
                                 {                                                                                                                                                            +
                                   "Node Type": "Sort",                                                                                                                                       +
                                   "Parent Relationship": "Inner",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Startup Cost": 11884.63,                                                                                                                                  +
                                   "Total Cost": 12128.45,                                                                                                                                    +
                                   "Plan Rows": 3140339,                                                                                                                                      +
                                   "Plan Width": 20,                                                                                                                                          +
                                   "Actual Startup Time": 2459.374,                                                                                                                           +
                                   "Actual Total Time": 2827.329,                                                                                                                             +
                                   "Actual Rows": 3140191,                                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Sort Key": ["chn.id"],                                                                                                                                    +
                                   "Sort Method": "quicksort",                                                                                                                                +
                                   "Sort Space Used": 318833,                                                                                                                                 +
                                   "Sort Space Type": "Memory",                                                                                                                               +
                                   "Shared Hit Blocks": 2,                                                                                                                                    +
                                   "Shared Read Blocks": 36445,                                                                                                                               +
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
                                       "Node Type": "Seq Scan",                                                                                                                               +
                                       "Parent Relationship": "Outer",                                                                                                                        +
                                       "Parallel Aware": false,                                                                                                                               +
                                       "Relation Name": "char_name",                                                                                                                          +
                                       "Alias": "chn",                                                                                                                                        +
                                       "Startup Cost": 0.00,                                                                                                                                  +
                                       "Total Cost": 1360.36,                                                                                                                                 +
                                       "Plan Rows": 3140339,                                                                                                                                  +
                                       "Plan Width": 20,                                                                                                                                      +
                                       "Actual Startup Time": 9.822,                                                                                                                          +
                                       "Actual Total Time": 939.838,                                                                                                                          +
                                       "Actual Rows": 3140339,                                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Shared Hit Blocks": 2,                                                                                                                                +
                                       "Shared Read Blocks": 36445,                                                                                                                           +
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
                             }                                                                                                                                                                +
                           ]                                                                                                                                                                  +
                         },                                                                                                                                                                   +
                         {                                                                                                                                                                    +
                           "Node Type": "Sort",                                                                                                                                               +
                           "Parent Relationship": "Inner",                                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                                           +
                           "Startup Cost": 9654.35,                                                                                                                                           +
                           "Total Cost": 9850.65,                                                                                                                                             +
                           "Plan Rows": 2528312,                                                                                                                                              +
                           "Plan Width": 21,                                                                                                                                                  +
                           "Actual Startup Time": 2308.248,                                                                                                                                   +
                           "Actual Total Time": 2636.573,                                                                                                                                     +
                           "Actual Rows": 2525702,                                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Sort Key": ["t.id"],                                                                                                                                              +
                           "Sort Method": "quicksort",                                                                                                                                        +
                           "Sort Space Used": 275055,                                                                                                                                         +
                           "Sort Space Type": "Memory",                                                                                                                                       +
                           "Shared Hit Blocks": 1,                                                                                                                                            +
                           "Shared Read Blocks": 35997,                                                                                                                                       +
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
                               "Node Type": "Seq Scan",                                                                                                                                       +
                               "Parent Relationship": "Outer",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Relation Name": "title",                                                                                                                                      +
                               "Alias": "t",                                                                                                                                                  +
                               "Startup Cost": 0.00,                                                                                                                                          +
                               "Total Cost": 1303.96,                                                                                                                                         +
                               "Plan Rows": 2528312,                                                                                                                                          +
                               "Plan Width": 21,                                                                                                                                              +
                               "Actual Startup Time": 10.537,                                                                                                                                 +
                               "Actual Total Time": 1011.229,                                                                                                                                 +
                               "Actual Rows": 2528312,                                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Shared Hit Blocks": 1,                                                                                                                                        +
                               "Shared Read Blocks": 35997,                                                                                                                                   +
                               "Shared Dirtied Blocks": 0,                                                                                                                                    +
                               "Shared Written Blocks": 0,                                                                                                                                    +
                               "Local Hit Blocks": 0,                                                                                                                                         +
                               "Local Read Blocks": 0,                                                                                                                                        +
                               "Local Dirtied Blocks": 0,                                                                                                                                     +
                               "Local Written Blocks": 0,                                                                                                                                     +
                               "Temp Read Blocks": 0,                                                                                                                                         +
                               "Temp Written Blocks": 0                                                                                                                                       +
                             }                                                                                                                                                                +
                           ]                                                                                                                                                                  +
                         }                                                                                                                                                                    +
                       ]                                                                                                                                                                      +
                     },                                                                                                                                                                       +
                     {                                                                                                                                                                        +
                       "Node Type": "Sort",                                                                                                                                                   +
                       "Parent Relationship": "Inner",                                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                                               +
                       "Startup Cost": 9405.45,                                                                                                                                               +
                       "Total Cost": 9608.03,                                                                                                                                                 +
                       "Plan Rows": 2609129,                                                                                                                                                  +
                       "Plan Width": 8,                                                                                                                                                       +
                       "Actual Startup Time": 1469.477,                                                                                                                                       +
                       "Actual Total Time": 1655.053,                                                                                                                                         +
                       "Actual Rows": 3435750,                                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Sort Key": ["mc.movie_id"],                                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                                            +
                       "Sort Space Used": 220607,                                                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                                                           +
                       "Shared Hit Blocks": 3,                                                                                                                                                +
                       "Shared Read Blocks": 18786,                                                                                                                                           +
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
                           "Relation Name": "movie_companies",                                                                                                                                +
                           "Alias": "mc",                                                                                                                                                     +
                           "Startup Cost": 0.00,                                                                                                                                              +
                           "Total Cost": 769.75,                                                                                                                                              +
                           "Plan Rows": 2609129,                                                                                                                                              +
                           "Plan Width": 8,                                                                                                                                                   +
                           "Actual Startup Time": 0.014,                                                                                                                                      +
                           "Actual Total Time": 546.500,                                                                                                                                      +
                           "Actual Rows": 2609129,                                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Shared Hit Blocks": 3,                                                                                                                                            +
                           "Shared Read Blocks": 18786,                                                                                                                                       +
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
               "Startup Cost": 344.10,                                                                                                                                                        +
               "Total Cost": 350.69,                                                                                                                                                          +
               "Plan Rows": 84843,                                                                                                                                                            +
               "Plan Width": 4,                                                                                                                                                               +
               "Actual Startup Time": 157.362,                                                                                                                                                +
               "Actual Total Time": 167.749,                                                                                                                                                  +
               "Actual Rows": 84843,                                                                                                                                                          +
               "Actual Loops": 1,                                                                                                                                                             +
               "Sort Key": ["cn.id"],                                                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                                                    +
               "Sort Space Used": 7050,                                                                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                                                                   +
               "Shared Hit Blocks": 2,                                                                                                                                                        +
               "Shared Read Blocks": 2992,                                                                                                                                                    +
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
                   "Relation Name": "company_name",                                                                                                                                           +
                   "Alias": "cn",                                                                                                                                                             +
                   "Startup Cost": 0.00,                                                                                                                                                      +
                   "Total Cost": 128.41,                                                                                                                                                      +
                   "Plan Rows": 84843,                                                                                                                                                        +
                   "Plan Width": 4,                                                                                                                                                           +
                   "Actual Startup Time": 6.006,                                                                                                                                              +
                   "Actual Total Time": 115.871,                                                                                                                                              +
                   "Actual Rows": 84843,                                                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                                                         +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                                                                         +
                   "Rows Removed by Filter": 150154,                                                                                                                                          +
                   "Shared Hit Blocks": 2,                                                                                                                                                    +
                   "Shared Read Blocks": 2992,                                                                                                                                                +
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
         }                                                                                                                                                                                    +
       ]                                                                                                                                                                                      +
     },                                                                                                                                                                                       +
     "Planning Time": 4903.716,                                                                                                                                                               +
     "Triggers": [                                                                                                                                                                            +
     ],                                                                                                                                                                                       +
     "Execution Time": 26853.396                                                                                                                                                              +
   }                                                                                                                                                                                          +
 ]
(1 row)

