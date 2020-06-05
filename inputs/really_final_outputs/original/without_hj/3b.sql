                            QUERY PLAN                            
------------------------------------------------------------------
 [                                                               +
   {                                                             +
     "Plan": {                                                   +
       "Node Type": "Aggregate",                                 +
       "Strategy": "Plain",                                      +
       "Partial Mode": "Simple",                                 +
       "Parallel Aware": false,                                  +
       "Startup Cost": 7996.58,                                  +
       "Total Cost": 7996.58,                                    +
       "Plan Rows": 1,                                           +
       "Plan Width": 32,                                         +
       "Actual Startup Time": 42765.284,                         +
       "Actual Total Time": 42765.284,                           +
       "Actual Rows": 1,                                         +
       "Actual Loops": 1,                                        +
       "Shared Hit Blocks": 45973,                               +
       "Shared Read Blocks": 20174,                              +
       "Shared Dirtied Blocks": 0,                               +
       "Shared Written Blocks": 0,                               +
       "Local Hit Blocks": 0,                                    +
       "Local Read Blocks": 0,                                   +
       "Local Dirtied Blocks": 0,                                +
       "Local Written Blocks": 0,                                +
       "Temp Read Blocks": 0,                                    +
       "Temp Written Blocks": 0,                                 +
       "Plans": [                                                +
         {                                                       +
           "Node Type": "Nested Loop",                           +
           "Parent Relationship": "Outer",                       +
           "Parallel Aware": false,                              +
           "Join Type": "Inner",                                 +
           "Startup Cost": 0.04,                                 +
           "Total Cost": 7996.58,                                +
           "Plan Rows": 2,                                       +
           "Plan Width": 17,                                     +
           "Actual Startup Time": 5556.479,                      +
           "Actual Total Time": 42765.187,                       +
           "Actual Rows": 5,                                     +
           "Actual Loops": 1,                                    +
           "Inner Unique": false,                                +
           "Join Filter": "(t.id = mi.movie_id)",                +
           "Rows Removed by Join Filter": 0,                     +
           "Shared Hit Blocks": 45973,                           +
           "Shared Read Blocks": 20174,                          +
           "Shared Dirtied Blocks": 0,                           +
           "Shared Written Blocks": 0,                           +
           "Local Hit Blocks": 0,                                +
           "Local Read Blocks": 0,                               +
           "Local Dirtied Blocks": 0,                            +
           "Local Written Blocks": 0,                            +
           "Temp Read Blocks": 0,                                +
           "Temp Written Blocks": 0,                             +
           "Plans": [                                            +
             {                                                   +
               "Node Type": "Nested Loop",                       +
               "Parent Relationship": "Outer",                   +
               "Parallel Aware": false,                          +
               "Join Type": "Inner",                             +
               "Startup Cost": 0.03,                             +
               "Total Cost": 7943.01,                            +
               "Plan Rows": 350,                                 +
               "Plan Width": 25,                                 +
               "Actual Startup Time": 1278.811,                  +
               "Actual Total Time": 22452.250,                   +
               "Actual Rows": 405,                               +
               "Actual Loops": 1,                                +
               "Inner Unique": true,                             +
               "Shared Hit Blocks": 43507,                       +
               "Shared Read Blocks": 16427,                      +
               "Shared Dirtied Blocks": 0,                       +
               "Shared Written Blocks": 0,                       +
               "Local Hit Blocks": 0,                            +
               "Local Read Blocks": 0,                           +
               "Local Dirtied Blocks": 0,                        +
               "Local Written Blocks": 0,                        +
               "Temp Read Blocks": 0,                            +
               "Temp Written Blocks": 0,                         +
               "Plans": [                                        +
                 {                                               +
                   "Node Type": "Nested Loop",                   +
                   "Parent Relationship": "Outer",               +
                   "Parallel Aware": false,                      +
                   "Join Type": "Inner",                         +
                   "Startup Cost": 0.01,                         +
                   "Total Cost": 7846.64,                        +
                   "Plan Rows": 2259,                            +
                   "Plan Width": 4,                              +
                   "Actual Startup Time": 30.116,                +
                   "Actual Total Time": 6196.480,                +
                   "Actual Rows": 12951,                         +
                   "Actual Loops": 1,                            +
                   "Inner Unique": false,                        +
                   "Shared Hit Blocks": 1329,                    +
                   "Shared Read Blocks": 6728,                   +
                   "Shared Dirtied Blocks": 0,                   +
                   "Shared Written Blocks": 0,                   +
                   "Local Hit Blocks": 0,                        +
                   "Local Read Blocks": 0,                       +
                   "Local Dirtied Blocks": 0,                    +
                   "Local Written Blocks": 0,                    +
                   "Temp Read Blocks": 0,                        +
                   "Temp Written Blocks": 0,                     +
                   "Plans": [                                    +
                     {                                           +
                       "Node Type": "Seq Scan",                  +
                       "Parent Relationship": "Outer",           +
                       "Parallel Aware": false,                  +
                       "Relation Name": "keyword",               +
                       "Alias": "k",                             +
                       "Startup Cost": 0.00,                     +
                       "Total Cost": 49.46,                      +
                       "Plan Rows": 67,                          +
                       "Plan Width": 4,                          +
                       "Actual Startup Time": 7.700,             +
                       "Actual Total Time": 248.684,             +
                       "Actual Rows": 30,                        +
                       "Actual Loops": 1,                        +
                       "Filter": "(keyword ~~ '%sequel%'::text)",+
                       "Rows Removed by Filter": 134140,         +
                       "Shared Hit Blocks": 2,                   +
                       "Shared Read Blocks": 947,                +
                       "Shared Dirtied Blocks": 0,               +
                       "Shared Written Blocks": 0,               +
                       "Local Hit Blocks": 0,                    +
                       "Local Read Blocks": 0,                   +
                       "Local Dirtied Blocks": 0,                +
                       "Local Written Blocks": 0,                +
                       "Temp Read Blocks": 0,                    +
                       "Temp Written Blocks": 0                  +
                     },                                          +
                     {                                           +
                       "Node Type": "Index Scan",                +
                       "Parent Relationship": "Inner",           +
                       "Parallel Aware": false,                  +
                       "Scan Direction": "Forward",              +
                       "Index Name": "keyword_id_movie_keyword", +
                       "Relation Name": "movie_keyword",         +
                       "Alias": "mk",                            +
                       "Startup Cost": 0.01,                     +
                       "Total Cost": 116.37,                     +
                       "Plan Rows": 39,                          +
                       "Plan Width": 8,                          +
                       "Actual Startup Time": 14.393,            +
                       "Actual Total Time": 197.879,             +
                       "Actual Rows": 432,                       +
                       "Actual Loops": 30,                       +
                       "Index Cond": "(keyword_id = k.id)",      +
                       "Rows Removed by Index Recheck": 0,       +
                       "Shared Hit Blocks": 1327,                +
                       "Shared Read Blocks": 5781,               +
                       "Shared Dirtied Blocks": 0,               +
                       "Shared Written Blocks": 0,               +
                       "Local Hit Blocks": 0,                    +
                       "Local Read Blocks": 0,                   +
                       "Local Dirtied Blocks": 0,                +
                       "Local Written Blocks": 0,                +
                       "Temp Read Blocks": 0,                    +
                       "Temp Written Blocks": 0                  +
                     }                                           +
                   ]                                             +
                 },                                              +
                 {                                               +
                   "Node Type": "Index Scan",                    +
                   "Parent Relationship": "Inner",               +
                   "Parallel Aware": false,                      +
                   "Scan Direction": "Forward",                  +
                   "Index Name": "title_idx_id",                 +
                   "Relation Name": "title",                     +
                   "Alias": "t",                                 +
                   "Startup Cost": 0.01,                         +
                   "Total Cost": 0.04,                           +
                   "Plan Rows": 1,                               +
                   "Plan Width": 21,                             +
                   "Actual Startup Time": 1.253,                 +
                   "Actual Total Time": 1.253,                   +
                   "Actual Rows": 0,                             +
                   "Actual Loops": 12951,                        +
                   "Index Cond": "(id = mk.movie_id)",           +
                   "Rows Removed by Index Recheck": 0,           +
                   "Filter": "(production_year > 2010)",         +
                   "Rows Removed by Filter": 1,                  +
                   "Shared Hit Blocks": 42178,                   +
                   "Shared Read Blocks": 9699,                   +
                   "Shared Dirtied Blocks": 0,                   +
                   "Shared Written Blocks": 0,                   +
                   "Local Hit Blocks": 0,                        +
                   "Local Read Blocks": 0,                       +
                   "Local Dirtied Blocks": 0,                    +
                   "Local Written Blocks": 0,                    +
                   "Temp Read Blocks": 0,                        +
                   "Temp Written Blocks": 0                      +
                 }                                               +
               ]                                                 +
             },                                                  +
             {                                                   +
               "Node Type": "Index Scan",                        +
               "Parent Relationship": "Inner",                   +
               "Parallel Aware": false,                          +
               "Scan Direction": "Forward",                      +
               "Index Name": "movie_id_movie_info",              +
               "Relation Name": "movie_info",                    +
               "Alias": "mi",                                    +
               "Startup Cost": 0.01,                             +
               "Total Cost": 0.15,                               +
               "Plan Rows": 1,                                   +
               "Plan Width": 4,                                  +
               "Actual Startup Time": 49.969,                    +
               "Actual Total Time": 50.152,                      +
               "Actual Rows": 0,                                 +
               "Actual Loops": 405,                              +
               "Index Cond": "(movie_id = mk.movie_id)",         +
               "Rows Removed by Index Recheck": 0,               +
               "Filter": "(info = 'Bulgaria'::text)",            +
               "Rows Removed by Filter": 63,                     +
               "Shared Hit Blocks": 2466,                        +
               "Shared Read Blocks": 3747,                       +
               "Shared Dirtied Blocks": 0,                       +
               "Shared Written Blocks": 0,                       +
               "Local Hit Blocks": 0,                            +
               "Local Read Blocks": 0,                           +
               "Local Dirtied Blocks": 0,                        +
               "Local Written Blocks": 0,                        +
               "Temp Read Blocks": 0,                            +
               "Temp Written Blocks": 0                          +
             }                                                   +
           ]                                                     +
         }                                                       +
       ]                                                         +
     },                                                          +
     "Planning Time": 2208.978,                                  +
     "Triggers": [                                               +
     ],                                                          +
     "Execution Time": 42779.206                                 +
   }                                                             +
 ]
(1 row)

