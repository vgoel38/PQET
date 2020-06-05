                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                             +
   {                                                                                                                                                                           +
     "Plan": {                                                                                                                                                                 +
       "Node Type": "Aggregate",                                                                                                                                               +
       "Strategy": "Plain",                                                                                                                                                    +
       "Partial Mode": "Simple",                                                                                                                                               +
       "Parallel Aware": false,                                                                                                                                                +
       "Startup Cost": 2209.20,                                                                                                                                                +
       "Total Cost": 2209.20,                                                                                                                                                  +
       "Plan Rows": 1,                                                                                                                                                         +
       "Plan Width": 64,                                                                                                                                                       +
       "Actual Startup Time": 69764.073,                                                                                                                                       +
       "Actual Total Time": 69764.074,                                                                                                                                         +
       "Actual Rows": 1,                                                                                                                                                       +
       "Actual Loops": 1,                                                                                                                                                      +
       "Shared Hit Blocks": 27355,                                                                                                                                             +
       "Shared Read Blocks": 29713,                                                                                                                                            +
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
           "Node Type": "Nested Loop",                                                                                                                                         +
           "Parent Relationship": "Outer",                                                                                                                                     +
           "Parallel Aware": false,                                                                                                                                            +
           "Join Type": "Inner",                                                                                                                                               +
           "Startup Cost": 1722.91,                                                                                                                                            +
           "Total Cost": 2209.20,                                                                                                                                              +
           "Plan Rows": 1,                                                                                                                                                     +
           "Plan Width": 33,                                                                                                                                                   +
           "Actual Startup Time": 21167.837,                                                                                                                                   +
           "Actual Total Time": 69763.997,                                                                                                                                     +
           "Actual Rows": 6,                                                                                                                                                   +
           "Actual Loops": 1,                                                                                                                                                  +
           "Inner Unique": true,                                                                                                                                               +
           "Shared Hit Blocks": 27355,                                                                                                                                         +
           "Shared Read Blocks": 29713,                                                                                                                                        +
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
               "Node Type": "Nested Loop",                                                                                                                                     +
               "Parent Relationship": "Outer",                                                                                                                                 +
               "Parallel Aware": false,                                                                                                                                        +
               "Join Type": "Inner",                                                                                                                                           +
               "Startup Cost": 1722.90,                                                                                                                                        +
               "Total Cost": 2209.18,                                                                                                                                          +
               "Plan Rows": 1,                                                                                                                                                 +
               "Plan Width": 37,                                                                                                                                               +
               "Actual Startup Time": 21167.801,                                                                                                                               +
               "Actual Total Time": 69763.906,                                                                                                                                 +
               "Actual Rows": 6,                                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                              +
               "Inner Unique": true,                                                                                                                                           +
               "Shared Hit Blocks": 27343,                                                                                                                                     +
               "Shared Read Blocks": 29713,                                                                                                                                    +
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
                   "Node Type": "Nested Loop",                                                                                                                                 +
                   "Parent Relationship": "Outer",                                                                                                                             +
                   "Parallel Aware": false,                                                                                                                                    +
                   "Join Type": "Inner",                                                                                                                                       +
                   "Startup Cost": 1722.89,                                                                                                                                    +
                   "Total Cost": 2207.91,                                                                                                                                      +
                   "Plan Rows": 1,                                                                                                                                             +
                   "Plan Width": 45,                                                                                                                                           +
                   "Actual Startup Time": 19861.256,                                                                                                                           +
                   "Actual Total Time": 69302.159,                                                                                                                             +
                   "Actual Rows": 171,                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                          +
                   "Inner Unique": false,                                                                                                                                      +
                   "Shared Hit Blocks": 26742,                                                                                                                                 +
                   "Shared Read Blocks": 29630,                                                                                                                                +
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
                       "Node Type": "Nested Loop",                                                                                                                             +
                       "Parent Relationship": "Outer",                                                                                                                         +
                       "Parallel Aware": false,                                                                                                                                +
                       "Join Type": "Inner",                                                                                                                                   +
                       "Startup Cost": 1722.88,                                                                                                                                +
                       "Total Cost": 2205.56,                                                                                                                                  +
                       "Plan Rows": 1,                                                                                                                                         +
                       "Plan Width": 25,                                                                                                                                       +
                       "Actual Startup Time": 19835.837,                                                                                                                       +
                       "Actual Total Time": 68471.113,                                                                                                                         +
                       "Actual Rows": 104,                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                      +
                       "Inner Unique": false,                                                                                                                                  +
                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                                  +
                       "Rows Removed by Join Filter": 0,                                                                                                                       +
                       "Shared Hit Blocks": 26423,                                                                                                                             +
                       "Shared Read Blocks": 29532,                                                                                                                            +
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
                           "Node Type": "Nested Loop",                                                                                                                         +
                           "Parent Relationship": "Outer",                                                                                                                     +
                           "Parallel Aware": false,                                                                                                                            +
                           "Join Type": "Inner",                                                                                                                               +
                           "Startup Cost": 1722.86,                                                                                                                            +
                           "Total Cost": 1849.42,                                                                                                                              +
                           "Plan Rows": 1,                                                                                                                                     +
                           "Plan Width": 25,                                                                                                                                   +
                           "Actual Startup Time": 19803.405,                                                                                                                   +
                           "Actual Total Time": 67661.670,                                                                                                                     +
                           "Actual Rows": 4,                                                                                                                                   +
                           "Actual Loops": 1,                                                                                                                                  +
                           "Inner Unique": true,                                                                                                                               +
                           "Shared Hit Blocks": 26380,                                                                                                                         +
                           "Shared Read Blocks": 29425,                                                                                                                        +
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
                               "Startup Cost": 1722.85,                                                                                                                        +
                               "Total Cost": 1724.01,                                                                                                                          +
                               "Plan Rows": 21,                                                                                                                                +
                               "Plan Width": 4,                                                                                                                                +
                               "Actual Startup Time": 1125.460,                                                                                                                +
                               "Actual Total Time": 1155.012,                                                                                                                  +
                               "Actual Rows": 8495,                                                                                                                            +
                               "Actual Loops": 1,                                                                                                                              +
                               "Inner Unique": false,                                                                                                                          +
                               "Merge Cond": "(cn.id = mc.company_id)",                                                                                                        +
                               "Shared Hit Blocks": 9,                                                                                                                         +
                               "Shared Read Blocks": 21778,                                                                                                                    +
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
                                   "Startup Cost": 141.74,                                                                                                                     +
                                   "Total Cost": 142.27,                                                                                                                       +
                                   "Plan Rows": 6752,                                                                                                                          +
                                   "Plan Width": 4,                                                                                                                            +
                                   "Actual Startup Time": 235.147,                                                                                                             +
                                   "Actual Total Time": 236.098,                                                                                                               +
                                   "Actual Rows": 2408,                                                                                                                        +
                                   "Actual Loops": 1,                                                                                                                          +
                                   "Sort Key": ["cn.id"],                                                                                                                      +
                                   "Sort Method": "quicksort",                                                                                                                 +
                                   "Sort Space Used": 509,                                                                                                                     +
                                   "Sort Space Type": "Memory",                                                                                                                +
                                   "Shared Hit Blocks": 6,                                                                                                                     +
                                   "Shared Read Blocks": 2992,                                                                                                                 +
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
                                       "Relation Name": "company_name",                                                                                                        +
                                       "Alias": "cn",                                                                                                                          +
                                       "Startup Cost": 0.00,                                                                                                                   +
                                       "Total Cost": 128.41,                                                                                                                   +
                                       "Plan Rows": 6752,                                                                                                                      +
                                       "Plan Width": 4,                                                                                                                        +
                                       "Actual Startup Time": 20.737,                                                                                                          +
                                       "Actual Total Time": 203.333,                                                                                                           +
                                       "Actual Rows": 6752,                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                      +
                                       "Filter": "((country_code)::text = '[jp]'::text)",                                                                                      +
                                       "Rows Removed by Filter": 228245,                                                                                                       +
                                       "Shared Hit Blocks": 2,                                                                                                                 +
                                       "Shared Read Blocks": 2992,                                                                                                             +
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
                                 },                                                                                                                                            +
                                 {                                                                                                                                             +
                                   "Node Type": "Sort",                                                                                                                        +
                                   "Parent Relationship": "Inner",                                                                                                             +
                                   "Parallel Aware": false,                                                                                                                    +
                                   "Startup Cost": 1581.10,                                                                                                                    +
                                   "Total Cost": 1581.16,                                                                                                                      +
                                   "Plan Rows": 720,                                                                                                                           +
                                   "Plan Width": 8,                                                                                                                            +
                                   "Actual Startup Time": 890.305,                                                                                                             +
                                   "Actual Total Time": 897.376,                                                                                                               +
                                   "Actual Rows": 8569,                                                                                                                        +
                                   "Actual Loops": 1,                                                                                                                          +
                                   "Sort Key": ["mc.company_id"],                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                                 +
                                   "Sort Space Used": 786,                                                                                                                     +
                                   "Sort Space Type": "Memory",                                                                                                                +
                                   "Shared Hit Blocks": 3,                                                                                                                     +
                                   "Shared Read Blocks": 18786,                                                                                                                +
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
                                       "Relation Name": "movie_companies",                                                                                                     +
                                       "Alias": "mc",                                                                                                                          +
                                       "Startup Cost": 0.00,                                                                                                                   +
                                       "Total Cost": 1580.04,                                                                                                                  +
                                       "Plan Rows": 720,                                                                                                                       +
                                       "Plan Width": 8,                                                                                                                        +
                                       "Actual Startup Time": 2.316,                                                                                                           +
                                       "Actual Total Time": 887.068,                                                                                                           +
                                       "Actual Rows": 8569,                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                      +
                                       "Filter": "((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))",+
                                       "Rows Removed by Filter": 2600560,                                                                                                      +
                                       "Shared Hit Blocks": 3,                                                                                                                 +
                                       "Shared Read Blocks": 18786,                                                                                                            +
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
                             },                                                                                                                                                +
                             {                                                                                                                                                 +
                               "Node Type": "Index Scan",                                                                                                                      +
                               "Parent Relationship": "Inner",                                                                                                                 +
                               "Parallel Aware": false,                                                                                                                        +
                               "Scan Direction": "Forward",                                                                                                                    +
                               "Index Name": "title_idx_id",                                                                                                                   +
                               "Relation Name": "title",                                                                                                                       +
                               "Alias": "t",                                                                                                                                   +
                               "Startup Cost": 0.01,                                                                                                                           +
                               "Total Cost": 5.96,                                                                                                                             +
                               "Plan Rows": 1,                                                                                                                                 +
                               "Plan Width": 21,                                                                                                                               +
                               "Actual Startup Time": 7.825,                                                                                                                   +
                               "Actual Total Time": 7.825,                                                                                                                     +
                               "Actual Rows": 0,                                                                                                                               +
                               "Actual Loops": 8495,                                                                                                                           +
                               "Index Cond": "(id = mc.movie_id)",                                                                                                             +
                               "Rows Removed by Index Recheck": 0,                                                                                                             +
                               "Filter": "((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))", +
                               "Rows Removed by Filter": 1,                                                                                                                    +
                               "Shared Hit Blocks": 26371,                                                                                                                     +
                               "Shared Read Blocks": 7647,                                                                                                                     +
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
                         },                                                                                                                                                    +
                         {                                                                                                                                                     +
                           "Node Type": "Index Scan",                                                                                                                          +
                           "Parent Relationship": "Inner",                                                                                                                     +
                           "Parallel Aware": false,                                                                                                                            +
                           "Scan Direction": "Forward",                                                                                                                        +
                           "Index Name": "movie_id_cast_info",                                                                                                                 +
                           "Relation Name": "cast_info",                                                                                                                       +
                           "Alias": "ci",                                                                                                                                      +
                           "Startup Cost": 0.02,                                                                                                                               +
                           "Total Cost": 71.23,                                                                                                                                +
                           "Plan Rows": 1,                                                                                                                                     +
                           "Plan Width": 12,                                                                                                                                   +
                           "Actual Startup Time": 37.751,                                                                                                                      +
                           "Actual Total Time": 202.283,                                                                                                                       +
                           "Actual Rows": 26,                                                                                                                                  +
                           "Actual Loops": 4,                                                                                                                                  +
                           "Index Cond": "(movie_id = mc.movie_id)",                                                                                                           +
                           "Rows Removed by Index Recheck": 0,                                                                                                                 +
                           "Filter": "(note = '(voice: English version)'::text)",                                                                                              +
                           "Rows Removed by Filter": 17,                                                                                                                       +
                           "Shared Hit Blocks": 43,                                                                                                                            +
                           "Shared Read Blocks": 107,                                                                                                                          +
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
                     },                                                                                                                                                        +
                     {                                                                                                                                                         +
                       "Node Type": "Index Scan",                                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                                         +
                       "Parallel Aware": false,                                                                                                                                +
                       "Scan Direction": "Forward",                                                                                                                            +
                       "Index Name": "person_id_aka_name",                                                                                                                     +
                       "Relation Name": "aka_name",                                                                                                                            +
                       "Alias": "an",                                                                                                                                          +
                       "Startup Cost": 0.01,                                                                                                                                   +
                       "Total Cost": 0.47,                                                                                                                                     +
                       "Plan Rows": 2,                                                                                                                                         +
                       "Plan Width": 20,                                                                                                                                       +
                       "Actual Startup Time": 6.949,                                                                                                                           +
                       "Actual Total Time": 7.983,                                                                                                                             +
                       "Actual Rows": 2,                                                                                                                                       +
                       "Actual Loops": 104,                                                                                                                                    +
                       "Index Cond": "(person_id = ci.person_id)",                                                                                                             +
                       "Rows Removed by Index Recheck": 0,                                                                                                                     +
                       "Shared Hit Blocks": 319,                                                                                                                               +
                       "Shared Read Blocks": 98,                                                                                                                               +
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
                   "Node Type": "Index Scan",                                                                                                                                  +
                   "Parent Relationship": "Inner",                                                                                                                             +
                   "Parallel Aware": false,                                                                                                                                    +
                   "Scan Direction": "Forward",                                                                                                                                +
                   "Index Name": "name_pkey",                                                                                                                                  +
                   "Relation Name": "name",                                                                                                                                    +
                   "Alias": "n",                                                                                                                                               +
                   "Startup Cost": 0.01,                                                                                                                                       +
                   "Total Cost": 0.25,                                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                                             +
                   "Plan Width": 4,                                                                                                                                            +
                   "Actual Startup Time": 2.697,                                                                                                                               +
                   "Actual Total Time": 2.697,                                                                                                                                 +
                   "Actual Rows": 0,                                                                                                                                           +
                   "Actual Loops": 171,                                                                                                                                        +
                   "Index Cond": "(id = an.person_id)",                                                                                                                        +
                   "Rows Removed by Index Recheck": 0,                                                                                                                         +
                   "Filter": "((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))",                                                                                           +
                   "Rows Removed by Filter": 1,                                                                                                                                +
                   "Shared Hit Blocks": 601,                                                                                                                                   +
                   "Shared Read Blocks": 83,                                                                                                                                   +
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
             },                                                                                                                                                                +
             {                                                                                                                                                                 +
               "Node Type": "Index Scan",                                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                                                 +
               "Parallel Aware": false,                                                                                                                                        +
               "Scan Direction": "Forward",                                                                                                                                    +
               "Index Name": "role_type_pkey",                                                                                                                                 +
               "Relation Name": "role_type",                                                                                                                                   +
               "Alias": "rt",                                                                                                                                                  +
               "Startup Cost": 0.00,                                                                                                                                           +
               "Total Cost": 0.00,                                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                                 +
               "Plan Width": 4,                                                                                                                                                +
               "Actual Startup Time": 0.010,                                                                                                                                   +
               "Actual Total Time": 0.010,                                                                                                                                     +
               "Actual Rows": 1,                                                                                                                                               +
               "Actual Loops": 6,                                                                                                                                              +
               "Index Cond": "(id = ci.role_id)",                                                                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                                                                             +
               "Filter": "((role)::text = 'actress'::text)",                                                                                                                   +
               "Rows Removed by Filter": 0,                                                                                                                                    +
               "Shared Hit Blocks": 12,                                                                                                                                        +
               "Shared Read Blocks": 0,                                                                                                                                        +
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
     },                                                                                                                                                                        +
     "Planning Time": 4491.859,                                                                                                                                                +
     "Triggers": [                                                                                                                                                             +
     ],                                                                                                                                                                        +
     "Execution Time": 69764.871                                                                                                                                               +
   }                                                                                                                                                                           +
 ]
(1 row)

