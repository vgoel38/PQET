 [                                                                                             
   {                                                                                           
     "Plan": {                                                                                 
       "Node Type": "Aggregate",                                                               
       "Strategy": "Plain",                                                                    
       "Partial Mode": "Simple",                                                               
       "Parallel Aware": false,                                                                
       "Startup Cost": 655.18,                                                                 
       "Total Cost": 655.18,                                                                   
       "Plan Rows": 1,                                                                         
       "Plan Width": 64,                                                                       
       "Actual Startup Time": 1593080.787,                                                     
       "Actual Total Time": 1593080.787,                                                       
       "Actual Rows": 1,                                                                       
       "Actual Loops": 1,                                                                      
       "Shared Hit Blocks": 9313355,                                                           
       "Shared Read Blocks": 332251,                                                           
       "Shared Dirtied Blocks": 0,                                                             
       "Shared Written Blocks": 0,                                                             
       "Local Hit Blocks": 0,                                                                  
       "Local Read Blocks": 0,                                                                 
       "Local Dirtied Blocks": 0,                                                              
       "Local Written Blocks": 0,                                                              
       "Temp Read Blocks": 0,                                                                  
       "Temp Written Blocks": 0,                                                               
       "Plans": [                                                                              
         {                                                                                     
           "Node Type": "Nested Loop",                                                         
           "Parent Relationship": "Outer",                                                     
           "Parallel Aware": false,                                                            
           "Join Type": "Inner",                                                               
           "Startup Cost": 0.10,                                                               
           "Total Cost": 655.17,                                                               
           "Plan Rows": 65,                                                                    
           "Plan Width": 15,                                                                   
           "Actual Startup Time": 3285.018,                                                    
           "Actual Total Time": 1592776.108,                                                   
           "Actual Rows": 258289,                                                              
           "Actual Loops": 1,                                                                  
           "Inner Unique": true,                                                               
           "Shared Hit Blocks": 9313355,                                                       
           "Shared Read Blocks": 332251,                                                       
           "Shared Dirtied Blocks": 0,                                                         
           "Shared Written Blocks": 0,                                                         
           "Local Hit Blocks": 0,                                                              
           "Local Read Blocks": 0,                                                             
           "Local Dirtied Blocks": 0,                                                          
           "Local Written Blocks": 0,                                                          
           "Temp Read Blocks": 0,                                                              
           "Temp Written Blocks": 0,                                                           
           "Plans": [                                                                          
             {                                                                                 
               "Node Type": "Nested Loop",                                                     
               "Parent Relationship": "Outer",                                                 
               "Parallel Aware": false,                                                        
               "Join Type": "Inner",                                                           
               "Startup Cost": 0.08,                                                           
               "Total Cost": 654.05,                                                           
               "Plan Rows": 65,                                                                
               "Plan Width": 27,                                                               
               "Actual Startup Time": 3233.271,                                                
               "Actual Total Time": 1509586.301,                                               
               "Actual Rows": 258289,                                                          
               "Actual Loops": 1,                                                              
               "Inner Unique": true,                                                           
               "Shared Hit Blocks": 8294300,                                                   
               "Shared Read Blocks": 316999,                                                   
               "Shared Dirtied Blocks": 0,                                                     
               "Shared Written Blocks": 0,                                                     
               "Local Hit Blocks": 0,                                                          
               "Local Read Blocks": 0,                                                         
               "Local Dirtied Blocks": 0,                                                      
               "Local Written Blocks": 0,                                                      
               "Temp Read Blocks": 0,                                                          
               "Temp Written Blocks": 0,                                                       
               "Plans": [                                                                      
                 {                                                                             
                   "Node Type": "Nested Loop",                                                 
                   "Parent Relationship": "Outer",                                             
                   "Parallel Aware": false,                                                    
                   "Join Type": "Inner",                                                       
                   "Startup Cost": 0.07,                                                       
                   "Total Cost": 650.85,                                                       
                   "Plan Rows": 180,                                                           
                   "Plan Width": 31,                                                           
                   "Actual Startup Time": 2382.145,                                            
                   "Actual Total Time": 1474280.051,                                           
                   "Actual Rows": 702849,                                                      
                   "Actual Loops": 1,                                                          
                   "Inner Unique": false,                                                      
                   "Shared Hit Blocks": 5483296,                                               
                   "Shared Read Blocks": 313216,                                               
                   "Shared Dirtied Blocks": 0,                                                 
                   "Shared Written Blocks": 0,                                                 
                   "Local Hit Blocks": 0,                                                      
                   "Local Read Blocks": 0,                                                     
                   "Local Dirtied Blocks": 0,                                                  
                   "Local Written Blocks": 0,                                                  
                   "Temp Read Blocks": 0,                                                      
                   "Temp Written Blocks": 0,                                                   
                   "Plans": [                                                                  
                     {                                                                         
                       "Node Type": "Nested Loop",                                             
                       "Parent Relationship": "Outer",                                         
                       "Parallel Aware": false,                                                
                       "Join Type": "Inner",                                                   
                       "Startup Cost": 0.06,                                                   
                       "Total Cost": 649.34,                                                   
                       "Plan Rows": 94,                                                        
                       "Plan Width": 23,                                                       
                       "Actual Startup Time": 287.413,                                         
                       "Actual Total Time": 1460919.038,                                       
                       "Actual Rows": 93315,                                                   
                       "Actual Loops": 1,                                                      
                       "Inner Unique": true,                                                   
                       "Shared Hit Blocks": 5052015,                                           
                       "Shared Read Blocks": 296581,                                           
                       "Shared Dirtied Blocks": 0,                                             
                       "Shared Written Blocks": 0,                                             
                       "Local Hit Blocks": 0,                                                  
                       "Local Read Blocks": 0,                                                 
                       "Local Dirtied Blocks": 0,                                              
                       "Local Written Blocks": 0,                                              
                       "Temp Read Blocks": 0,                                                  
                       "Temp Written Blocks": 0,                                               
                       "Plans": [                                                              
                         {                                                                     
                           "Node Type": "Nested Loop",                                         
                           "Parent Relationship": "Outer",                                     
                           "Parallel Aware": false,                                            
                           "Join Type": "Inner",                                               
                           "Startup Cost": 0.04,                                               
                           "Total Cost": 627.04,                                               
                           "Plan Rows": 1138,                                                  
                           "Plan Width": 12,                                                   
                           "Actual Startup Time": 212.226,                                     
                           "Actual Total Time": 1120503.706,                                   
                           "Actual Rows": 1038393,                                             
                           "Actual Loops": 1,                                                  
                           "Inner Unique": false,                                              
                           "Shared Hit Blocks": 960430,                                        
                           "Shared Read Blocks": 227677,                                       
                           "Shared Dirtied Blocks": 0,                                         
                           "Shared Written Blocks": 0,                                         
                           "Local Hit Blocks": 0,                                              
                           "Local Read Blocks": 0,                                             
                           "Local Dirtied Blocks": 0,                                          
                           "Local Written Blocks": 0,                                          
                           "Temp Read Blocks": 0,                                              
                           "Temp Written Blocks": 0,                                           
                           "Plans": [                                                          
                             {                                                                 
                               "Node Type": "Nested Loop",                                     
                               "Parent Relationship": "Outer",                                 
                               "Parallel Aware": false,                                        
                               "Join Type": "Inner",                                           
                               "Startup Cost": 0.03,                                           
                               "Total Cost": 618.15,                                           
                               "Plan Rows": 34,                                                
                               "Plan Width": 4,                                                
                               "Actual Startup Time": 181.944,                                 
                               "Actual Total Time": 6393.681,                                  
                               "Actual Rows": 41840,                                           
                               "Actual Loops": 1,                                              
                               "Inner Unique": false,                                          
                               "Shared Hit Blocks": 3,                                         
                               "Shared Read Blocks": 11659,                                    
                               "Shared Dirtied Blocks": 0,                                     
                               "Shared Written Blocks": 0,                                     
                               "Local Hit Blocks": 0,                                          
                               "Local Read Blocks": 0,                                         
                               "Local Dirtied Blocks": 0,                                      
                               "Local Written Blocks": 0,                                      
                               "Temp Read Blocks": 0,                                          
                               "Temp Written Blocks": 0,                                       
                               "Plans": [                                                      
                                 {                                                             
                                   "Node Type": "Index Scan",                                  
                                   "Parent Relationship": "Outer",                             
                                   "Parallel Aware": false,                                    
                                   "Scan Direction": "Forward",                                
                                   "Index Name": "keyword_idx_keyword",                        
                                   "Relation Name": "keyword",                                 
                                   "Alias": "k",                                               
                                   "Startup Cost": 0.01,                                       
                                   "Total Cost": 6.13,                                         
                                   "Plan Rows": 1,                                             
                                   "Plan Width": 4,                                            
                                   "Actual Startup Time": 139.255,                             
                                   "Actual Total Time": 139.257,                               
                                   "Actual Rows": 1,                                           
                                   "Actual Loops": 1,                                          
                                   "Index Cond": "(keyword = 'character-name-in-title'::text)",
                                   "Rows Removed by Index Recheck": 0,                         
                                   "Shared Hit Blocks": 0,                                     
                                   "Shared Read Blocks": 4,                                    
                                   "Shared Dirtied Blocks": 0,                                 
                                   "Shared Written Blocks": 0,                                 
                                   "Local Hit Blocks": 0,                                      
                                   "Local Read Blocks": 0,                                     
                                   "Local Dirtied Blocks": 0,                                  
                                   "Local Written Blocks": 0,                                  
                                   "Temp Read Blocks": 0,                                      
                                   "Temp Written Blocks": 0                                    
                                 },                                                            
                                 {                                                             
                                   "Node Type": "Index Scan",                                  
                                   "Parent Relationship": "Inner",                             
                                   "Parallel Aware": false,                                    
                                   "Scan Direction": "Forward",                                
                                   "Index Name": "keyword_id_movie_keyword",                   
                                   "Relation Name": "movie_keyword",                           
                                   "Alias": "mk",                                              
                                   "Startup Cost": 0.01,                                       
                                   "Total Cost": 122.40,                                       
                                   "Plan Rows": 39,                                            
                                   "Plan Width": 8,                                            
                                   "Actual Startup Time": 42.640,                              
                                   "Actual Total Time": 6207.294,                              
                                   "Actual Rows": 41840,                                       
                                   "Actual Loops": 1,                                          
                                   "Index Cond": "(keyword_id = k.id)",                        
                                   "Rows Removed by Index Recheck": 0,                         
                                   "Shared Hit Blocks": 3,                                     
                                   "Shared Read Blocks": 11655,                                
                                   "Shared Dirtied Blocks": 0,                                 
                                   "Shared Written Blocks": 0,                                 
                                   "Local Hit Blocks": 0,                                      
                                   "Local Read Blocks": 0,                                     
                                   "Local Dirtied Blocks": 0,                                  
                                   "Local Written Blocks": 0,                                  
                                   "Temp Read Blocks": 0,                                      
                                   "Temp Written Blocks": 0                                    
                                 }                                                             
                               ]                                                               
                             },                                                                
                             {                                                                 
                               "Node Type": "Index Scan",                                      
                               "Parent Relationship": "Inner",                                 
                               "Parallel Aware": false,                                        
                               "Scan Direction": "Forward",                                    
                               "Index Name": "movie_id_cast_info",                             
                               "Relation Name": "cast_info",                                   
                               "Alias": "ci",                                                  
                               "Startup Cost": 0.02,                                           
                               "Total Cost": 0.26,                                             
                               "Plan Rows": 23,                                                
                               "Plan Width": 8,                                                
                               "Actual Startup Time": 2.466,                                   
                               "Actual Total Time": 26.601,                                    
                               "Actual Rows": 25,                                              
                               "Actual Loops": 41840,                                          
                               "Index Cond": "(movie_id = mk.movie_id)",                       
                               "Rows Removed by Index Recheck": 0,                             
                               "Shared Hit Blocks": 960427,                                    
                               "Shared Read Blocks": 216018,                                   
                               "Shared Dirtied Blocks": 0,                                     
                               "Shared Written Blocks": 0,                                     
                               "Local Hit Blocks": 0,                                          
                               "Local Read Blocks": 0,                                         
                               "Local Dirtied Blocks": 0,                                      
                               "Local Written Blocks": 0,                                      
                               "Temp Read Blocks": 0,                                          
                               "Temp Written Blocks": 0                                        
                             }                                                                 
                           ]                                                                   
                         },                                                                    
                         {                                                                     
                           "Node Type": "Index Scan",                                          
                           "Parent Relationship": "Inner",                                     
                           "Parallel Aware": false,                                            
                           "Scan Direction": "Forward",                                        
                           "Index Name": "name_pkey",                                          
                           "Relation Name": "name",                                            
                           "Alias": "n",                                                       
                           "Startup Cost": 0.01,                                               
                           "Total Cost": 0.02,                                                 
                           "Plan Rows": 1,                                                     
                           "Plan Width": 19,                                                   
                           "Actual Startup Time": 0.326,                                       
                           "Actual Total Time": 0.326,                                         
                           "Actual Rows": 0,                                                   
                           "Actual Loops": 1038393,                                            
                           "Index Cond": "(id = ci.person_id)",                                
                           "Rows Removed by Index Recheck": 0,                                 
                           "Filter": "(name ~~ 'B%'::text)",                                   
                           "Rows Removed by Filter": 1,                                        
                           "Shared Hit Blocks": 4091585,                                       
                           "Shared Read Blocks": 68904,                                        
                           "Shared Dirtied Blocks": 0,                                         
                           "Shared Written Blocks": 0,                                         
                           "Local Hit Blocks": 0,                                              
                           "Local Read Blocks": 0,                                             
                           "Local Dirtied Blocks": 0,                                          
                           "Local Written Blocks": 0,                                          
                           "Temp Read Blocks": 0,                                              
                           "Temp Written Blocks": 0                                            
                         }                                                                     
                       ]                                                                       
                     },                                                                        
                     {                                                                         
                       "Node Type": "Index Scan",                                              
                       "Parent Relationship": "Inner",                                         
                       "Parallel Aware": false,                                                
                       "Scan Direction": "Forward",                                            
                       "Index Name": "movie_id_movie_companies",                               
                       "Relation Name": "movie_companies",                                     
                       "Alias": "mc",                                                          
                       "Startup Cost": 0.01,                                                   
                       "Total Cost": 0.02,                                                     
                       "Plan Rows": 2,                                                         
                       "Plan Width": 8,                                                        
                       "Actual Startup Time": 0.102,                                           
                       "Actual Total Time": 0.137,                                             
                       "Actual Rows": 8,                                                       
                       "Actual Loops": 93315,                                                  
                       "Index Cond": "(movie_id = ci.movie_id)",                               
                       "Rows Removed by Index Recheck": 0,                                     
                       "Shared Hit Blocks": 431281,                                            
                       "Shared Read Blocks": 16635,                                            
                       "Shared Dirtied Blocks": 0,                                             
                       "Shared Written Blocks": 0,                                             
                       "Local Hit Blocks": 0,                                                  
                       "Local Read Blocks": 0,                                                 
                       "Local Dirtied Blocks": 0,                                              
                       "Local Written Blocks": 0,                                              
                       "Temp Read Blocks": 0,                                                  
                       "Temp Written Blocks": 0                                                
                     }                                                                         
                   ]                                                                           
                 },                                                                            
                 {                                                                             
                   "Node Type": "Index Scan",                                                  
                   "Parent Relationship": "Inner",                                             
                   "Parallel Aware": false,                                                    
                   "Scan Direction": "Forward",                                                
                   "Index Name": "company_name_pkey",                                          
                   "Relation Name": "company_name",                                            
                   "Alias": "cn",                                                              
                   "Startup Cost": 0.01,                                                       
                   "Total Cost": 0.02,                                                         
                   "Plan Rows": 1,                                                             
                   "Plan Width": 4,                                                            
                   "Actual Startup Time": 0.049,                                               
                   "Actual Total Time": 0.049,                                                 
                   "Actual Rows": 0,                                                           
                   "Actual Loops": 702849,                                                     
                   "Index Cond": "(id = mc.company_id)",                                       
                   "Rows Removed by Index Recheck": 0,                                         
                   "Filter": "((country_code)::text = '[us]'::text)",                          
                   "Rows Removed by Filter": 1,                                                
                   "Shared Hit Blocks": 2811004,                                               
                   "Shared Read Blocks": 3783,                                                 
                   "Shared Dirtied Blocks": 0,                                                 
                   "Shared Written Blocks": 0,                                                 
                   "Local Hit Blocks": 0,                                                      
                   "Local Read Blocks": 0,                                                     
                   "Local Dirtied Blocks": 0,                                                  
                   "Local Written Blocks": 0,                                                  
                   "Temp Read Blocks": 0,                                                      
                   "Temp Written Blocks": 0                                                    
                 }                                                                             
               ]                                                                               
             },                                                                                
             {                                                                                 
               "Node Type": "Index Scan",                                                      
               "Parent Relationship": "Inner",                                                 
               "Parallel Aware": false,                                                        
               "Scan Direction": "Forward",                                                    
               "Index Name": "title_idx_id",                                                   
               "Relation Name": "title",                                                       
               "Alias": "t",                                                                   
               "Startup Cost": 0.01,                                                           
               "Total Cost": 0.02,                                                             
               "Plan Rows": 1,                                                                 
               "Plan Width": 4,                                                                
               "Actual Startup Time": 0.320,                                                   
               "Actual Total Time": 0.320,                                                     
               "Actual Rows": 1,                                                               
               "Actual Loops": 258289,                                                         
               "Index Cond": "(id = ci.movie_id)",                                             
               "Rows Removed by Index Recheck": 0,                                             
               "Shared Hit Blocks": 1019055,                                                   
               "Shared Read Blocks": 15252,                                                    
               "Shared Dirtied Blocks": 0,                                                     
               "Shared Written Blocks": 0,                                                     
               "Local Hit Blocks": 0,                                                          
               "Local Read Blocks": 0,                                                         
               "Local Dirtied Blocks": 0,                                                      
               "Local Written Blocks": 0,                                                      
               "Temp Read Blocks": 0,                                                          
               "Temp Written Blocks": 0                                                        
             }                                                                                 
           ]                                                                                   
         }                                                                                     
       ]                                                                                       
     },                                                                                        
     "Planning Time": 5818.553,                                                                
     "Triggers": [                                                                             
     ],                                                                                        
     "Execution Time": 1593115.586                                                             
   }                                                                                           
 ]
