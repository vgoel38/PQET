                                                                  QUERY PLAN                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                           +
   {                                                                                                                                         +
     "Plan": {                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                             +
       "Strategy": "Plain",                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                             +
       "Parallel Aware": false,                                                                                                              +
       "Startup Cost": 794.00,                                                                                                               +
       "Total Cost": 794.00,                                                                                                                 +
       "Plan Rows": 1,                                                                                                                       +
       "Plan Width": 192,                                                                                                                    +
       "Actual Startup Time": 4703.707,                                                                                                      +
       "Actual Total Time": 4703.707,                                                                                                        +
       "Actual Rows": 1,                                                                                                                     +
       "Actual Loops": 1,                                                                                                                    +
       "Shared Hit Blocks": 75986,                                                                                                           +
       "Shared Read Blocks": 8936,                                                                                                           +
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
           "Total Cost": 794.00,                                                                                                             +
           "Plan Rows": 1,                                                                                                                   +
           "Plan Width": 84,                                                                                                                 +
           "Actual Startup Time": 211.410,                                                                                                   +
           "Actual Total Time": 4703.239,                                                                                                    +
           "Actual Rows": 114,                                                                                                               +
           "Actual Loops": 1,                                                                                                                +
           "Inner Unique": false,                                                                                                            +
           "Join Filter": "(t2.kind_id = kt2.id)",                                                                                           +
           "Rows Removed by Join Filter": 152,                                                                                               +
           "Shared Hit Blocks": 75986,                                                                                                       +
           "Shared Read Blocks": 8936,                                                                                                       +
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
               "Alias": "kt2",                                                                                                               +
               "Startup Cost": 0.00,                                                                                                         +
               "Total Cost": 0.03,                                                                                                           +
               "Plan Rows": 2,                                                                                                               +
               "Plan Width": 4,                                                                                                              +
               "Actual Startup Time": 0.019,                                                                                                 +
               "Actual Total Time": 0.021,                                                                                                   +
               "Actual Rows": 2,                                                                                                             +
               "Actual Loops": 1,                                                                                                            +
               "Filter": "((kind)::text = ANY ('{\"tv series\",episode}'::text[]))",                                                         +
               "Rows Removed by Filter": 5,                                                                                                  +
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
             },                                                                                                                              +
             {                                                                                                                               +
               "Node Type": "Materialize",                                                                                                   +
               "Parent Relationship": "Inner",                                                                                               +
               "Parallel Aware": false,                                                                                                      +
               "Startup Cost": 0.10,                                                                                                         +
               "Total Cost": 793.96,                                                                                                         +
               "Plan Rows": 1,                                                                                                               +
               "Plan Width": 88,                                                                                                             +
               "Actual Startup Time": 105.694,                                                                                               +
               "Actual Total Time": 2351.525,                                                                                                +
               "Actual Rows": 133,                                                                                                           +
               "Actual Loops": 2,                                                                                                            +
               "Shared Hit Blocks": 75985,                                                                                                   +
               "Shared Read Blocks": 8936,                                                                                                   +
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
                   "Startup Cost": 0.10,                                                                                                     +
                   "Total Cost": 793.96,                                                                                                     +
                   "Plan Rows": 1,                                                                                                           +
                   "Plan Width": 88,                                                                                                         +
                   "Actual Startup Time": 211.379,                                                                                           +
                   "Actual Total Time": 4702.717,                                                                                            +
                   "Actual Rows": 133,                                                                                                       +
                   "Actual Loops": 1,                                                                                                        +
                   "Inner Unique": true,                                                                                                     +
                   "Shared Hit Blocks": 75985,                                                                                               +
                   "Shared Read Blocks": 8936,                                                                                               +
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
                       "Startup Cost": 0.09,                                                                                                 +
                       "Total Cost": 793.87,                                                                                                 +
                       "Plan Rows": 1,                                                                                                       +
                       "Plan Width": 73,                                                                                                     +
                       "Actual Startup Time": 211.347,                                                                                       +
                       "Actual Total Time": 4283.299,                                                                                        +
                       "Actual Rows": 150,                                                                                                   +
                       "Actual Loops": 1,                                                                                                    +
                       "Inner Unique": false,                                                                                                +
                       "Shared Hit Blocks": 75423,                                                                                           +
                       "Shared Read Blocks": 8898,                                                                                           +
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
                           "Startup Cost": 0.08,                                                                                             +
                           "Total Cost": 793.65,                                                                                             +
                           "Plan Rows": 1,                                                                                                   +
                           "Plan Width": 81,                                                                                                 +
                           "Actual Startup Time": 211.132,                                                                                   +
                           "Actual Total Time": 4021.694,                                                                                    +
                           "Actual Rows": 51,                                                                                                +
                           "Actual Loops": 1,                                                                                                +
                           "Inner Unique": false,                                                                                            +
                           "Join Filter": "(t1.kind_id = kt1.id)",                                                                           +
                           "Rows Removed by Join Filter": 51,                                                                                +
                           "Shared Hit Blocks": 75199,                                                                                       +
                           "Shared Read Blocks": 8869,                                                                                       +
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
                               "Node Type": "Seq Scan",                                                                                      +
                               "Parent Relationship": "Outer",                                                                               +
                               "Parallel Aware": false,                                                                                      +
                               "Relation Name": "kind_type",                                                                                 +
                               "Alias": "kt1",                                                                                               +
                               "Startup Cost": 0.00,                                                                                         +
                               "Total Cost": 0.03,                                                                                           +
                               "Plan Rows": 2,                                                                                               +
                               "Plan Width": 4,                                                                                              +
                               "Actual Startup Time": 0.007,                                                                                 +
                               "Actual Total Time": 0.011,                                                                                   +
                               "Actual Rows": 2,                                                                                             +
                               "Actual Loops": 1,                                                                                            +
                               "Filter": "((kind)::text = ANY ('{\"tv series\",episode}'::text[]))",                                         +
                               "Rows Removed by Filter": 5,                                                                                  +
                               "Shared Hit Blocks": 1,                                                                                       +
                               "Shared Read Blocks": 0,                                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                                   +
                               "Shared Written Blocks": 0,                                                                                   +
                               "Local Hit Blocks": 0,                                                                                        +
                               "Local Read Blocks": 0,                                                                                       +
                               "Local Dirtied Blocks": 0,                                                                                    +
                               "Local Written Blocks": 0,                                                                                    +
                               "Temp Read Blocks": 0,                                                                                        +
                               "Temp Written Blocks": 0                                                                                      +
                             },                                                                                                              +
                             {                                                                                                               +
                               "Node Type": "Materialize",                                                                                   +
                               "Parent Relationship": "Inner",                                                                               +
                               "Parallel Aware": false,                                                                                      +
                               "Startup Cost": 0.08,                                                                                         +
                               "Total Cost": 793.61,                                                                                         +
                               "Plan Rows": 1,                                                                                               +
                               "Plan Width": 85,                                                                                             +
                               "Actual Startup Time": 105.561,                                                                               +
                               "Actual Total Time": 2010.795,                                                                                +
                               "Actual Rows": 51,                                                                                            +
                               "Actual Loops": 2,                                                                                            +
                               "Shared Hit Blocks": 75198,                                                                                   +
                               "Shared Read Blocks": 8869,                                                                                   +
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
                                   "Startup Cost": 0.08,                                                                                     +
                                   "Total Cost": 793.61,                                                                                     +
                                   "Plan Rows": 1,                                                                                           +
                                   "Plan Width": 85,                                                                                         +
                                   "Actual Startup Time": 211.111,                                                                           +
                                   "Actual Total Time": 4021.392,                                                                            +
                                   "Actual Rows": 51,                                                                                        +
                                   "Actual Loops": 1,                                                                                        +
                                   "Inner Unique": false,                                                                                    +
                                   "Join Filter": "(it1.id = mi_idx1.info_type_id)",                                                         +
                                   "Rows Removed by Join Filter": 102,                                                                       +
                                   "Shared Hit Blocks": 75198,                                                                               +
                                   "Shared Read Blocks": 8869,                                                                               +
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
                                       "Startup Cost": 0.06,                                                                                 +
                                       "Total Cost": 792.77,                                                                                 +
                                       "Plan Rows": 29,                                                                                      +
                                       "Plan Width": 79,                                                                                     +
                                       "Actual Startup Time": 197.958,                                                                       +
                                       "Actual Total Time": 3881.390,                                                                        +
                                       "Actual Rows": 55,                                                                                    +
                                       "Actual Loops": 1,                                                                                    +
                                       "Inner Unique": true,                                                                                 +
                                       "Shared Hit Blocks": 74998,                                                                           +
                                       "Shared Read Blocks": 8853,                                                                           +
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
                                           "Node Type": "Nested Loop",                                                                       +
                                           "Parent Relationship": "Outer",                                                                   +
                                           "Parallel Aware": false,                                                                          +
                                           "Join Type": "Inner",                                                                             +
                                           "Startup Cost": 0.05,                                                                             +
                                           "Total Cost": 709.21,                                                                             +
                                           "Plan Rows": 29,                                                                                  +
                                           "Plan Width": 54,                                                                                 +
                                           "Actual Startup Time": 165.607,                                                                   +
                                           "Actual Total Time": 3490.929,                                                                    +
                                           "Actual Rows": 55,                                                                                +
                                           "Actual Loops": 1,                                                                                +
                                           "Inner Unique": true,                                                                             +
                                           "Shared Hit Blocks": 74805,                                                                       +
                                           "Shared Read Blocks": 8826,                                                                       +
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
                                               "Node Type": "Nested Loop",                                                                   +
                                               "Parent Relationship": "Outer",                                                               +
                                               "Parallel Aware": false,                                                                      +
                                               "Join Type": "Inner",                                                                         +
                                               "Startup Cost": 0.04,                                                                         +
                                               "Total Cost": 708.70,                                                                         +
                                               "Plan Rows": 29,                                                                              +
                                               "Plan Width": 39,                                                                             +
                                               "Actual Startup Time": 146.666,                                                               +
                                               "Actual Total Time": 3056.210,                                                                +
                                               "Actual Rows": 55,                                                                            +
                                               "Actual Loops": 1,                                                                            +
                                               "Inner Unique": false,                                                                        +
                                               "Shared Hit Blocks": 74622,                                                                   +
                                               "Shared Read Blocks": 8789,                                                                   +
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
                                                   "Node Type": "Nested Loop",                                                               +
                                                   "Parent Relationship": "Outer",                                                           +
                                                   "Parallel Aware": false,                                                                  +
                                                   "Join Type": "Inner",                                                                     +
                                                   "Startup Cost": 0.02,                                                                     +
                                                   "Total Cost": 706.18,                                                                     +
                                                   "Plan Rows": 28,                                                                          +
                                                   "Plan Width": 47,                                                                         +
                                                   "Actual Startup Time": 111.633,                                                           +
                                                   "Actual Total Time": 2626.689,                                                            +
                                                   "Actual Rows": 29,                                                                        +
                                                   "Actual Loops": 1,                                                                        +
                                                   "Inner Unique": true,                                                                     +
                                                   "Join Filter": "(ml.linked_movie_id = t2.id)",                                            +
                                                   "Rows Removed by Join Filter": 0,                                                         +
                                                   "Shared Hit Blocks": 74538,                                                               +
                                                   "Shared Read Blocks": 8746,                                                               +
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
                                                       "Node Type": "Nested Loop",                                                           +
                                                       "Parent Relationship": "Outer",                                                       +
                                                       "Parallel Aware": false,                                                              +
                                                       "Join Type": "Inner",                                                                 +
                                                       "Startup Cost": 0.01,                                                                 +
                                                       "Total Cost": 692.39,                                                                 +
                                                       "Plan Rows": 69,                                                                      +
                                                       "Plan Width": 22,                                                                     +
                                                       "Actual Startup Time": 69.968,                                                        +
                                                       "Actual Total Time": 1655.107,                                                        +
                                                       "Actual Rows": 47,                                                                    +
                                                       "Actual Loops": 1,                                                                    +
                                                       "Inner Unique": true,                                                                 +
                                                       "Join Filter": "(lt.id = ml.link_type_id)",                                           +
                                                       "Rows Removed by Join Filter": 2945,                                                  +
                                                       "Shared Hit Blocks": 74423,                                                           +
                                                       "Shared Read Blocks": 8673,                                                           +
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
                                                           "Node Type": "Nested Loop",                                                       +
                                                           "Parent Relationship": "Outer",                                                   +
                                                           "Parallel Aware": false,                                                          +
                                                           "Join Type": "Inner",                                                             +
                                                           "Startup Cost": 0.01,                                                             +
                                                           "Total Cost": 692.09,                                                             +
                                                           "Plan Rows": 416,                                                                 +
                                                           "Plan Width": 26,                                                                 +
                                                           "Actual Startup Time": 26.528,                                                    +
                                                           "Actual Total Time": 1652.920,                                                    +
                                                           "Actual Rows": 1505,                                                              +
                                                           "Actual Loops": 1,                                                                +
                                                           "Inner Unique": false,                                                            +
                                                           "Shared Hit Blocks": 74422,                                                       +
                                                           "Shared Read Blocks": 8673,                                                       +
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
                                                               "Node Type": "Nested Loop",                                                   +
                                                               "Parent Relationship": "Outer",                                               +
                                                               "Parallel Aware": false,                                                      +
                                                               "Join Type": "Inner",                                                         +
                                                               "Startup Cost": 0.00,                                                         +
                                                               "Total Cost": 626.38,                                                         +
                                                               "Plan Rows": 6253,                                                            +
                                                               "Plan Width": 14,                                                             +
                                                               "Actual Startup Time": 0.158,                                                 +
                                                               "Actual Total Time": 1390.574,                                                +
                                                               "Actual Rows": 36749,                                                         +
                                                               "Actual Loops": 1,                                                            +
                                                               "Inner Unique": false,                                                        +
                                                               "Join Filter": "(it2.id = mi_idx2.info_type_id)",                             +
                                                               "Rows Removed by Join Filter": 669811,                                        +
                                                               "Shared Hit Blocks": 6,                                                       +
                                                               "Shared Read Blocks": 8449,                                                   +
                                                               "Shared Dirtied Blocks": 0,                                                   +
                                                               "Shared Written Blocks": 0,                                                   +
                                                               "Local Hit Blocks": 0,                                                        +
                                                               "Local Read Blocks": 0,                                                       +
                                                               "Local Dirtied Blocks": 0,                                                    +
                                                               "Local Written Blocks": 0,                                                    +
                                                               "Temp Read Blocks": 0,                                                        +
                                                               "Temp Written Blocks": 0,                                                     +
                                                               "Plans": [                                                                    +
                                                                 {                                                                           +
                                                                   "Node Type": "Seq Scan",                                                  +
                                                                   "Parent Relationship": "Outer",                                           +
                                                                   "Parallel Aware": false,                                                  +
                                                                   "Relation Name": "movie_info_idx",                                        +
                                                                   "Alias": "mi_idx2",                                                       +
                                                                   "Startup Cost": 0.00,                                                     +
                                                                   "Total Cost": 467.71,                                                     +
                                                                   "Plan Rows": 706570,                                                      +
                                                                   "Plan Width": 14,                                                         +
                                                                   "Actual Startup Time": 0.014,                                             +
                                                                   "Actual Total Time": 945.031,                                             +
                                                                   "Actual Rows": 706560,                                                    +
                                                                   "Actual Loops": 1,                                                        +
                                                                   "Filter": "(info < '3.5'::text)",                                         +
                                                                   "Rows Removed by Filter": 673475,                                         +
                                                                   "Shared Hit Blocks": 4,                                                   +
                                                                   "Shared Read Blocks": 8449,                                               +
                                                                   "Shared Dirtied Blocks": 0,                                               +
                                                                   "Shared Written Blocks": 0,                                               +
                                                                   "Local Hit Blocks": 0,                                                    +
                                                                   "Local Read Blocks": 0,                                                   +
                                                                   "Local Dirtied Blocks": 0,                                                +
                                                                   "Local Written Blocks": 0,                                                +
                                                                   "Temp Read Blocks": 0,                                                    +
                                                                   "Temp Written Blocks": 0                                                  +
                                                                 },                                                                          +
                                                                 {                                                                           +
                                                                   "Node Type": "Materialize",                                               +
                                                                   "Parent Relationship": "Inner",                                           +
                                                                   "Parallel Aware": false,                                                  +
                                                                   "Startup Cost": 0.00,                                                     +
                                                                   "Total Cost": 0.10,                                                       +
                                                                   "Plan Rows": 1,                                                           +
                                                                   "Plan Width": 8,                                                          +
                                                                   "Actual Startup Time": 0.000,                                             +
                                                                   "Actual Total Time": 0.000,                                               +
                                                                   "Actual Rows": 1,                                                         +
                                                                   "Actual Loops": 706560,                                                   +
                                                                   "Shared Hit Blocks": 2,                                                   +
                                                                   "Shared Read Blocks": 0,                                                  +
                                                                   "Shared Dirtied Blocks": 0,                                               +
                                                                   "Shared Written Blocks": 0,                                               +
                                                                   "Local Hit Blocks": 0,                                                    +
                                                                   "Local Read Blocks": 0,                                                   +
                                                                   "Local Dirtied Blocks": 0,                                                +
                                                                   "Local Written Blocks": 0,                                                +
                                                                   "Temp Read Blocks": 0,                                                    +
                                                                   "Temp Written Blocks": 0,                                                 +
                                                                   "Plans": [                                                                +
                                                                     {                                                                       +
                                                                       "Node Type": "Nested Loop",                                           +
                                                                       "Parent Relationship": "Outer",                                       +
                                                                       "Parallel Aware": false,                                              +
                                                                       "Join Type": "Inner",                                                 +
                                                                       "Startup Cost": 0.00,                                                 +
                                                                       "Total Cost": 0.10,                                                   +
                                                                       "Plan Rows": 1,                                                       +
                                                                       "Plan Width": 8,                                                      +
                                                                       "Actual Startup Time": 0.107,                                         +
                                                                       "Actual Total Time": 0.118,                                           +
                                                                       "Actual Rows": 1,                                                     +
                                                                       "Actual Loops": 1,                                                    +
                                                                       "Inner Unique": false,                                                +
                                                                       "Shared Hit Blocks": 2,                                               +
                                                                       "Shared Read Blocks": 0,                                              +
                                                                       "Shared Dirtied Blocks": 0,                                           +
                                                                       "Shared Written Blocks": 0,                                           +
                                                                       "Local Hit Blocks": 0,                                                +
                                                                       "Local Read Blocks": 0,                                               +
                                                                       "Local Dirtied Blocks": 0,                                            +
                                                                       "Local Written Blocks": 0,                                            +
                                                                       "Temp Read Blocks": 0,                                                +
                                                                       "Temp Written Blocks": 0,                                             +
                                                                       "Plans": [                                                            +
                                                                         {                                                                   +
                                                                           "Node Type": "Seq Scan",                                          +
                                                                           "Parent Relationship": "Outer",                                   +
                                                                           "Parallel Aware": false,                                          +
                                                                           "Relation Name": "info_type",                                     +
                                                                           "Alias": "it2",                                                   +
                                                                           "Startup Cost": 0.00,                                             +
                                                                           "Total Cost": 0.05,                                               +
                                                                           "Plan Rows": 1,                                                   +
                                                                           "Plan Width": 4,                                                  +
                                                                           "Actual Startup Time": 0.058,                                     +
                                                                           "Actual Total Time": 0.062,                                       +
                                                                           "Actual Rows": 1,                                                 +
                                                                           "Actual Loops": 1,                                                +
                                                                           "Filter": "((info)::text = 'rating'::text)",                      +
                                                                           "Rows Removed by Filter": 112,                                    +
                                                                           "Shared Hit Blocks": 1,                                           +
                                                                           "Shared Read Blocks": 0,                                          +
                                                                           "Shared Dirtied Blocks": 0,                                       +
                                                                           "Shared Written Blocks": 0,                                       +
                                                                           "Local Hit Blocks": 0,                                            +
                                                                           "Local Read Blocks": 0,                                           +
                                                                           "Local Dirtied Blocks": 0,                                        +
                                                                           "Local Written Blocks": 0,                                        +
                                                                           "Temp Read Blocks": 0,                                            +
                                                                           "Temp Written Blocks": 0                                          +
                                                                         },                                                                  +
                                                                         {                                                                   +
                                                                           "Node Type": "Materialize",                                       +
                                                                           "Parent Relationship": "Inner",                                   +
                                                                           "Parallel Aware": false,                                          +
                                                                           "Startup Cost": 0.00,                                             +
                                                                           "Total Cost": 0.05,                                               +
                                                                           "Plan Rows": 1,                                                   +
                                                                           "Plan Width": 4,                                                  +
                                                                           "Actual Startup Time": 0.047,                                     +
                                                                           "Actual Total Time": 0.053,                                       +
                                                                           "Actual Rows": 1,                                                 +
                                                                           "Actual Loops": 1,                                                +
                                                                           "Shared Hit Blocks": 1,                                           +
                                                                           "Shared Read Blocks": 0,                                          +
                                                                           "Shared Dirtied Blocks": 0,                                       +
                                                                           "Shared Written Blocks": 0,                                       +
                                                                           "Local Hit Blocks": 0,                                            +
                                                                           "Local Read Blocks": 0,                                           +
                                                                           "Local Dirtied Blocks": 0,                                        +
                                                                           "Local Written Blocks": 0,                                        +
                                                                           "Temp Read Blocks": 0,                                            +
                                                                           "Temp Written Blocks": 0,                                         +
                                                                           "Plans": [                                                        +
                                                                             {                                                               +
                                                                               "Node Type": "Seq Scan",                                      +
                                                                               "Parent Relationship": "Outer",                               +
                                                                               "Parallel Aware": false,                                      +
                                                                               "Relation Name": "info_type",                                 +
                                                                               "Alias": "it1",                                               +
                                                                               "Startup Cost": 0.00,                                         +
                                                                               "Total Cost": 0.05,                                           +
                                                                               "Plan Rows": 1,                                               +
                                                                               "Plan Width": 4,                                              +
                                                                               "Actual Startup Time": 0.041,                                 +
                                                                               "Actual Total Time": 0.046,                                   +
                                                                               "Actual Rows": 1,                                             +
                                                                               "Actual Loops": 1,                                            +
                                                                               "Filter": "((info)::text = 'rating'::text)",                  +
                                                                               "Rows Removed by Filter": 112,                                +
                                                                               "Shared Hit Blocks": 1,                                       +
                                                                               "Shared Read Blocks": 0,                                      +
                                                                               "Shared Dirtied Blocks": 0,                                   +
                                                                               "Shared Written Blocks": 0,                                   +
                                                                               "Local Hit Blocks": 0,                                        +
                                                                               "Local Read Blocks": 0,                                       +
                                                                               "Local Dirtied Blocks": 0,                                    +
                                                                               "Local Written Blocks": 0,                                    +
                                                                               "Temp Read Blocks": 0,                                        +
                                                                               "Temp Written Blocks": 0                                      +
                                                                             }                                                               +
                                                                           ]                                                                 +
                                                                         }                                                                   +
                                                                       ]                                                                     +
                                                                     }                                                                       +
                                                                   ]                                                                         +
                                                                 }                                                                           +
                                                               ]                                                                             +
                                                             },                                                                              +
                                                             {                                                                               +
                                                               "Node Type": "Index Scan",                                                    +
                                                               "Parent Relationship": "Inner",                                               +
                                                               "Parallel Aware": false,                                                      +
                                                               "Scan Direction": "Forward",                                                  +
                                                               "Index Name": "linked_movie_id_movie_link",                                   +
                                                               "Relation Name": "movie_link",                                                +
                                                               "Alias": "ml",                                                                +
                                                               "Startup Cost": 0.01,                                                         +
                                                               "Total Cost": 0.01,                                                           +
                                                               "Plan Rows": 2,                                                               +
                                                               "Plan Width": 12,                                                             +
                                                               "Actual Startup Time": 0.006,                                                 +
                                                               "Actual Total Time": 0.007,                                                   +
                                                               "Actual Rows": 0,                                                             +
                                                               "Actual Loops": 36749,                                                        +
                                                               "Index Cond": "(linked_movie_id = mi_idx2.movie_id)",                         +
                                                               "Rows Removed by Index Recheck": 0,                                           +
                                                               "Shared Hit Blocks": 74416,                                                   +
                                                               "Shared Read Blocks": 224,                                                    +
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
                                                           "Node Type": "Materialize",                                                       +
                                                           "Parent Relationship": "Inner",                                                   +
                                                           "Parallel Aware": false,                                                          +
                                                           "Startup Cost": 0.00,                                                             +
                                                           "Total Cost": 0.04,                                                               +
                                                           "Plan Rows": 3,                                                                   +
                                                           "Plan Width": 4,                                                                  +
                                                           "Actual Startup Time": 0.000,                                                     +
                                                           "Actual Total Time": 0.000,                                                       +
                                                           "Actual Rows": 2,                                                                 +
                                                           "Actual Loops": 1505,                                                             +
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
                                                               "Actual Startup Time": 0.019,                                                 +
                                                               "Actual Total Time": 0.033,                                                   +
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
                                                     },                                                                                      +
                                                     {                                                                                       +
                                                       "Node Type": "Index Scan",                                                            +
                                                       "Parent Relationship": "Inner",                                                       +
                                                       "Parallel Aware": false,                                                              +
                                                       "Scan Direction": "Forward",                                                          +
                                                       "Index Name": "title_idx_id",                                                         +
                                                       "Relation Name": "title",                                                             +
                                                       "Alias": "t2",                                                                        +
                                                       "Startup Cost": 0.01,                                                                 +
                                                       "Total Cost": 0.20,                                                                   +
                                                       "Plan Rows": 1,                                                                       +
                                                       "Plan Width": 25,                                                                     +
                                                       "Actual Startup Time": 20.668,                                                        +
                                                       "Actual Total Time": 20.668,                                                          +
                                                       "Actual Rows": 1,                                                                     +
                                                       "Actual Loops": 47,                                                                   +
                                                       "Index Cond": "(id = mi_idx2.movie_id)",                                              +
                                                       "Rows Removed by Index Recheck": 0,                                                   +
                                                       "Filter": "((production_year >= 2000) AND (production_year <= 2010))",                +
                                                       "Rows Removed by Filter": 0,                                                          +
                                                       "Shared Hit Blocks": 115,                                                             +
                                                       "Shared Read Blocks": 73,                                                             +
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
                                                 },                                                                                          +
                                                 {                                                                                           +
                                                   "Node Type": "Index Scan",                                                                +
                                                   "Parent Relationship": "Inner",                                                           +
                                                   "Parallel Aware": false,                                                                  +
                                                   "Scan Direction": "Forward",                                                              +
                                                   "Index Name": "movie_id_movie_companies",                                                 +
                                                   "Relation Name": "movie_companies",                                                       +
                                                   "Alias": "mc2",                                                                           +
                                                   "Startup Cost": 0.01,                                                                     +
                                                   "Total Cost": 0.09,                                                                       +
                                                   "Plan Rows": 2,                                                                           +
                                                   "Plan Width": 8,                                                                          +
                                                   "Actual Startup Time": 14.307,                                                            +
                                                   "Actual Total Time": 14.803,                                                              +
                                                   "Actual Rows": 2,                                                                         +
                                                   "Actual Loops": 29,                                                                       +
                                                   "Index Cond": "(movie_id = t2.id)",                                                       +
                                                   "Rows Removed by Index Recheck": 0,                                                       +
                                                   "Shared Hit Blocks": 84,                                                                  +
                                                   "Shared Read Blocks": 43,                                                                 +
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
                                             },                                                                                              +
                                             {                                                                                               +
                                               "Node Type": "Index Scan",                                                                    +
                                               "Parent Relationship": "Inner",                                                               +
                                               "Parallel Aware": false,                                                                      +
                                               "Scan Direction": "Forward",                                                                  +
                                               "Index Name": "company_name_pkey",                                                            +
                                               "Relation Name": "company_name",                                                              +
                                               "Alias": "cn2",                                                                               +
                                               "Startup Cost": 0.01,                                                                         +
                                               "Total Cost": 0.02,                                                                           +
                                               "Plan Rows": 1,                                                                               +
                                               "Plan Width": 23,                                                                             +
                                               "Actual Startup Time": 7.898,                                                                 +
                                               "Actual Total Time": 7.898,                                                                   +
                                               "Actual Rows": 1,                                                                             +
                                               "Actual Loops": 55,                                                                           +
                                               "Index Cond": "(id = mc2.company_id)",                                                        +
                                               "Rows Removed by Index Recheck": 0,                                                           +
                                               "Shared Hit Blocks": 183,                                                                     +
                                               "Shared Read Blocks": 37,                                                                     +
                                               "Shared Dirtied Blocks": 0,                                                                   +
                                               "Shared Written Blocks": 0,                                                                   +
                                               "Local Hit Blocks": 0,                                                                        +
                                               "Local Read Blocks": 0,                                                                       +
                                               "Local Dirtied Blocks": 0,                                                                    +
                                               "Local Written Blocks": 0,                                                                    +
                                               "Temp Read Blocks": 0,                                                                        +
                                               "Temp Written Blocks": 0                                                                      +
                                             }                                                                                               +
                                           ]                                                                                                 +
                                         },                                                                                                  +
                                         {                                                                                                   +
                                           "Node Type": "Index Scan",                                                                        +
                                           "Parent Relationship": "Inner",                                                                   +
                                           "Parallel Aware": false,                                                                          +
                                           "Scan Direction": "Forward",                                                                      +
                                           "Index Name": "title_idx_id",                                                                     +
                                           "Relation Name": "title",                                                                         +
                                           "Alias": "t1",                                                                                    +
                                           "Startup Cost": 0.01,                                                                             +
                                           "Total Cost": 2.88,                                                                               +
                                           "Plan Rows": 1,                                                                                   +
                                           "Plan Width": 25,                                                                                 +
                                           "Actual Startup Time": 7.093,                                                                     +
                                           "Actual Total Time": 7.093,                                                                       +
                                           "Actual Rows": 1,                                                                                 +
                                           "Actual Loops": 55,                                                                               +
                                           "Index Cond": "(id = ml.movie_id)",                                                               +
                                           "Rows Removed by Index Recheck": 0,                                                               +
                                           "Shared Hit Blocks": 193,                                                                         +
                                           "Shared Read Blocks": 27,                                                                         +
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
                                       "Alias": "mi_idx1",                                                                                   +
                                       "Startup Cost": 0.01,                                                                                 +
                                       "Total Cost": 0.03,                                                                                   +
                                       "Plan Rows": 3,                                                                                       +
                                       "Plan Width": 14,                                                                                     +
                                       "Actual Startup Time": 2.536,                                                                         +
                                       "Actual Total Time": 2.539,                                                                           +
                                       "Actual Rows": 3,                                                                                     +
                                       "Actual Loops": 55,                                                                                   +
                                       "Index Cond": "(movie_id = t1.id)",                                                                   +
                                       "Rows Removed by Index Recheck": 0,                                                                   +
                                       "Shared Hit Blocks": 200,                                                                             +
                                       "Shared Read Blocks": 16,                                                                             +
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
                             }                                                                                                               +
                           ]                                                                                                                 +
                         },                                                                                                                  +
                         {                                                                                                                   +
                           "Node Type": "Index Scan",                                                                                        +
                           "Parent Relationship": "Inner",                                                                                   +
                           "Parallel Aware": false,                                                                                          +
                           "Scan Direction": "Forward",                                                                                      +
                           "Index Name": "movie_id_movie_companies",                                                                         +
                           "Relation Name": "movie_companies",                                                                               +
                           "Alias": "mc1",                                                                                                   +
                           "Startup Cost": 0.01,                                                                                             +
                           "Total Cost": 0.05,                                                                                               +
                           "Plan Rows": 2,                                                                                                   +
                           "Plan Width": 8,                                                                                                  +
                           "Actual Startup Time": 4.239,                                                                                     +
                           "Actual Total Time": 5.123,                                                                                       +
                           "Actual Rows": 3,                                                                                                 +
                           "Actual Loops": 51,                                                                                               +
                           "Index Cond": "(movie_id = t1.id)",                                                                               +
                           "Rows Removed by Index Recheck": 0,                                                                               +
                           "Shared Hit Blocks": 224,                                                                                         +
                           "Shared Read Blocks": 29,                                                                                         +
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
                       "Index Name": "company_name_pkey",                                                                                    +
                       "Relation Name": "company_name",                                                                                      +
                       "Alias": "cn1",                                                                                                       +
                       "Startup Cost": 0.01,                                                                                                 +
                       "Total Cost": 0.02,                                                                                                   +
                       "Plan Rows": 1,                                                                                                       +
                       "Plan Width": 23,                                                                                                     +
                       "Actual Startup Time": 2.793,                                                                                         +
                       "Actual Total Time": 2.793,                                                                                           +
                       "Actual Rows": 1,                                                                                                     +
                       "Actual Loops": 150,                                                                                                  +
                       "Index Cond": "(id = mc1.company_id)",                                                                                +
                       "Rows Removed by Index Recheck": 0,                                                                                   +
                       "Filter": "((country_code)::text <> '[us]'::text)",                                                                   +
                       "Rows Removed by Filter": 0,                                                                                          +
                       "Shared Hit Blocks": 562,                                                                                             +
                       "Shared Read Blocks": 38,                                                                                             +
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
             }                                                                                                                               +
           ]                                                                                                                                 +
         }                                                                                                                                   +
       ]                                                                                                                                     +
     },                                                                                                                                      +
     "Planning Time": 6348.184,                                                                                                              +
     "Triggers": [                                                                                                                           +
     ],                                                                                                                                      +
     "Execution Time": 4721.164                                                                                                              +
   }                                                                                                                                         +
 ]
(1 row)

