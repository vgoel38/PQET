                                                      QUERY PLAN                                                       
-----------------------------------------------------------------------------------------------------------------------
 [                                                                                                                    +
   {                                                                                                                  +
     "Plan": {                                                                                                        +
       "Node Type": "Aggregate",                                                                                      +
       "Strategy": "Plain",                                                                                           +
       "Partial Mode": "Simple",                                                                                      +
       "Parallel Aware": false,                                                                                       +
       "Startup Cost": 102412.76,                                                                                     +
       "Total Cost": 102412.76,                                                                                       +
       "Plan Rows": 1,                                                                                                +
       "Plan Width": 96,                                                                                              +
       "Actual Startup Time": 33450.893,                                                                              +
       "Actual Total Time": 33450.893,                                                                                +
       "Actual Rows": 1,                                                                                              +
       "Actual Loops": 1,                                                                                             +
       "Shared Hit Blocks": 16,                                                                                       +
       "Shared Read Blocks": 514600,                                                                                  +
       "Shared Dirtied Blocks": 0,                                                                                    +
       "Shared Written Blocks": 0,                                                                                    +
       "Local Hit Blocks": 0,                                                                                         +
       "Local Read Blocks": 0,                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                     +
       "Local Written Blocks": 0,                                                                                     +
       "Temp Read Blocks": 0,                                                                                         +
       "Temp Written Blocks": 0,                                                                                      +
       "Plans": [                                                                                                     +
         {                                                                                                            +
           "Node Type": "Merge Join",                                                                                 +
           "Parent Relationship": "Outer",                                                                            +
           "Parallel Aware": false,                                                                                   +
           "Join Type": "Inner",                                                                                      +
           "Startup Cost": 102412.72,                                                                                 +
           "Total Cost": 102412.76,                                                                                   +
           "Plan Rows": 2,                                                                                            +
           "Plan Width": 65,                                                                                          +
           "Actual Startup Time": 33430.777,                                                                          +
           "Actual Total Time": 33431.251,                                                                            +
           "Actual Rows": 410,                                                                                        +
           "Actual Loops": 1,                                                                                         +
           "Inner Unique": true,                                                                                      +
           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                +
           "Shared Hit Blocks": 16,                                                                                   +
           "Shared Read Blocks": 514600,                                                                              +
           "Shared Dirtied Blocks": 0,                                                                                +
           "Shared Written Blocks": 0,                                                                                +
           "Local Hit Blocks": 0,                                                                                     +
           "Local Read Blocks": 0,                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                 +
           "Local Written Blocks": 0,                                                                                 +
           "Temp Read Blocks": 0,                                                                                     +
           "Temp Written Blocks": 0,                                                                                  +
           "Plans": [                                                                                                 +
             {                                                                                                        +
               "Node Type": "Sort",                                                                                   +
               "Parent Relationship": "Outer",                                                                        +
               "Parallel Aware": false,                                                                               +
               "Startup Cost": 102412.67,                                                                             +
               "Total Cost": 102412.69,                                                                               +
               "Plan Rows": 239,                                                                                      +
               "Plan Width": 69,                                                                                      +
               "Actual Startup Time": 33412.283,                                                                      +
               "Actual Total Time": 33420.206,                                                                        +
               "Actual Rows": 73781,                                                                                  +
               "Actual Loops": 1,                                                                                     +
               "Sort Key": ["mi.info_type_id"],                                                                       +
               "Sort Method": "quicksort",                                                                            +
               "Sort Space Used": 20558,                                                                              +
               "Sort Space Type": "Memory",                                                                           +
               "Shared Hit Blocks": 15,                                                                               +
               "Shared Read Blocks": 514600,                                                                          +
               "Shared Dirtied Blocks": 0,                                                                            +
               "Shared Written Blocks": 0,                                                                            +
               "Local Hit Blocks": 0,                                                                                 +
               "Local Read Blocks": 0,                                                                                +
               "Local Dirtied Blocks": 0,                                                                             +
               "Local Written Blocks": 0,                                                                             +
               "Temp Read Blocks": 0,                                                                                 +
               "Temp Written Blocks": 0,                                                                              +
               "Plans": [                                                                                             +
                 {                                                                                                    +
                   "Node Type": "Merge Join",                                                                         +
                   "Parent Relationship": "Outer",                                                                    +
                   "Parallel Aware": false,                                                                           +
                   "Join Type": "Inner",                                                                              +
                   "Startup Cost": 99714.26,                                                                          +
                   "Total Cost": 102412.38,                                                                           +
                   "Plan Rows": 239,                                                                                  +
                   "Plan Width": 69,                                                                                  +
                   "Actual Startup Time": 30098.368,                                                                  +
                   "Actual Total Time": 33374.596,                                                                    +
                   "Actual Rows": 82408,                                                                              +
                   "Actual Loops": 1,                                                                                 +
                   "Inner Unique": false,                                                                             +
                   "Merge Cond": "(t.id = mi.movie_id)",                                                              +
                   "Shared Hit Blocks": 11,                                                                           +
                   "Shared Read Blocks": 514600,                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                        +
                   "Shared Written Blocks": 0,                                                                        +
                   "Local Hit Blocks": 0,                                                                             +
                   "Local Read Blocks": 0,                                                                            +
                   "Local Dirtied Blocks": 0,                                                                         +
                   "Local Written Blocks": 0,                                                                         +
                   "Temp Read Blocks": 0,                                                                             +
                   "Temp Written Blocks": 0,                                                                          +
                   "Plans": [                                                                                         +
                     {                                                                                                +
                       "Node Type": "Merge Join",                                                                     +
                       "Parent Relationship": "Outer",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Join Type": "Inner",                                                                          +
                       "Startup Cost": 38730.80,                                                                      +
                       "Total Cost": 39125.23,                                                                        +
                       "Plan Rows": 20,                                                                               +
                       "Plan Width": 35,                                                                              +
                       "Actual Startup Time": 18514.970,                                                              +
                       "Actual Total Time": 19294.661,                                                                +
                       "Actual Rows": 3435,                                                                           +
                       "Actual Loops": 1,                                                                             +
                       "Inner Unique": false,                                                                         +
                       "Merge Cond": "(t.id = mi_idx.movie_id)",                                                      +
                       "Shared Hit Blocks": 9,                                                                        +
                       "Shared Read Blocks": 352710,                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                    +
                       "Shared Written Blocks": 0,                                                                    +
                       "Local Hit Blocks": 0,                                                                         +
                       "Local Read Blocks": 0,                                                                        +
                       "Local Dirtied Blocks": 0,                                                                     +
                       "Local Written Blocks": 0,                                                                     +
                       "Temp Read Blocks": 0,                                                                         +
                       "Temp Written Blocks": 0,                                                                      +
                       "Plans": [                                                                                     +
                         {                                                                                            +
                           "Node Type": "Merge Join",                                                                 +
                           "Parent Relationship": "Outer",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Join Type": "Inner",                                                                      +
                           "Startup Cost": 33758.57,                                                                  +
                           "Total Cost": 34151.37,                                                                    +
                           "Plan Rows": 2543,                                                                         +
                           "Plan Width": 25,                                                                          +
                           "Actual Startup Time": 17539.824,                                                          +
                           "Actual Total Time": 18244.330,                                                            +
                           "Actual Rows": 6719,                                                                       +
                           "Actual Loops": 1,                                                                         +
                           "Inner Unique": true,                                                                      +
                           "Merge Cond": "(ci.movie_id = t.id)",                                                      +
                           "Shared Hit Blocks": 6,                                                                    +
                           "Shared Read Blocks": 344259,                                                              +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0,                                                                  +
                           "Plans": [                                                                                 +
                             {                                                                                        +
                               "Node Type": "Sort",                                                                   +
                               "Parent Relationship": "Outer",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Startup Cost": 24104.21,                                                              +
                               "Total Cost": 24104.41,                                                                +
                               "Plan Rows": 2543,                                                                     +
                               "Plan Width": 4,                                                                       +
                               "Actual Startup Time": 15212.687,                                                      +
                               "Actual Total Time": 15213.541,                                                        +
                               "Actual Rows": 6719,                                                                   +
                               "Actual Loops": 1,                                                                     +
                               "Sort Key": ["ci.movie_id"],                                                           +
                               "Sort Method": "quicksort",                                                            +
                               "Sort Space Used": 507,                                                                +
                               "Sort Space Type": "Memory",                                                           +
                               "Shared Hit Blocks": 5,                                                                +
                               "Shared Read Blocks": 308262,                                                          +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Merge Join",                                                         +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Join Type": "Inner",                                                              +
                                   "Startup Cost": 23730.69,                                                          +
                                   "Total Cost": 24099.75,                                                            +
                                   "Plan Rows": 2543,                                                                 +
                                   "Plan Width": 4,                                                                   +
                                   "Actual Startup Time": 15053.352,                                                  +
                                   "Actual Total Time": 15210.704,                                                    +
                                   "Actual Rows": 6719,                                                               +
                                   "Actual Loops": 1,                                                                 +
                                   "Inner Unique": true,                                                              +
                                   "Merge Cond": "(ci.person_id = n.id)",                                             +
                                   "Shared Hit Blocks": 5,                                                            +
                                   "Shared Read Blocks": 308262,                                                      +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0,                                                          +
                                   "Plans": [                                                                         +
                                     {                                                                                +
                                       "Node Type": "Sort",                                                           +
                                       "Parent Relationship": "Outer",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Startup Cost": 21042.58,                                                      +
                                       "Total Cost": 21226.69,                                                        +
                                       "Plan Rows": 2371250,                                                          +
                                       "Plan Width": 8,                                                               +
                                       "Actual Startup Time": 12350.876,                                              +
                                       "Actual Total Time": 12406.217,                                                +
                                       "Actual Rows": 947311,                                                         +
                                       "Actual Loops": 1,                                                             +
                                       "Sort Key": ["ci.person_id"],                                                  +
                                       "Sort Method": "quicksort",                                                    +
                                       "Sort Space Used": 209833,                                                     +
                                       "Sort Space Type": "Memory",                                                   +
                                       "Shared Hit Blocks": 4,                                                        +
                                       "Shared Read Blocks": 252650,                                                  +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0,                                                      +
                                       "Plans": [                                                                     +
                                         {                                                                            +
                                           "Node Type": "Seq Scan",                                                   +
                                           "Parent Relationship": "Outer",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Relation Name": "cast_info",                                              +
                                           "Alias": "ci",                                                             +
                                           "Startup Cost": 0.00,                                                      +
                                           "Total Cost": 13245.00,                                                    +
                                           "Plan Rows": 2371250,                                                      +
                                           "Plan Width": 8,                                                           +
                                           "Actual Startup Time": 864.200,                                            +
                                           "Actual Total Time": 11586.568,                                            +
                                           "Actual Rows": 2379271,                                                    +
                                           "Actual Loops": 1,                                                         +
                                           "Filter": "(note = ANY ('{(producer),\"(executive producer)\"}'::text[]))",+
                                           "Rows Removed by Filter": 33865073,                                        +
                                           "Shared Hit Blocks": 4,                                                    +
                                           "Shared Read Blocks": 252650,                                              +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0                                                   +
                                         }                                                                            +
                                       ]                                                                              +
                                     },                                                                               +
                                     {                                                                                +
                                       "Node Type": "Sort",                                                           +
                                       "Parent Relationship": "Inner",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Startup Cost": 2688.10,                                                       +
                                       "Total Cost": 2688.45,                                                         +
                                       "Plan Rows": 4470,                                                             +
                                       "Plan Width": 4,                                                               +
                                       "Actual Startup Time": 2702.287,                                               +
                                       "Actual Total Time": 2702.877,                                                 +
                                       "Actual Rows": 9062,                                                           +
                                       "Actual Loops": 1,                                                             +
                                       "Sort Key": ["n.id"],                                                          +
                                       "Sort Method": "quicksort",                                                    +
                                       "Sort Space Used": 809,                                                        +
                                       "Sort Space Type": "Memory",                                                   +
                                       "Shared Hit Blocks": 1,                                                        +
                                       "Shared Read Blocks": 55612,                                                   +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0,                                                      +
                                       "Plans": [                                                                     +
                                         {                                                                            +
                                           "Node Type": "Seq Scan",                                                   +
                                           "Parent Relationship": "Outer",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Relation Name": "name",                                                   +
                                           "Alias": "n",                                                              +
                                           "Startup Cost": 0.00,                                                      +
                                           "Total Cost": 2679.69,                                                     +
                                           "Plan Rows": 4470,                                                         +
                                           "Plan Width": 4,                                                           +
                                           "Actual Startup Time": 6.001,                                              +
                                           "Actual Total Time": 2697.035,                                             +
                                           "Actual Rows": 9062,                                                       +
                                           "Actual Loops": 1,                                                         +
                                           "Filter": "((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))",    +
                                           "Rows Removed by Filter": 4158429,                                         +
                                           "Shared Hit Blocks": 1,                                                    +
                                           "Shared Read Blocks": 55612,                                               +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0                                                   +
                                         }                                                                            +
                                       ]                                                                              +
                                     }                                                                                +
                                   ]                                                                                  +
                                 }                                                                                    +
                               ]                                                                                      +
                             },                                                                                       +
                             {                                                                                        +
                               "Node Type": "Sort",                                                                   +
                               "Parent Relationship": "Inner",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Startup Cost": 9654.35,                                                               +
                               "Total Cost": 9850.65,                                                                 +
                               "Plan Rows": 2528312,                                                                  +
                               "Plan Width": 21,                                                                      +
                               "Actual Startup Time": 2327.110,                                                       +
                               "Actual Total Time": 2669.232,                                                         +
                               "Actual Rows": 2524063,                                                                +
                               "Actual Loops": 1,                                                                     +
                               "Sort Key": ["t.id"],                                                                  +
                               "Sort Method": "quicksort",                                                            +
                               "Sort Space Used": 275055,                                                             +
                               "Sort Space Type": "Memory",                                                           +
                               "Shared Hit Blocks": 1,                                                                +
                               "Shared Read Blocks": 35997,                                                           +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Seq Scan",                                                           +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Relation Name": "title",                                                          +
                                   "Alias": "t",                                                                      +
                                   "Startup Cost": 0.00,                                                              +
                                   "Total Cost": 1303.96,                                                             +
                                   "Plan Rows": 2528312,                                                              +
                                   "Plan Width": 21,                                                                  +
                                   "Actual Startup Time": 7.364,                                                      +
                                   "Actual Total Time": 1031.464,                                                     +
                                   "Actual Rows": 2528312,                                                            +
                                   "Actual Loops": 1,                                                                 +
                                   "Shared Hit Blocks": 1,                                                            +
                                   "Shared Read Blocks": 35997,                                                       +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0                                                           +
                                 }                                                                                    +
                               ]                                                                                      +
                             }                                                                                        +
                           ]                                                                                          +
                         },                                                                                           +
                         {                                                                                            +
                           "Node Type": "Sort",                                                                       +
                           "Parent Relationship": "Inner",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Startup Cost": 4972.23,                                                                   +
                           "Total Cost": 4973.18,                                                                     +
                           "Plan Rows": 12213,                                                                        +
                           "Plan Width": 10,                                                                          +
                           "Actual Startup Time": 975.138,                                                            +
                           "Actual Total Time": 1000.026,                                                             +
                           "Actual Rows": 459436,                                                                     +
                           "Actual Loops": 1,                                                                         +
                           "Sort Key": ["mi_idx.movie_id"],                                                           +
                           "Sort Method": "quicksort",                                                                +
                           "Sort Space Used": 33847,                                                                  +
                           "Sort Space Type": "Memory",                                                               +
                           "Shared Hit Blocks": 3,                                                                    +
                           "Shared Read Blocks": 8451,                                                                +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0,                                                                  +
                           "Plans": [                                                                                 +
                             {                                                                                        +
                               "Node Type": "Merge Join",                                                             +
                               "Parent Relationship": "Outer",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Join Type": "Inner",                                                                  +
                               "Startup Cost": 4731.35,                                                               +
                               "Total Cost": 4946.49,                                                                 +
                               "Plan Rows": 12213,                                                                    +
                               "Plan Width": 10,                                                                      +
                               "Actual Startup Time": 715.319,                                                        +
                               "Actual Total Time": 820.410,                                                          +
                               "Actual Rows": 459925,                                                                 +
                               "Actual Loops": 1,                                                                     +
                               "Inner Unique": false,                                                                 +
                               "Merge Cond": "(it2.id = mi_idx.info_type_id)",                                        +
                               "Shared Hit Blocks": 3,                                                                +
                               "Shared Read Blocks": 8451,                                                            +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Sort",                                                               +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Startup Cost": 0.05,                                                              +
                                   "Total Cost": 0.05,                                                                +
                                   "Plan Rows": 1,                                                                    +
                                   "Plan Width": 4,                                                                   +
                                   "Actual Startup Time": 0.031,                                                      +
                                   "Actual Total Time": 0.032,                                                        +
                                   "Actual Rows": 1,                                                                  +
                                   "Actual Loops": 1,                                                                 +
                                   "Sort Key": ["it2.id"],                                                            +
                                   "Sort Method": "quicksort",                                                        +
                                   "Sort Space Used": 25,                                                             +
                                   "Sort Space Type": "Memory",                                                       +
                                   "Shared Hit Blocks": 1,                                                            +
                                   "Shared Read Blocks": 0,                                                           +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0,                                                          +
                                   "Plans": [                                                                         +
                                     {                                                                                +
                                       "Node Type": "Seq Scan",                                                       +
                                       "Parent Relationship": "Outer",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Relation Name": "info_type",                                                  +
                                       "Alias": "it2",                                                                +
                                       "Startup Cost": 0.00,                                                          +
                                       "Total Cost": 0.05,                                                            +
                                       "Plan Rows": 1,                                                                +
                                       "Plan Width": 4,                                                               +
                                       "Actual Startup Time": 0.025,                                                  +
                                       "Actual Total Time": 0.028,                                                    +
                                       "Actual Rows": 1,                                                              +
                                       "Actual Loops": 1,                                                             +
                                       "Filter": "((info)::text = 'votes'::text)",                                    +
                                       "Rows Removed by Filter": 112,                                                 +
                                       "Shared Hit Blocks": 1,                                                        +
                                       "Shared Read Blocks": 0,                                                       +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0                                                       +
                                     }                                                                                +
                                   ]                                                                                  +
                                 },                                                                                   +
                                 {                                                                                    +
                                   "Node Type": "Sort",                                                               +
                                   "Parent Relationship": "Inner",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Startup Cost": 4731.30,                                                           +
                                   "Total Cost": 4838.45,                                                             +
                                   "Plan Rows": 1380035,                                                              +
                                   "Plan Width": 14,                                                                  +
                                   "Actual Startup Time": 641.523,                                                    +
                                   "Actual Total Time": 688.306,                                                      +
                                   "Actual Rows": 919851,                                                             +
                                   "Actual Loops": 1,                                                                 +
                                   "Sort Key": ["mi_idx.info_type_id"],                                               +
                                   "Sort Method": "quicksort",                                                        +
                                   "Sort Space Used": 128214,                                                         +
                                   "Sort Space Type": "Memory",                                                       +
                                   "Shared Hit Blocks": 2,                                                            +
                                   "Shared Read Blocks": 8451,                                                        +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0,                                                          +
                                   "Plans": [                                                                         +
                                     {                                                                                +
                                       "Node Type": "Seq Scan",                                                       +
                                       "Parent Relationship": "Outer",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Relation Name": "movie_info_idx",                                             +
                                       "Alias": "mi_idx",                                                             +
                                       "Startup Cost": 0.00,                                                          +
                                       "Total Cost": 360.56,                                                          +
                                       "Plan Rows": 1380035,                                                          +
                                       "Plan Width": 14,                                                              +
                                       "Actual Startup Time": 0.005,                                                  +
                                       "Actual Total Time": 312.490,                                                  +
                                       "Actual Rows": 1380035,                                                        +
                                       "Actual Loops": 1,                                                             +
                                       "Shared Hit Blocks": 2,                                                        +
                                       "Shared Read Blocks": 8451,                                                    +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0                                                       +
                                     }                                                                                +
                                   ]                                                                                  +
                                 }                                                                                    +
                               ]                                                                                      +
                             }                                                                                        +
                           ]                                                                                          +
                         }                                                                                            +
                       ]                                                                                              +
                     },                                                                                               +
                     {                                                                                                +
                       "Node Type": "Sort",                                                                           +
                       "Parent Relationship": "Inner",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Startup Cost": 60983.46,                                                                      +
                       "Total Cost": 62135.30,                                                                        +
                       "Plan Rows": 14835720,                                                                         +
                       "Plan Width": 50,                                                                              +
                       "Actual Startup Time": 11583.364,                                                              +
                       "Actual Total Time": 12422.416,                                                                +
                       "Actual Rows": 14821215,                                                                       +
                       "Actual Loops": 1,                                                                             +
                       "Sort Key": ["mi.movie_id"],                                                                   +
                       "Sort Method": "quicksort",                                                                    +
                       "Sort Space Used": 1986756,                                                                    +
                       "Sort Space Type": "Memory",                                                                   +
                       "Shared Hit Blocks": 2,                                                                        +
                       "Shared Read Blocks": 161890,                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                    +
                       "Shared Written Blocks": 0,                                                                    +
                       "Local Hit Blocks": 0,                                                                         +
                       "Local Read Blocks": 0,                                                                        +
                       "Local Dirtied Blocks": 0,                                                                     +
                       "Local Written Blocks": 0,                                                                     +
                       "Temp Read Blocks": 0,                                                                         +
                       "Temp Written Blocks": 0,                                                                      +
                       "Plans": [                                                                                     +
                         {                                                                                            +
                           "Node Type": "Seq Scan",                                                                   +
                           "Parent Relationship": "Outer",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Relation Name": "movie_info",                                                             +
                           "Alias": "mi",                                                                             +
                           "Startup Cost": 0.00,                                                                      +
                           "Total Cost": 6103.84,                                                                     +
                           "Plan Rows": 14835720,                                                                     +
                           "Plan Width": 50,                                                                          +
                           "Actual Startup Time": 24.916,                                                             +
                           "Actual Total Time": 4973.394,                                                             +
                           "Actual Rows": 14835720,                                                                   +
                           "Actual Loops": 1,                                                                         +
                           "Shared Hit Blocks": 2,                                                                    +
                           "Shared Read Blocks": 161890,                                                              +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0                                                                   +
                         }                                                                                            +
                       ]                                                                                              +
                     }                                                                                                +
                   ]                                                                                                  +
                 }                                                                                                    +
               ]                                                                                                      +
             },                                                                                                       +
             {                                                                                                        +
               "Node Type": "Sort",                                                                                   +
               "Parent Relationship": "Inner",                                                                        +
               "Parallel Aware": false,                                                                               +
               "Startup Cost": 0.05,                                                                                  +
               "Total Cost": 0.05,                                                                                    +
               "Plan Rows": 1,                                                                                        +
               "Plan Width": 4,                                                                                       +
               "Actual Startup Time": 0.037,                                                                          +
               "Actual Total Time": 0.038,                                                                            +
               "Actual Rows": 1,                                                                                      +
               "Actual Loops": 1,                                                                                     +
               "Sort Key": ["it1.id"],                                                                                +
               "Sort Method": "quicksort",                                                                            +
               "Sort Space Used": 25,                                                                                 +
               "Sort Space Type": "Memory",                                                                           +
               "Shared Hit Blocks": 1,                                                                                +
               "Shared Read Blocks": 0,                                                                               +
               "Shared Dirtied Blocks": 0,                                                                            +
               "Shared Written Blocks": 0,                                                                            +
               "Local Hit Blocks": 0,                                                                                 +
               "Local Read Blocks": 0,                                                                                +
               "Local Dirtied Blocks": 0,                                                                             +
               "Local Written Blocks": 0,                                                                             +
               "Temp Read Blocks": 0,                                                                                 +
               "Temp Written Blocks": 0,                                                                              +
               "Plans": [                                                                                             +
                 {                                                                                                    +
                   "Node Type": "Seq Scan",                                                                           +
                   "Parent Relationship": "Outer",                                                                    +
                   "Parallel Aware": false,                                                                           +
                   "Relation Name": "info_type",                                                                      +
                   "Alias": "it1",                                                                                    +
                   "Startup Cost": 0.00,                                                                              +
                   "Total Cost": 0.05,                                                                                +
                   "Plan Rows": 1,                                                                                    +
                   "Plan Width": 4,                                                                                   +
                   "Actual Startup Time": 0.027,                                                                      +
                   "Actual Total Time": 0.029,                                                                        +
                   "Actual Rows": 1,                                                                                  +
                   "Actual Loops": 1,                                                                                 +
                   "Filter": "((info)::text = 'budget'::text)",                                                       +
                   "Rows Removed by Filter": 112,                                                                     +
                   "Shared Hit Blocks": 1,                                                                            +
                   "Shared Read Blocks": 0,                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                        +
                   "Shared Written Blocks": 0,                                                                        +
                   "Local Hit Blocks": 0,                                                                             +
                   "Local Read Blocks": 0,                                                                            +
                   "Local Dirtied Blocks": 0,                                                                         +
                   "Local Written Blocks": 0,                                                                         +
                   "Temp Read Blocks": 0,                                                                             +
                   "Temp Written Blocks": 0                                                                           +
                 }                                                                                                    +
               ]                                                                                                      +
             }                                                                                                        +
           ]                                                                                                          +
         }                                                                                                            +
       ]                                                                                                              +
     },                                                                                                               +
     "Planning Time": 5921.095,                                                                                       +
     "Triggers": [                                                                                                    +
     ],                                                                                                               +
     "Execution Time": 33557.015                                                                                      +
   }                                                                                                                  +
 ]
(1 row)
